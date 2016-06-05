<spt-early-voting-issue-dialog class="dialog" show="{ctx.dialog.tag$name === 'spt-early-voting-issue-dialog'}">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <a class="yellow-link" href="tel:4157958065">
      <img src="/textlinks-phone.svg" />
    </a>
  </content>
  <style>
    spt-early-voting-issue-dialog {
      margin-top: 100px;
    }
    spt-early-voting-issue-dialog > content {
      display: block;
      padding-top: 12px;
      text-align: center;
    }
    spt-early-voting-issue-dialog > content > * {
      margin: 0;
      font-size: 18px;
      color: #FDD102;
      font-weight: bold;
    }
    spt-early-voting-issue-dialog > content > a {
      padding: 12px 0;
    }
    spt-early-voting-issue-dialog > content > a > img {
      width: 80px;
      height: 80px;
    }
    @media (max-width: 900px) {
      spt-early-voting-issue-dialog {
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
        , logPrefix = "splash/spt-early-voting-issue-dialog.tag";
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
</spt-early-voting-issue-dialog>