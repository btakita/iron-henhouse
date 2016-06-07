import {assign,clone,keys} from "ctx-core/object/lib";
import layoutHtml from "ctx-core/layout/layout.html";
import {fn$indentation,indentation$regexp} from "ctx-core/string/indendation";
import {fn$riot$mount$ctx,google$analytics$html} from "html/lib";
import {js$html,string$raw} from "ctx-core/html/lib";
import {log,debug} from "ctx-core/logger/lib"
const logPrefix = "pioneer/html";
export function election_day$html(ctx, ...ctx$rest$$) {
  const ctx$clone = clone(ctx, ...ctx$rest$$)
      , headers$authorization = ctx$clone.headers$authorization;
  return layoutHtml(ctx, {
    title: "Election Day",
    body$html: election_day$body$html(ctx, {}),
    cssUrls: ["/layout"],
    fn$head$html: () => { return `<link href='https://fonts.googleapis.com/css?family=Oswald:400,700' rel='stylesheet' type='text/css'>`.replace(indentation$regexp(4), "");}
  }, ...ctx$rest$$);
}
export function election_day$body$html() {
  const ctx = assign({jsUrls: ["/dist/election-day", string$raw("https://tool.votinginfoproject.org/app.js")]}, ...arguments);
  log(`${logPrefix}|election_day$body$html`);
  let riot$mount$ctx = fn$riot$mount$ctx(ctx);
  return `
    <body>
      <spt-election-day></spt-election-day>
      ${js$html(ctx, {indentation: fn$indentation(6), indentFirstLine: false})}
      <script>
        (function() {
          var riot$mount$ctx = ${JSON.stringify(riot$mount$ctx)};
          window.ctx = riot$mount$ctx.ctx;
          riot.mount(document.querySelector("spt-election-day"), riot$mount$ctx);
          riot.route.start();
        })();
      </script>
      ${google$analytics$html(ctx)}
    </body>`.replace(indentation$regexp(4), "");
}