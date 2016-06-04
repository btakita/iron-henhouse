<spt-check-registration-dialog class="dialog" show="{ctx.dialog.tag$name === 'spt-check-registration-dialog'}">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <iframe src="https://verify.vote.org" width="100%" marginheight="0" frameborder="0" id="frame3" scrollable="no"></iframe>
  </content>
  <style>
    spt-check-registration-dialog > content {
      -webkit-flex: auto;
      flex: auto;
      display: -webkit-box;
      display: flex;
      -webkit-flex-direction: column;
      flex-direction: column;
      overflow: hidden;
      width: 100%;
    }
    spt-check-registration-dialog > content > iframe {
      -webkit-flex: auto;
      flex: auto;
    }
  </style>
</spt-check-registration-dialog>