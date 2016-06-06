<spt-splash-dialog>
  <ctx-dialog ctx="{opts.ctx}">
    <spt-early-voting-dialog ctx="{opts.ctx}"></spt-early-voting-dialog>
    <spt-early-voting-issue-dialog ctx="{opts.ctx}"></spt-early-voting-issue-dialog>
    <spt-addtocalendar-dialog ctx="{opts.ctx}"></spt-addtocalendar-dialog>
    <spt-check-registration-dialog ctx="{opts.ctx}"></spt-check-registration-dialog>
  </ctx-dialog>
  <ctx-dialog-position-center ctx="{opts.ctx}"></ctx-dialog-position-center>
  <style>
    spt-splash-dialog > ctx-dialog > content > .topbar {
      background: #222222;
      color: #ffffff;
    }
    spt-splash-dialog > ctx-dialog {
      background: rgba(0,0,0,0.6);
    }
    spt-splash-dialog > ctx-dialog > content > * > .topbar {
      background: #222222;
      padding-left: 20px;
      padding-right: 10px;
    }
    spt-splash-dialog > ctx-dialog > content > * > content {
      background: #333333;
      font-size: 18px;
      padding: 20px;
    }
    @media (max-width: 900px) {
      spt-splash-dialog > ctx-dialog > content {
        width: 100%;
        margin: 0;
      }
    }
  </style>
  <script type="text/babel">
    import {assign,clone} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {dialog__tag$mount} from "dialog/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "splash/spt-splash-dialog.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    dialog__tag$mount(tag);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-splash-dialog>