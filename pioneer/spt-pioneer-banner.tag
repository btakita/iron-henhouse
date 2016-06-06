<spt-pioneer-banner>
  <spt-banner ctx="{opts.ctx}">
    <p>
      <a href="tel:{ctx.spt__hotline$phone_number}" class="call-us">
        &nbsp;{ctx.l10n.tag$spt_top_navigation$call_us}&nbsp;
      </a>
    </p>
    <a href="?" class="menu" onclick="{menu$onclick}">&equiv;</a>
  </spt-banner>
  <style>
    spt-pioneer-banner {
      display: block;
      overflow: hidden;
      border: 1px dotted #111111;
    }
    spt-pioneer-banner > p {
      text-align: center;
    }
    spt-pioneer-banner > spt-banner > .menu {
      position: absolute;
      top: 0.3em;
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
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {assign__l10n_agent} from "l10n/agent";
    import {assign__dialog$$_agent} from "ctx-core/dialog/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {
              menu$onclick: menu$onclick
            })
        , logPrefix = "pioneer/spt-pioneer-banner.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__l10n_agent(ctx);
      assign__dialog$$_agent(ctx);
      ctx.l10n_agent.on("change", l10n_agent$on$change);
      tag.assign__ctx$update();
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      self.ctx.l10n_agent.off("change", l10n_agent$on$change);
    }
    function menu$onclick(e) {
      log(`${logPrefix}|menu$onclick`);
      e.preventDefault();
      link$onclick(e);
      self.ctx.dialog$$_agent.push({
        dialog$$: {
          tag$name: "spt-pioneer-menu-dialog",
          title: "Menu"
        }
      });
    }
    function l10n_agent$on$change() {
      log(`${logPrefix}|l10n_agent$on$change`);
      tag.assign__ctx$update();
    }
  </script>
</spt-pioneer-banner>