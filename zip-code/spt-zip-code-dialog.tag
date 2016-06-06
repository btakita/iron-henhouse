<spt-zip-code-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <h3>Enter your zip code</h3>
  </content>
  <style>
    ctx-dialog.spt-zip-code-dialog > content {
      width: 300px;
      margin-left: -150px;
      height: 400px;
    }
    ctx-dialog.spt-zip-code-dialog spt-zip-code-dialog {
      display: block;
    }
    spt-zip-code-dialog {
      margin-top: 6rem;
    }
    @media (max-width: 900px) {
      spt-early-voting-dialog {
        margin-top: inherit;
      }
    }
  </style>
</spt-zip-code-dialog>