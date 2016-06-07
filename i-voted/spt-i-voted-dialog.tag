<i-voted-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <iframe src="https://docs.google.com/forms/d/1ptotgFk1gCtsxq6zDGCVqpkOh1cT65moObGB4sZciKk/viewform?embedded=true" width="100%" height="600" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>
  </content>
  <style>
    ctx-dialog.spt-check-registration-dialog spt-check-registration-dialog {
      display: block;
    }
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
      width: 100%;
      height: calc(100% - 3rem);
    }
  </style>
</spt-check-registration-dialog>