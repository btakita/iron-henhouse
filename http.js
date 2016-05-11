import {assign} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {
  app$use__log$request$time,
  app$use__http$error,
  app$use__echo} from "ctx-core/http/lib";
import app$use__http$post$cmd from "ctx-core/cmd/http$cmd";
import {app$use__election_day} from "election-day/http";
import "babel-core";
import {env$assign} from "ctx-core/env";
import koa from "koa";
import throng from "throng";
import koa$redirects from "koa-redirects";
import koa$bodyparser from "koa-bodyparser";
import koa$static from "koa-static";
import koa$route from "koa-route";
import {log,info,warn,error,debug} from "ctx-core/logger/lib";
const app = koa()
    , env = env$assign({app: app})
    , ctx = {app: app}
    , logPrefix = "http";
log(`${logPrefix}`);
assign(app, {proxy: true});
throng({
  workers: env.worker$count,
  lifetime: Infinity
}, start);
function start(id) {
  koa$redirects(app, {});
  app$use__log$request$time(ctx);
  app$use__http$error(ctx);
  app.use(koa$bodyparser());
  app.use(koa$static("./public"));
  app$use__election_day(ctx);
  app.use(koa$route.get("/", function *() {
    this.redirects("/election-day");
  }));
  app$use__http$post$cmd(ctx);
  app$use__echo(ctx);
  app.listen(env.port);
  info(`${logPrefix}|started|port`, env.port);
  process.on('SIGTERM', () => {
    log(`Worker ${id} exiting...`);
    process.exit();
  });
}