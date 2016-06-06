<spt-early-voting-dialog class="dialog" show="{ctx.dialog.tag$name === 'spt-early-voting-dialog'}">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <a target="_blank" href="http://voteearly.berniesandersvideo.com/?{ctx.ref$query}">&nbsp;{ctx.l10n.vote_early_instructions$menu$text}&nbsp;</a>
    <a href="?early_voting_issue=1" onclick="{link$onclick}">&nbsp;{ctx.l10n.early_voting_issue$menu$text}&nbsp;</a>
  </content>
  <style>
    ctx-dialog.spt-early-voting-dialog > content {
      width: 22rem;
      margin-left: -11rem;
      height: 40rem;
    }
    spt-early-voting-dialog {
      margin-top: 100px;
    }
    spt-early-voting-dialog > content {
      display: block;
    }
    spt-early-voting-dialog > content > a {
      display: block;
      padding: 12px 0;
      font-weight: bold;
    }
    @media (max-width: 900px) {
      ctx-dialog.spt-early-voting-dialog > content {
        width: inherit;
        margin-left: inherit;
        height: inherit;
      }
      spt-early-voting-dialog {
        margin-top: 0;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {dialog$$find__tag$name} from "ctx-core/dialog/lib"
    import {assign__l10n_agent} from "l10n/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {link$onclick: link$onclick})
        , logPrefix = "splash/spt-early-voting-dialog.tag";
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
      let ctx = self.ctx;
      ctx.l10n_agent.off("change", l10n_agent$on$change);
    }
    function l10n_agent$on$change() {
      log(`${logPrefix}|l10n_agent$on$change`);
      tag.assign__ctx$update();
    }
  </script>
</spt-early-voting-dialog>