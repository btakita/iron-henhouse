import {assign,keys} from "ctx-core/object/lib";
import layoutHtml from "ctx-core/layout/layout.html";
import {fn$indentation,indentation$regexp} from "ctx-core/string/indendation";
import {fn$riot$mount$ctx,google$analytics$html} from "html/lib";
import {addtocalendar$html} from "ctx-core/addtocalendar.com/html";
import {js$html} from "ctx-core/html/lib";
import {log,debug} from "ctx-core/logger/lib"
const logPrefix = "splash/html";
export function home$html(ctx) {
  return layoutHtml(ctx, {
    title: "suppressthis.org",
    body$html: home$body$html(ctx, {
    }),
    cssUrls: ["/layout"],
    fn$head$html: () => { return `<link href='https://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>`.replace(indentation$regexp(4), "");}
  });
}
export function home$body$html() {
  const ctx = assign({jsUrls: ["/dist/home"]}, ...arguments);
  log(`${logPrefix}|home$body$html`, keys(ctx));
  let riot$mount$ctx = fn$riot$mount$ctx(ctx);
  const indentation = fn$indentation(6);
  return `
    <body>
      <spt-splash ctx="{opts.ctx}"></spt-splash>
      ${js$html(ctx, {indentation: indentation, indentFirstLine: false})}
      ${addtocalendar$html({indentation: indentation})}
      <script>
        (function() {
          var riot$mount$ctx = ${JSON.stringify(riot$mount$ctx)};
          window.ctx = riot$mount$ctx.ctx;
          riot.mount(document.querySelector("spt-splash"), riot$mount$ctx);
          riot.route.start();
        })();
      </script>
      ${google$analytics$html(ctx)}
    </body>`.replace(indentation$regexp(4), "");
}