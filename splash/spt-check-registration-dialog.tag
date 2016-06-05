<spt-check-registration-dialog class="dialog" show="{ctx.dialog.tag$name === 'spt-check-registration-dialog'}">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <iframe src="https://verify.vote.org" width="100%" marginheight="0" frameborder="0" id="frame3" scrollable="no"></iframe>
  </content>
  <style>
    spt-check-registration-dialog {
      height: 100vh;
    }
    spt-check-registration-dialog > content {
      display: block;
      overflow: hidden;
      width: 100%;
      height: 100%;
    }
    spt-check-registration-dialog > content > iframe {
      display: block;
      height: calc(100% - 3rem);
    }
  </style>
</spt-check-registration-dialog>