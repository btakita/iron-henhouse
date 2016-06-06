import "./env";
import {assign} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {http$cache__5min} from "ctx-core/koa/lib";
import {home$html} from "splash/html";
import koa$route from "koa-route";
import {log,info,error,debug} from "ctx-core/logger/lib"
const logPrefix = "splash/koa";
//GET /pioneer
export function app$use__home() {
  log(`${logPrefix}|app$use__home`);
  const ctx = assign(...arguments)
      , app = ctx.app;
  app.use(koa$route.get("/", http$get$home));
}
function *http$get$home() {
  info(`${logPrefix}|http$get$home`);
  let ctx = {};
  try {
    http$cache__5min(this);
    this.body = home$html(ctx);
  } catch (error$ctx) {
    error$throw(ctx, error$ctx);
  }
}