<spt-election-day-layout>
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-TGLKRF"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-TGLKRF');</script>
<!-- End Google Tag Manager -->
  <ctx ctx="{opts.ctx}"></ctx>
  <spt-top-navigation ctx="{opts.ctx}"></spt-top-navigation>
  <content>
    <yield/>
  </content>
  <spt-election-day-dialog ctx="{opts.ctx}"></spt-election-day-dialog>
  <style>
    spt-election-day-layout {
      display: flex;
      flex-direction: column;
      align-items: center;
      width: 100%;
      height: 100%;
    }
    spt-election-day-layout > * {
      width: 100%;
    }
    spt-election-day-layout > spt-top-navigation {
      flex: none;
    }
    spt-election-day-layout > content {
      display: flex;
      flex: auto;
      text-align: center;
      overflow-x: hidden;
      overflow-y: auto;
    }
    spt-election-day-layout > content > * {
      flex: auto;
      width: 100%;
    }
  </style>
  <script type="text/babel">
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign} from "ctx-core/object/lib";
    import {assign__ctx} from "site/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "election-day/spt-election-day-layout.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      assign__ctx(tag.ctx);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-election-day-layout>