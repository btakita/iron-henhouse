<spt-dialogs show="{ctx.dialog}">
  &nbsp;
  <mask onclick="{mask$onclick}"></mask>
  <style>
    spt-dialogs {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: 100;
    }
    spt-dialogs > mask {
      position: absolute;
      opacity: 0.9;
      background: #ffffff;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: 101;
    }
    spt-dialogs > .dialog {
      position: absolute;
      top: 0;
      left: 50%;
      opacity: 1.0;
      background: #ffffff;
      border: 1px dotted #111111;
      overflow: hidden;
      padding: 40px;
      z-index: 102;
    }
    spt-dialogs > .dialog > title {
      height: 2.5em;
      line-height: 1.25em;
    }
    spt-dialogs > .dialog > content {
      flex: inherit auto;
    }
  </style>
  <script type="text/babel">
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign} from "ctx-core/object/lib";
    import {assign__dialog$$_agent,assign__dialog_agent} from "ctx-core/dialog/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {
            mask$onclick: mask$onclick
          })
        , logPrefix = "site/spt-dialogs.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = tag.ctx;
      assign__dialog$$_agent(ctx);
      assign__dialog_agent(ctx);
      ctx.dialog_agent.on("change", dialog_agent$on$change);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      let ctx = tag.ctx;
      ctx.dialog_agent.off("change", dialog_agent$on$change);
    }
    function dialog_agent$on$change() {
      log(`${logPrefix}|dialog_agent$on$change`);
      tag.assign__ctx$update();
    }
    function mask$onclick() {
      log(`${logPrefix}|mask$onclick`);
      ctx.dialog$$_agent.clear();
    }
  </script>
</spt-dialogs>