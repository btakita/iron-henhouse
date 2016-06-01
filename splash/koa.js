import "./env";
import {assign} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {assign__http$headers__cache$5min} from "ctx-core/http/lib";
import {home$html} from "splash/html";
import koa$route from "koa-route";
import {log,info,error,debug} from "ctx-core/logger/lib"
const logPrefix = "splash/koa";
//GET /election-day
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
    assign__http$headers__cache$5min(ctx);
    this.body = home$html(ctx);
  } catch (error$ctx) {
    error$throw(ctx, error$ctx);
  }
}