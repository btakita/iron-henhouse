<spt-i-voted-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content id="i-voted-frame">
    <iframe src="https://docs.google.com/forms/d/1ptotgFk1gCtsxq6zDGCVqpkOh1cT65moObGB4sZciKk/viewform?embedded=true" width="100%" frameborder="0" marginheight="0" marginwidth="0">Loading...</iframe>
  </content>
  <style>
    #i-voted-iframe {
    -webkit-overflow-scrolling: touch;
    overflow-y: scroll;
  }
    ctx-dialog.spt-i-voted-dialog spt-i-voted-dialog {
      display: block;
    }
    spt-i-voted-dialog {
      height: 100vh;
    }
    spt-i-voted-dialog > content {
      display: block;
      overflow: hidden;
      width: 100%;
      height: 100%;
    }
    spt-i-voted-dialog > content > iframe {
      display: block;
      width: 100%;
      height: calc(100% - 3rem);
    }
  </style>
</spt-i-voted-dialog>