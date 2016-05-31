import "./env";
import {assign,clone,keys} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {env$assign} from "ctx-core/env";
import layoutHtml from "ctx-core/layout/layout.html";
import {indentation,indentation$regexp} from "ctx-core/string/indendation";
import {js$html} from "ctx-core/html/lib";
import koa$route from "koa-route";
import "site/cmd";
import "vote-where/cmd";
import {log,info,error,debug} from "ctx-core/logger/lib"
const logPrefix = "election-day/http";
//GET /election-day
export function app$use__election_day() {
  log(`${logPrefix}|app$use__election_day`);
  const ctx = assign(...arguments)
      , app = ctx.app;
  app.use(koa$route.get("/election-day", http$get$election_day));
}
function *http$get$election_day() {
  info(`${logPrefix}|http$get$election_day`);
  let ctx = {};
  try {
    const headers$authorization = this.headers.authorization;
    this.body = layoutHtml(ctx, {
      title: "Election Day",
      body$html: election_day$body$html(ctx, {
        authentication: {
          token_type: "Basic",
          access_token: headers$authorization && headers$authorization.split("Basic ")[1]
        }
      }),
      cssUrls: ["/layout"]
    });
  } catch (error$ctx) {
    error$throw(ctx, error$ctx);
  }
}
export function election_day$body$html() {
  const ctx = assign({jsUrls: ["/dist/election-day"]}, ...arguments);
  log(`${logPrefix}|election_day$body$html`, keys(ctx));
  let riot$mount$ctx = {
    ctx: {
      authentication: ctx.authentication
    }
  };
  return `
    <body>
      <spt-layout>
        <election-day ctx="{opts.ctx}"></election-day>
      </spt-layout>
      ${js$html(ctx, {indentation: indentation(6), indentFirstLine: false})}
      <script>
        (function() {
          var riot$mount$ctx = ${JSON.stringify(riot$mount$ctx)};
          window.ctx = riot$mount$ctx.ctx;
          riot.mount(document.querySelector("spt-layout"), riot$mount$ctx);
          riot.route.start();
        })();
      </script>
    </body>`.replace(indentation$regexp(4), "");
}