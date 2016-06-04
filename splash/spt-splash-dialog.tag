<spt-splash-dialog>
  <ctx-dialog ctx="{opts.ctx}">
    <yield to="content">
      <spt-early-voting-dialog ctx="{opts.ctx}"></spt-early-voting-dialog>
      <spt-early-voting-issue-dialog ctx="{opts.ctx}"></spt-early-voting-issue-dialog>
    </yield>
  </ctx-dialog>
  <ctx-dialog-position-center ctx="{opts.ctx}"></ctx-dialog-position-center>
  <style>
    spt-splash-dialog > ctx-dialog > dialog > content {
      background: #333333;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign__dialog_agent} from "ctx-core/dialog/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "splash/spt-early-voting-dialog.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__dialog_agent(ctx);
      ctx.dialog_agent.on("change", dialog_agent$on$change);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      let ctx = self.ctx;
      ctx.dialog_agent.off("change", dialog_agent$on$change);
    }
    function dialog_agent$on$change() {
      log(`${logPrefix}|dialog_agent$on$change`);
      const ctx = self.ctx;
      if (!ctx.dialog) {
        riot.route("");
      }
    }
  </script>
</spt-splash-dialog>