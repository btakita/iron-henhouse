<spt-election-day-banner>
  <spt-banner ctx="{opts.ctx}">
    <p>
      <a href="tel:{ctx.spt__hotline$phone_number}" class="call-us">
        &nbsp;{ctx.l10n.tag$spt_top_navigation$call_us}&nbsp;
      </a>
    </p>
  </spt-banner>
  <style>
    spt-election-day-banner > spt-banner > p {
      text-align: center;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "splash/spt-banner.tag";
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