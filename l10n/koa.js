import env from "./env";
import {assign} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {http$cache__1day} from "ctx-core/koa/lib";
import l10n$en from "l10n/l10n.en.json";
import koa$route from "koa-route";
import {log,info,error,debug} from "ctx-core/logger/lib"
const l10n$map = {
        en: l10n$en
      }
      , logPrefix = "pioneer/koa";
//GET /l10n/*
export function app$use__l10n() {
  log(`${logPrefix}|app$use__l10n`);
  const ctx = assign(...arguments)
      , app = ctx.app;
  app.use(koa$route.get("/l10n", http$get$l10n$root));
  app.use(koa$route.get("/l10n/*", http$get$l10n));
}
function *http$get$l10n$root() {
  log(`${logPrefix}|http$get$l10n$root`);
  this.redirects("/l10n/en");
}
function *http$get$l10n(locale) {
  info(`${logPrefix}|http$get$l10n`);
  const locale$lowercase = locale.toLowerCase();
  let ctx = {};
  try {
    http$cache__1day(this);
    this.body = l10n$map[locale$lowercase];
  } catch (error$ctx) {
    error$throw(ctx, error$ctx);
  }
}