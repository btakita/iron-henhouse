import {assign,clone,keys} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {fn$route as route$lib__fn$route,assign__route$$} from "ctx-core/route/lib";
import {assign__voting_issue$$map} from "voting-issue/lib";
import {agent$$trigger$change} from "ctx-core/agent/lib";
import riot from "riot";
import co from "co";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "election-day/route";
export function assign__election_day$route$$() {
  log(`${logPrefix}|assign__election_day$route$$`);
  let ctx = assign(...arguments);
  assign__voting_issue$$map(ctx);
  return assign__route$$(
    ctx,
    fn$route(ctx, {path: "", route$name: "election_day_root"}),
    fn$route(ctx, {path: "vote-where", route$name: "vote_where"}),
    fn$route(ctx, {path: "voting-issue", route$name: "voting_issue"}),
    ...fn$voting_issue$route$$(ctx),
    fn$route(ctx, {path: "polling_stations", route$name: "polling_station$$"}),
    fn$route(ctx, {path: "polling_stations/*", route$name: "polling_station", fn: route$polling_station$fn(ctx)})
  );
}
function route$polling_station$fn(ctx) {
  log(`${logPrefix}|route$polling_station$fn`);
  return (route$ctx, polling_station$id) => {
    log(`${logPrefix}|route$polling_station$fn|route`, polling_station$id);
    route$ctx.polling_station$id = polling_station$id || null;
  }
}
function fn$voting_issue$route$$(ctx, ...ctx$rest$$) {
  log(`${logPrefix}|fn$voting_issue$route$$`);
  let ctx$rest = clone(...ctx$rest$$)
    , route$$;
  route$$ = keys(ctx.voting_issue$$map).reduce(
    (memo, voting_issue$route$name$) => {
      const voting_issue$route$path$ = voting_issue$route$path(voting_issue$route$name$);
      memo.push(
        fn$route(ctx, {
          path: `voting-issue/${voting_issue$route$path$}`,
          route$name: voting_issue$route$name$,
          fn: route$fn}, ctx$rest),
        fn$route(ctx, {
          path: `voting-issue/${voting_issue$route$path$}/your-rights`,
          route$name: `${voting_issue$route$name$}_your_rights`,
          fn: your_rights__route$fn}, ctx$rest),
        fn$route(ctx, {
          path: `voting-issue/${voting_issue$route$path$}/video`,
          route$name: `${voting_issue$route$name$}_video`,
          fn: video__route$fn}, ctx$rest),
        fn$route(ctx, {
          path: `voting-issue/${voting_issue$route$path$}/help`,
          route$name: `${voting_issue$route$name$}_help`,
          fn: help__route$fn}, ctx$rest)
      );
      return memo;
      function your_rights__route$fn(route$ctx) {
        route$ctx.route$name__voting_issue$your_rights = true;
        route$fn(...arguments);
      }
      function video__route$fn(route$ctx) {
        route$ctx.route$name__voting_issue$video = true;
        route$fn(...arguments);
      }
      function help__route$fn(route$ctx) {
        route$ctx.route$name__voting_issue$help = true;
        route$fn(...arguments);
      }
      function route$fn(route$ctx) {
        assign(route$ctx, {
          voting_issue$title: ctx.voting_issue$$map[voting_issue$route$name$],
          voting_issue$tile: true,
          voting_issue$route$path: voting_issue$route$path$
        });
        route$ctx[`route$name__${voting_issue$route$name$}`] = true;
      }
    }, []);
  return route$$;
}
function voting_issue$route$path(voting_issue) {
  return voting_issue.replace(/_/g, "-");
}
function fn$route(ctx, ...ctx$rest$$) {
  route$lib__fn$route(ctx, {fn$ctx: fn$ctx}, ...ctx$rest$$);
}
function fn$ctx() {
  log(`${logPrefix}|fn$ctx`);
  return assign({
    route$name__election_day_root: null,
    route$name__vote_where: null,
    route$name__voting_issue: null,
    voting_issue$title: null,
    voting_issue$tile: null,
    voting_issue$route$path: null,
    route$name__voting_issue$your_rights: null,
    route$name__voting_issue$video: null,
    route$name__voting_issue$help: null,
    route$name__polling_station$$: null,
    route$name__polling_station: null,
    polling_station$id: null
  },
    keys(ctx.voting_issue$$map).reduce(
    (memo, voting_issue$route$name) => {
      memo[`route$name__voting_issue$$map{voting_issue$route$name}`] =
        memo[`route$name__voting_issue$$map{voting_issue$route$name}_your_rights`] =
        memo[`route$name__voting_issue$$map{voting_issue$route$name}_video`] =
        memo[`route$name__voting_issue$$map{voting_issue$route$name}_help`] =
        null;
      return memo;
    }, {}), ...arguments);
}