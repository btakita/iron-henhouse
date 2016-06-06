<spt-schedule-banner>
  <p>
    Return here on June 7
    (<a href="?addtocalendar=1" onclick="{link$onclick}"><img src="/cal-red-04.png"/></a>)
    for Election Information and Voter Alerts
  </p>
  <style>
    spt-schedule-banner {
      display: block;
      overflow: hidden;
      color: #000000;
      background: #FDD102;
      border-top: 1px solid #FFFFFF;
      border-bottom: 1px solid #FFFFFF;
      text-transform: uppercase;
      text-align: center;
      padding: 0.4rem 0 0;
    }
    spt-schedule-banner > p {
      display: block;
      margin: 0;
      padding: 0;
    }
    spt-schedule-banner > p > a {
      position: relative;
      top: 4px;
      overflow: hidden;
    }
    spt-schedule-banner > p > a > img {
      display: inline-block;
      height: 1.3em;
      width: 1.3em;
    }
    @media (max-width: 900px) {
      spt-schedule-banner {
        padding: 0.6rem 0 0;
      }
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