<spt-early-voting-issue-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <a href="tel:4157958065">
      <img src="/textlinks-phone.svg" />
    </a>
  </content>
  <style>
    ctx-dialog.spt-early-voting-issue-dialog > content {
      width: 300px;
      margin-left: -150px;
      height: 400px;
    }
    spt-early-voting-issue-dialog {
      margin-top: 6rem;
    }
    ctx-dialog.spt-early-voting-issue-dialog spt-early-voting-issue-dialog {
      display: block;
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
      ctx-dialog.spt-early-voting-issue-dialog > content {
        width: inherit;
        margin-left: inherit;
        height: inherit;
      }
      spt-early-voting-issue-dialog {
        margin-top: inherit;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "splash/spt-early-voting-issue-dialog.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-early-voting-issue-dialog>