import {assign} from "ctx-core/object/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "html/lib";
export function fn$riot$mount$ctx(ctx, ...riot$mount$ctx$$) {
  log(`${logPrefix}|fn$riot$mount$ctx`);
  let riot$mount$ctx = assign({}, {
    ctx: {
      authentication: ctx.authentication,
      spt__hotline$phone_number: "18002498683",
      ref$query: "ref=suppressthis.org"
    }
  }, ...riot$mount$ctx$$);
  return riot$mount$ctx;
}
export function google$analytics$html() {
  log(`${logPrefix}|google$analytics$html`);
  return `
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-TGLKRF"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TGLKRF');</script>
<!-- End Google Tag Manager -->
  `;
}