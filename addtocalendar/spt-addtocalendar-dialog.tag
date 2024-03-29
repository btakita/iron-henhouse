<spt-addtocalendar-dialog class="dialog">
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
    <loading>Loading&hellip;</loading>
  </content>
  <style>
    ctx-dialog.spt-addtocalendar-dialog > content {
      overflow: hidden;
      width: 20rem;
      margin-left: -10rem;
    }
    ctx-dialog.spt-addtocalendar-dialog spt-addtocalendar-dialog {
      display: block;
    }
    spt-addtocalendar-dialog > content > loading ~ spt-addtocalendar-dialog > content > loading {
      display: block;
    }
    .atcb-list ~ spt-addtocalendar-dialog > content > loading {
      display: none;
    }
    spt-addtocalendar-dialog {
      margin-top: 6rem;
    }
    spt-addtocalendar-dialog > content {
      position: relative;
      display: block;
      overflow: hidden;
      height: 10rem;
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
      height: 200%;
      margin: 0;
      padding: 0;
      list-style-type: none;
    }
    spt-addtocalendar-dialog > content > .addtocalendar .atcb-list a {
      line-height: 1.5em;
    }
    @media (max-width: 900px) {
      ctx-dialog.spt-addtocalendar-dialog > content {
        width: inherit;
        margin-left: inherit;
        height: inherit;
      }
      spt-addtocalendar-dialog {
        margin-top: inherit;
      }
      spt-addtocalendar-dialog > content {
        height: 11rem;
      }
    }
  </style>
</spt-addtocalendar-dialog>