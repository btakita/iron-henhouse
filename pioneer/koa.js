import "./env";
import {assign} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {election_day$html} from "pioneer/html";
import koa$route from "koa-route";
import "vote-where/cmd";
import {log,info,error,debug} from "ctx-core/logger/lib"
const logPrefix = "pioneer/koa";
//GET /pioneer
export function app$use__pioneer() {
  log(`${logPrefix}|app$use__pioneer`);
  const ctx = assign(...arguments)
      , app = ctx.app;
  app.use(koa$route.get("/pioneer", http$get$pioneer));
}
function *http$get$pioneer() {
  info(`${logPrefix}|http$get$pioneer`);
  let ctx = {};
  try {
    this.body = election_day$html(ctx, {headers$authorization: this.headers.authorization});
  } catch (error$ctx) {
    error$throw(ctx, error$ctx);
  }
}