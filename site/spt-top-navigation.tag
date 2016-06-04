<spt-top-navigation>
  <content>
    <a href="tel:{ctx.spt__hotline$phone_number}" class="call-us">
      &nbsp;{ctx.l10n.tag$spt_top_navigation$call_us}&nbsp;
    </a>
  </content>
  <a href="#" class="menu" onclick="{menu$onclick}">&equiv;</a>
  <style>
    spt-top-navigation {
      position: relative;
      display: flex;
      border: 1px dotted #111111;
      background: #F9F9F9;
      height: 2.5em;
      line-height: 2.5em;
    }
    spt-top-navigation > content {
      flex: auto;
      text-align: center;
    }
    spt-top-navigation > content > a {
      color: #000000;
    }
    spt-top-navigation > .menu {
      position: absolute;
      right: 0;
      margin: 0;
      padding: 0 20px;
      font-size: 24px;
      font-weight: bold;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign__l10n_agent} from "l10n/agent";
    import {assign__dialog$$_agent} from "ctx-core/dialog/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {
              menu$onclick: menu$onclick
            })
        , logPrefix = "site/spt-top-navigation.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__l10n_agent(ctx);
      assign__dialog$$_agent(ctx);
      ctx.l10n_agent.on("change", l10n_agent$on$change);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      self.ctx.l10n_agent.off("change", l10n_agent$on$change);
    }
    function menu$onclick(e) {
      log(`${logPrefix}|menu$onclick`);
      e.preventDefault();
      self.ctx.dialog$$_agent.push({
        dialog$$: {
          tag$name: "spt-election-day-menu-dialog",
          title: "Menu"
        }
      });
    }
    function l10n_agent$on$change() {
      log(`${logPrefix}|l10n_agent$on$change`);
      tag.assign__ctx$update();
    }
  </script>
</spt-top-navigation>