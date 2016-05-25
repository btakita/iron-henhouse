<spt-dialog>
  <ctx-dialog ctx="{opts.ctx}">
    <spt-dialog-menu
      ctx="{opts.ctx}"
      show="{ctx.dialog.tag$name === 'spt-dialog-menu'}"></spt-dialog-menu>
  </ctx-dialog>
  <ctx-dialog-right ctx="{opts.ctx}"></ctx-dialog-right>
</spt-dialog>