import {assign} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {
  app$use__log$request$time,
  app$use__http$error,
  app$use__echo} from "ctx-core/koa/lib";
import app$use__http$post$cmd from "ctx-core/cmd/koa";
import {app$use__home} from "splash/koa";
import {app$use__l10n} from "l10n/koa";
import {app$use__election_day} from "election-day/koa";
import "babel-core";
import {env$assign} from "ctx-core/env";
import koa from "koa";
import throng from "throng";
import koa$redirects from "koa-redirects";
import koa$sslify from "koa-sslify";
import koa$conditional_get from "koa-conditional-get";
import koa$etag from "koa-etag";
import koa$bodyparser from "koa-bodyparser";
import koa$static from "koa-static";
import koa$route from "koa-route";
import path from "path";
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
  app.use(koa$conditional_get());
  app.use(koa$etag());
  koa$redirects(app, {});
  app$use__log$request$time(ctx);
  app$use__http$error(ctx);
  app.use(koa$bodyparser());
  app.use(koa$static(path.join(__dirname, "public"), {
    maxAge: 24 * 60 * 60,
    hidden: true
  }));
  app$use__lets_encrypt(ctx);
  if (!env.isLocalhost) {
    app.use(koa$sslify({trustProtoHeader: true}));
  }
  app$use__l10n(ctx);
  app$use__home(ctx);
  app$use__http$post$cmd(ctx);
  app$use__election_day(ctx);
  app$use__echo(ctx);
  app.listen(env.port);
  info(`${logPrefix}|started|port`, env.port);
  process.on('SIGTERM', () => {
    log(`Worker ${id} exiting...`);
    process.exit();
  });
}
function app$use__lets_encrypt(ctx) {
  log(`${logPrefix}|app$use__lets_encrypt`);
  const app = ctx.app;
  app.use(koa$route.get("/.well-known/acme-challenge/LNGJ8mAuJ2q-5CXGrI1dDKYO8XqOLF5qKZhcoV8qHa0", http$get$lets_encrypt_auth));
}
function *http$get$lets_encrypt_auth(id) {
  log(`${logPrefix}|http$get$lets_encrypt_auth`);
  this.body = "LNGJ8mAuJ2q-5CXGrI1dDKYO8XqOLF5qKZhcoV8qHa0.6I756fHl3Ki6lug40LpcM8uOvzSHJ-n6_lUpA_YQWQw";
}