import {assign,clone,keys} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {fn$route as route$lib__fn$route,assign__route$$} from "ctx-core/route/lib";
import {agent$$trigger$change} from "ctx-core/agent/lib";
import riot from "riot";
import co from "co";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "splash/route";
export function assign__splash$route$$() {
  log(`${logPrefix}|assign__splash$route$$`);
  let ctx = assign(...arguments);
  return assign__route$$(
    ctx,
    fn$route(ctx, {path: "", route$name: "splash_root"}),
    fn$route(ctx, {path: "early-voting", route$name: "early_voting"})
  );
}
function fn$route(ctx, ...ctx$rest$$) {
  return route$lib__fn$route(ctx, {fn$ctx: fn$ctx}, ...ctx$rest$$);
}
function fn$ctx() {
  log(`${logPrefix}|fn$ctx`);
  return assign({
      route$name__splash_root: null,
      route$name__early_voting: null
    }, ...arguments);
}