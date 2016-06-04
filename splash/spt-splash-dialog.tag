<spt-splash-dialog>
  <ctx-dialog ctx="{opts.ctx}">
    <spt-early-voting-dialog ctx="{opts.ctx}"></spt-early-voting-dialog>
    <spt-early-voting-issue-dialog ctx="{opts.ctx}"></spt-early-voting-issue-dialog>
    <spt-addtocalendar-dialog ctx="{opts.ctx}"></spt-addtocalendar-dialog>
  </ctx-dialog>
  <ctx-dialog-position-center ctx="{opts.ctx}"></ctx-dialog-position-center>
  <style>
    spt-splash-dialog > ctx-dialog > content {
      margin-top: 100px;
    }
    spt-splash-dialog > ctx-dialog > content > ctx-dialog-topbar {
      background: #222222;
      color: #ffffff;
    }
    spt-splash-dialog > ctx-dialog > mask {
      background: #000000;
    }
    spt-splash-dialog > ctx-dialog > content > * > ctx-dialog-topbar {
      background: #222222;
      padding-left: 20px;
    }
    spt-splash-dialog > ctx-dialog > content > * > content {
      background: #333333;
      min-width: 400px;
      font-size: 18px;
      padding: 20px;
    }
    @media (max-width: 650px) {
      spt-splash-dialog > ctx-dialog > content {
        width: 100%;
        margin: 0;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign__dialog_agent} from "ctx-core/dialog/agent";
    import {assign__route$fragment_agent} from "ctx-core/route/lib";
    import {dialog$$find__tag$name} from "ctx-core/dialog/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "splash/spt-early-voting-dialog.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__route$fragment_agent(ctx);
      assign__dialog_agent(ctx);
      ctx.route$fragment_agent.on("change", refresh);
      ctx.dialog_agent.on("change", dialog_agent$on$change);
      refresh(true);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      let ctx = self.ctx;
      self.ctx.route$fragment_agent.off("change", refresh);
      ctx.dialog_agent.off("change", dialog_agent$on$change);
    }
    function dialog_agent$on$change() {
      log(`${logPrefix}|dialog_agent$on$change`);
      const ctx = self.ctx;
      if (!ctx.dialog) {
        riot.route("");
      }
    }
    function refresh(show) {
      log(`${logPrefix}|refresh`);
      let ctx = self.ctx;
      refresh__dialog$spt_early_voting_dialog();
      refresh__dialog$spt_early_voting_issue_dialog();
      refresh__dialog$spt_addtocalendar_dialog();
      tag.assign__ctx$update();
    }
    function refresh__dialog$spt_early_voting_dialog() {
      log(`${logPrefix}|refresh__dialog$spt_early_voting_dialog`);
      let ctx = self.ctx;
      const early_voting = ctx.route$query$map.early_voting
          , dialog$$_agent = ctx.dialog$$_agent
          , dialog$spt_early_voting_dialog = dialog$$find__tag$name(ctx, "spt-early-voting-dialog");
      if (early_voting && !dialog$spt_early_voting_dialog) {
        dialog$$_agent.push({
          dialog$$: {
            tag$name: "spt-early-voting-dialog",
            title: "Early Voting"
          }
        });
      } else if (!early_voting && dialog$spt_early_voting_dialog) {
        dialog$$_agent.remove({dialog$$: dialog$spt_early_voting_dialog});
      }
    }
    function refresh__dialog$spt_early_voting_issue_dialog() {
      log(`${logPrefix}|refresh__dialog$spt_early_voting_issue_dialog`);
      let ctx = self.ctx;
      const early_voting_issue = ctx.route$query$map.early_voting_issue
          , dialog$$_agent = ctx.dialog$$_agent
          , dialog$spt_early_voting_issue_dialog = dialog$$find__tag$name(ctx, "spt-early-voting-issue-dialog");
      if (early_voting_issue && !dialog$spt_early_voting_issue_dialog) {
        dialog$$_agent.push({
          dialog$$: {
            tag$name: "spt-early-voting-issue-dialog",
            title: "Early Voting Problem"
          }
        });
      } else if (!early_voting_issue && dialog$spt_early_voting_issue_dialog) {
        dialog$$_agent.remove({dialog$$: dialog$spt_early_voting_issue_dialog});
      }
    }
    function refresh__dialog$spt_addtocalendar_dialog() {
      log(`${logPrefix}|refresh__dialog$spt_addtocalendar_dialog`);
      let ctx = self.ctx;
      const addtocalendar = ctx.route$query$map.addtocalendar
          , dialog$$_agent = ctx.dialog$$_agent
          , dialog$spt_addtocalendar_dialog = dialog$$find__tag$name(ctx, "spt-addtocalendar-dialog");
      if (addtocalendar && !dialog$spt_addtocalendar_dialog) {
        dialog$$_agent.push({
          dialog$$: {
            tag$name: "spt-addtocalendar-dialog",
            title: "Add to Calendar"
          }
        });
      } else if (!addtocalendar && dialog$spt_addtocalendar_dialog) {
        dialog$$_agent.remove({dialog$$: dialog$spt_addtocalendar_dialog});
      }
    }
  </script>
</spt-splash-dialog>