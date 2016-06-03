<spt-splash>
  <spt-schedule-banner ctx="{opts.ctx}"></spt-schedule-banner>
  <content>
    <spt-splash-root show="{ctx.route$name__splash_root}" ctx="{opts.ctx}"></spt-splash-root>
    <spt-early-voting show="{ctx.route$name__early_voting}" ctx="{opts.ctx}"></spt-early-voting>
  </content>
  <style>
    spt-splash {
      position: relative;
      display: flex;
      flex-direction: column;
      width: 100%;
      height: 100%;
      align-items: center;
    }
    spt-splash > spt-schedule-banner {
      position: relative;
      width: 100%;
      flex: 1;
      flex-grow: 0;
      height: 3em;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import riot from "riot";
    import {assign__splash$route$$} from "./route";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "splash/spt-splash.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = tag.ctx;
      assign__splash$route$$(ctx);
      ctx.route$name_agent.on("change", route$name_agent$on$change);
      riot.route.exec();
      tag.assign__ctx$update();
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      const ctx = tag.ctx;
      ctx.route$name_agent.on("change", route$name_agent$on$change);
      riot.route.stop();
    }
    function route$name_agent$on$change() {
      log(`${logPrefix}|route$name_agent$on$change`);
      tag.assign__ctx$update();
    }
  </script>
</spt-splash>