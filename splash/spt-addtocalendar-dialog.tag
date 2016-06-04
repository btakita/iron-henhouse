<spt-addtocalendar-dialog class="dialog" show="{ctx.dialog.tag$name === 'spt-addtocalendar-dialog'}">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <span class="addtocalendar atc-style-blue">
      <var class="atc_event">
        <var class="atc_date_start">2016-06-07 07:00:00</var>
        <var class="atc_date_end">2016-06-07 20:00:00</var>
        <var class="atc_timezone">America/Los_Angeles</var>
        <var class="atc_title">suppressthis.org</var>
        <var class="atc_description">suppressthis.org &mdash; Your voting companion</var>
        <var class="atc_location">California</var>
        <var class="atc_organizer">suppressthis.org</var>
        <var class="atc_organizer_email">contact@suppressthis.org</var>
      </var>
    </span>
  </content>
  <style>
    spt-addtocalendar-dialog {
      margin-top: 100px;
    }
    spt-addtocalendar-dialog > content {
      display: block;
      overflow: hidden;
      min-height: 200px;
    }
    spt-addtocalendar-dialog > content > .addtocalendar {
      display: block;
    }
    spt-addtocalendar-dialog > content > .addtocalendar var {
      display: none;
    }
    spt-addtocalendar-dialog > content > .addtocalendar .atcb-link {
      display: none;
    }
    spt-addtocalendar-dialog > content > .addtocalendar .atcb-list {
      list-style-type: none;
    }
    spt-addtocalendar-dialog > content > .addtocalendar .atcb-list a {
      display: block;
      color: #ffffff;
      margin-top: 4px;
    }
    @media (max-width: 650px) {
      spt-addtocalendar-dialog {
        margin-top: 0;
      }
    }
  </style>
</spt-addtocalendar-dialog>