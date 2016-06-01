import "./env";
import {assign} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {election_day$html} from "election-day/html";
import koa$route from "koa-route";
import "site/cmd";
import "vote-where/cmd";
import {log,info,error,debug} from "ctx-core/logger/lib"
const logPrefix = "election-day/koa";
//GET /election-day
export function app$use__election_day() {
  log(`${logPrefix}|app$use__election_day`);
  const ctx = assign(...arguments)
      , app = ctx.app;
  app.use(koa$route.get("/election-day", http$get$election_day));
}
function *http$get$election_day() {
  info(`${logPrefix}|http$get$election_day`);
  let ctx = {};
  try {
    this.body = election_day$html(ctx, {headers$authorization: this.headers.authorization});
  } catch (error$ctx) {
    error$throw(ctx, error$ctx);
  }
}