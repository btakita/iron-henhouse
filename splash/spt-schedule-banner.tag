<spt-schedule-banner>
  <p>
    Return here on June 7 for Election Information and Voter Alerts &mdash;
    <a href="?addtocalendar=1" onclick="{link$onclick}">Add to Calendar</a>
  </p>
  <style>
    spt-schedule-banner {
      display: block;
      color: #000000;
      background: #FDD102;
      border-top: 1px solid #FFFFFF;
      border-bottom: 1px solid #FFFFFF;
      text-transform: uppercase;
      text-align: center;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {link$onclick: link$onclick})
        , logPrefix = "splash/spt-schedule-banner.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-schedule-banner>