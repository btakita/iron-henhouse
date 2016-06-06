import {assign} from "ctx-core/object/lib";
import {fn$route as route$lib__fn$route,assign__route$$} from "ctx-core/route/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "election-day/route";
export function assign__election_day$route$$() {
  log(`${logPrefix}|assign__election_day$route$$`);
  let ctx = assign(...arguments);
  return assign__route$$(
    ctx,
    fn$route(ctx, {path: "", route$name: "election_day_root"}),
    fn$route(ctx, {path: "\\?*", route$name: "election_day_root"})
  );
}
function fn$route(ctx, ...ctx$rest$$) {
  return route$lib__fn$route(ctx, {fn$route$ctx: fn$ctx}, ...ctx$rest$$);
}
function fn$ctx() {
  log(`${logPrefix}|fn$ctx`);
  return assign({
    route$name__election_day_root: null
  }, ...arguments);
}