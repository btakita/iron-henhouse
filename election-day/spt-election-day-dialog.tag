<spt-election-day-dialog>
  <ctx-dialog ctx="{opts.ctx}">
    <yield to="topbar">
      <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
    </yield>
    <yield to="content">
      <spt-election-day-menu-dialog ctx="{opts.ctx}"></spt-election-day-menu-dialog>
    </yield>
  </ctx-dialog>
  <ctx-dialog-position-right ctx="{opts.ctx}"></ctx-dialog-position-right>
</spt-election-day-dialog>