<spt-election-day-banner>
  <spt-banner ctx="{opts.ctx}">
    <p>
<<<<<<< HEAD
      <a href="tel:{ctx.spt__hotline$phone}" class="call-us">
        &nbsp;{ctx.l10n.tag$spt_top_navigation$call_us}&nbsp;
      </a>
=======
      &nbsp;{ctx.l10n.top_banner$text}&nbsp;
>>>>>>> e5eec85e266d81b35e19a8bc604a123e370225c1
    </p>
    <a href="{ctx.route$path$url||'/'}?dialog=spt-election-day-menu-dialog" class="menu" onclick="{link$onclick}">&equiv;</a>
  </spt-banner>
  <style>
    spt-election-day-banner > spt-banner > p {
      text-align: center;
    }
    spt-election-day-banner > spt-banner > .menu {
      position: absolute;
      top: 0.15em;
      right: 0;
      margin: 0;
      padding: 0 20px;
      font-size: 24px;
      font-weight: bold;
      z-index: 1;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "election-day/spt-election-day-banner.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    l10n__tag$mount(tag);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-election-day-banner>