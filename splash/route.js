import {assign} from "ctx-core/object/lib";
import {fn$route as route$lib__fn$route,assign__route$$} from "ctx-core/route/lib";
import {assign__dialog$$_agent} from "ctx-core/dialog/agent";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "splash/route";
export function assign__splash$route$$() {
  log(`${logPrefix}|assign__splash$route$$`);
  let ctx = assign(...arguments);
  assign__dialog$$_agent(ctx);
  return assign__route$$(
    ctx,
    fn$route(ctx, {path: "", route$name: "splash_root"}),
    fn$route(ctx, {path: "\\?*", route$name: "splash_root"})
  );
}
function fn$route(ctx, ...ctx$rest$$) {
  return route$lib__fn$route(ctx, {fn$route$ctx: fn$route$ctx}, ...ctx$rest$$);
}
function fn$route$ctx() {
  log(`${logPrefix}|fn$ctx`);
  let route$ctx = assign({
      route$name__splash_root: null
    }, ...arguments);
  return route$ctx;
}