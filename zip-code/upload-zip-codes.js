#!/usr/bin/env babel-node
import {assign,clone} from "ctx-core/object/lib";
import {array$last} from "ctx-core/array/lib";
import "isomorphic-fetch";
import shelljs from "shelljs";
import {log,warn,error,debug} from "ctx-core/logger/lib";
import AWS from "aws-sdk";
import co from "co";
const logPrefix = "zip-code/upload-zip-codes";
co(run).catch(e => console.error(e));
function *run() {
  log(`${logPrefix}|run`);
  let ctx = {};
  const response = yield fetch("https://raw.githubusercontent.com/sjlu/cities/master/locations.json")
      , locations = yield response.json();
  let s3 = new AWS.S3();
  const locations$ctx = locations
          .map(location => putObject(location))
          .reduce(
            (memo, location) => {
              let groups = memo.groups || []
                , pos = memo.pos || 0
                , group;
              memo.groups = groups;
              if (!(pos % 20)) {
                group = [];
                groups.push(group);
              } else {
                group = array$last(groups);
              }
              group.push(location);
              memo.pos = pos + 1;
              return memo;
            }, {}
          );
  for(var i=0; i < locations$ctx.groups.length; i++) {
    yield locations$ctx.groups[i];
  }
  function *putObject(location) {
    return new Promise(
      (resolve, reject) => {
        s3$putObject({
          resolve: resolve,
          reject: reject,
          location: location
        });
      }
    );
    function s3$putObject() {
      const fn$ctx = clone(...arguments)
          , location = fn$ctx.location
          , location$json = JSON.stringify(location)
          , zip_code = location.zipcode
          , s3$key = `zip-codes/${zip_code}`
          , resolve = fn$ctx.resolve
          , reject = fn$ctx.reject;
      s3.putObject({
        Bucket: "suppressthis-zip",
        Key: s3$key,
        Body: location$json,
        ContentType: "application/json",
        CacheControl: "public, max-age=86400"
      }, err => {
        if (err) {
          warn(`Error: ${err}`);
          const retries = fn$ctx.retries || 0;
          if (retries > 2) {
            error(`S3 Upload Failure:${s3$key}\n${location$json}`);
            reject(err);
          } else {
            s3$putObject(fn$ctx, {retries: retries+1});
          }
        } else {
          log(`S3 Upload Success: ${s3$key}`);
          resolve(location);
        }
      });
    }
  }
}