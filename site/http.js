import "./env";
import {assign,clone,keys} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {env$assign} from "ctx-core/env";
import layoutHtml from "ctx-core/layout/layout.html";
import {indentation,indentation$regexp} from "ctx-core/string/indendation";
import {js$html} from "ctx-core/html/lib";
import koa$route from "koa-route";
import {log,info,error,debug} from "ctx-core/logger/lib"
const logPrefix = "site/http";
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
    this.body = layoutHtml(ctx, {
      title: "suppressthis.org",
      body$html: home$body$html(ctx, {
      }),
      cssUrls: ["/layout"]
    });
  } catch (error$ctx) {
    error$throw(ctx, error$ctx);
  }
}
export function home$body$html() {
  const ctx = assign({jsUrls: ["/dist/home"]}, ...arguments);
  log(`${logPrefix}|home$body$html`, keys(ctx));
  let riot$mount$ctx = {
    ctx: {
      authentication: ctx.authentication
    }
  };
  return `
    <body>
      <spt-splash ctx="{opts.ctx}"></spt-splash>
      ${js$html(ctx, {indentation: indentation(6), indentFirstLine: false})}
      <script>
        (function() {
          var riot$mount$ctx = ${JSON.stringify(riot$mount$ctx)};
          window.ctx = riot$mount$ctx.ctx;
          riot.mount(document.querySelector("spt-splash"), riot$mount$ctx);
          riot.route.start();
        })();
      </script>
    </body>`.replace(indentation$regexp(4), "");
}