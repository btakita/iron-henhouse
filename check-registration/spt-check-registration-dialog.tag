<spt-check-registration-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content id="vote-check-iframe">
    <iframe src="https://verify.vote.org?{ctx.ref$query}" width="100%" marginheight="0" frameborder="0" id="frame3" scrollable="no"></iframe>
  </content>
  <style>
  spt-check-registration-dialog > content#vote-check-iframe {
    -webkit-overflow-scrolling: touch;
    overflow-y: scroll;
  }

  spt-check-registration-dialog {
      height: 100vh;
    }
    ctx-dialog.spt-check-registration-dialog spt-check-registration-dialog {
      display: block;
    }
    spt-check-registration-dialog > content {
      display: block;
      overflow: hidden;
      width: 100%;
      height: 100%;
    }
    spt-check-registration-dialog > content > iframe {
      display: block;
      width: 100%;
      height: calc(100% - 3rem);
    }
  </style>
</spt-check-registration-dialog>