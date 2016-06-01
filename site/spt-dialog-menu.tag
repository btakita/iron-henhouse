<spt-dialog-menu class="dialog">
  <content>
    <a href="/" onclick="{a$onclick}">&nbsp;Suppress This&nbsp;</a>
    <a href="vote-where" onclick="{a$onclick}">&nbsp;{ctx.l10n.vote_where$menu$text}&nbsp;</a>
    <a href="voting-issue" onclick="{a$onclick}">&nbsp;{ctx.l10n.voting_issue$menu$text}&nbsp;</a>
  </content>
  <style>
    spt-dialog-menu > content {
      display: block;
      padding-top: 12px;
    }
    spt-dialog-menu > content > a {
      display: block;
      padding: 12px 0;
      font-size: 18px;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {assign__l10n_agent} from "site/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {a$onclick: a$onclick})
        , logPrefix = "site/spt-dialog-menu.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__l10n_agent(ctx);
      ctx.l10n_agent.on("change", l10n_agent$on$change);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      self.ctx.l10n_agent.off("change", l10n_agent$on$change);
    }
    function a$onclick(e) {
      log(`${logPrefix}|a$onclick`);
      link$onclick(e);
      const ctx = self.ctx;
      ctx.dialog_agent.remove();
    }
    function l10n_agent$on$change() {
      log(`${logPrefix}|l10n_agent$on$change`);
      tag.assign__ctx$update();
    }
  </script>
</spt-dialog-menu>