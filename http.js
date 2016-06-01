import {assign} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {
  app$use__log$request$time,
  app$use__http$error,
  app$use__echo} from "ctx-core/koa/lib";
import app$use__http$post$cmd from "ctx-core/cmd/koa";
import {app$use__home} from "splash/koa";
import {app$use__election_day} from "election-day/koa";
import "babel-core";
import {env$assign} from "ctx-core/env";
import koa from "koa";
import throng from "throng";
import koa$redirects from "koa-redirects";
import koa$sslify from "koa-sslify";
import koa$bodyparser from "koa-bodyparser";
import koa$static$cache from "koa-static-cache";
import koa$route from "koa-route";
import path from "path";
import {app$use__basic_auth} from "ctx-core/basic_auth/koa";
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
  app.use(koa$static$cache(path.join(__dirname, "public"), {
    maxAge: 24 * 60 * 60
  }));
  if (!env.isLocalhost) {
    app.use(koa$sslify({trustProtoHeader: true}));
  }
  app$use__home(ctx);
  if (!env.isLocalhost) {
    app$use__basic_auth(ctx);
  }
  app$use__election_day(ctx);
  app$use__http$post$cmd(ctx);
  app$use__echo(ctx);
  app.listen(env.port);
  info(`${logPrefix}|started|port`, env.port);
  process.on('SIGTERM', () => {
    log(`Worker ${id} exiting...`);
    process.exit();
  });
}