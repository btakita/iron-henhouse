<spt-banner>
  <yield/>
  <style>
    spt-banner {
      display: block;
      position: relative;
      overflow: hidden;
      height: 2.8rem;
      padding: 0.4rem 0 0;
      color: #000000;
      background: #FDD102;
      border-top: 1px solid #FFFFFF;
      border-bottom: 1px solid #FFFFFF;
      text-transform: uppercase;
      text-align: center;
    }
    spt-banner a, spt-banner a:visited, spt-banner a:hover, spt-banner a:active {
      color: #000000;
    }
    spt-banner > p {
      display: block;
      margin: 0;
      padding: 0;
      line-height: 1.6em;
    }
    spt-banner > p > a {
      position: relative;
      top: 4px;
      overflow: hidden;
    }
    spt-banner > p > a > img {
      display: inline-block;
      height: 1.3em;
      width: 1.3em;
    }
    @media (max-width: 900px) {
      spt-banner {
        height: 4rem;
        padding: 0.6rem 0 0;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "splash/spt-banner.tag";
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
</spt-banner>