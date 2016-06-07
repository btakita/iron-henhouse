<spt-election-day-dialog>
  <ctx-dialog ctx="{opts.ctx}">
    <voting-issue-dialog ctx="{opts.ctx}"></voting-issue-dialog>
    <spt-check-registration-dialog ctx="{opts.ctx}"></spt-check-registration-dialog>
    <spt-zip-code-dialog ctx="{opts.ctx}"></spt-zip-code-dialog>
  </ctx-dialog>
  <ctx-dialog-position-center ctx="{opts.ctx}"></ctx-dialog-position-center>
  <style>
    spt-election-day-dialog > ctx-dialog > content > .topbar {
      background: #222222;
      color: #ffffff;
    }
    spt-election-day-dialog > ctx-dialog {
      background: rgba(0,0,0,0.6);
    }
    spt-election-day-dialog > ctx-dialog > content > * > .topbar {
      background: #222222;
      padding-left: 20px;
      padding-right: 10px;
    }
    spt-election-day-dialog > ctx-dialog > content > * > content {
      background: #333333;
      font-size: 18px;
      padding: 20px;
    }
    @media (max-width: 900px) {
      spt-election-day-dialog > ctx-dialog > content {
        width: 100%;
        margin: 0;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {dialog__tag$mount} from "dialog/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "election-day/spt-election-day-dialog.tag";
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
</spt-election-day-dialog>