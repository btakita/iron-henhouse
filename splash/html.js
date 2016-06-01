import {assign,keys} from "ctx-core/object/lib";
import layoutHtml from "ctx-core/layout/layout.html";
import {indentation,indentation$regexp} from "ctx-core/string/indendation";
import {js$html} from "ctx-core/html/lib";
import {log,debug} from "ctx-core/logger/lib"
const logPrefix = "splash/html";
export function home$html(ctx) {
  return layoutHtml(ctx, {
    title: "suppressthis.org",
    body$html: home$body$html(ctx, {
    }),
    cssUrls: ["/layout"]
  });
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