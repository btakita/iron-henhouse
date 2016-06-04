<spt-early-voting-dialog class="dialog" show="{ctx.dialog.tag$name === 'spt-early-voting-dialog'}">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <a class="yellow-link" href="http://voteearly.berniesandersvideo.com/">&nbsp;{ctx.l10n.vote_early_instructions$menu$text}&nbsp;</a>
    <a class="yellow-link" href="?early_voting_issue=1" onclick="{link$onclick}">&nbsp;{ctx.l10n.early_voting_issue$menu$text}&nbsp;</a>
  </content>
  <style>
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
    spt-early-voting-dialog > content > a.early-voting-issue {
      display: flex;
      align-items: center;
    }
    spt-early-voting-dialog > content > a.early-voting-issue > img {
      flex: 1;
      flex-shrink: 0;
      flex-grow: 0;
      width: 1.25em;
      height: 1.25em;
    }
    spt-early-voting-dialog > content > a.early-voting-issue > content {
      flex: auto;
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