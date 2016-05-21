import {assign,clone} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {fn$route as route$lib__fn$route,assign__route$$} from "ctx-core/route/lib";
import {agent$$trigger$change} from "ctx-core/agent/lib";
import riot from "riot";
import co from "co";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "quovo_demo/route";
export function assign__election_day$route$$() {
  log(`${logPrefix}|assign__election_day$route$$`);
  let ctx = assign(...arguments);
  return assign__route$$(
    ctx,
    fn$route(ctx, {path: "", route$name: "election_day_root", fn: fn$route$election_day_root(ctx)}),
    fn$route(ctx, {path: "vote-where", route$name: "vote_where", fn: fn$route$vote_where(ctx)}),
    fn$route(ctx, {path: "voting-issue", route$name: "voting_issue", fn: fn$route$voting_issue(ctx)}),
    fn$route(ctx, {path: "polling_stations", route$name: "polling_station$$", fn: fn$route$polling_station$$(ctx)}),
    fn$route(ctx, {path: "polling_stations/*", route$name: "polling_station", fn: fn$route$polling_station(ctx)})
  );
}
function fn$route$election_day_root(ctx) {
  log(`${logPrefix}|fn$route$election_day_root`);
  return route$ctx => {
    log(`${logPrefix}|fn$route$election_day_root|route`);
    route$ctx.route__election_day_root = true;
  }
}
function fn$route$vote_where() {
  log(`${logPrefix}|fn$route$vote_where`);
  return route$ctx => {
    log(`${logPrefix}|fn$route$vote_where|route`);
    route$ctx.route__vote_where = true;
  }
}
function fn$route$voting_issue() {
  log(`${logPrefix}|fn$route$voting_issue`);
  return route$ctx => {
    log(`${logPrefix}|fn$route$voting_issue|route`);
    route$ctx.route__voting_issue = true;
  }
}
function fn$route$polling_station$$(ctx) {
  log(`${logPrefix}|fn$route$polling_station$$`);
  return route$ctx => {
    log(`${logPrefix}|fn$route$polling_station$$|route`);
    route$ctx.route__polling_station$$ = true;
  }
}
function fn$route$polling_station(ctx) {
  log(`${logPrefix}|fn$route$polling_station`);
  return (route$ctx, polling_station$id) => {
    log(`${logPrefix}|fn$route$polling_station|route`, polling_station$id);
    route$ctx.polling_station$id = polling_station$id || null;
    route$ctx.route__polling_station = true;
  }
}
function fn$route(ctx, ...ctx$rest$$) {
  log(`${logPrefix}|fn$route`);
  route$lib__fn$route(ctx, {fn$ctx: fn$ctx}, ...ctx$rest$$);
}
function fn$ctx() {
  log(`${logPrefix}|fn$ctx`);
  return assign({
    route__election_day_root: null,
    route__vote_where: null,
    route__voting_issue: null,
    route__polling_station$$: null,
    route__polling_station: null,
    polling_station$id: null
  }, ...arguments);
}