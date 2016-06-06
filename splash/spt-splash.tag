<spt-splash show="{show}">
  <ctx ctx="{opts.ctx}"></ctx>
  <spt-schedule-banner ctx="{opts.ctx}"></spt-schedule-banner>
  <content>
    <spt-splash-root show="{ctx.route$name__splash_root}" ctx="{opts.ctx}"></spt-splash-root>
  </content>
  <spt-splash-dialog ctx="{opts.ctx}"></spt-splash-dialog>
  <style>
    spt-splash {
      position: fixed;
      display: block;
      height: 100%;
      width: 100%;
      overflow: hidden;
    }
    spt-splash a {
      color: #FFFFFF;
    }
    spt-splash > spt-schedule-banner {
      height: 2.8rem;
    }
    spt-splash > content {
      display: block;
      overflow-y: auto;
      height: calc(100% - 3em);
    }
    @media (max-width: 900px) {
      spt-splash > spt-schedule-banner {
        height: 4rem;
      }
      spt-splash > content {
        height: calc(100% - 4rem);
      }
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
      setTimeout(() => {
        tag.show = true;
        tag.assign__ctx$update();
      }, 100); // TODO: Use events instead of hard-coded timeout
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