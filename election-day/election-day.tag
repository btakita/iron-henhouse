<election-day>
  <bernie-election-day-root ctx="{opts.ctx}"></bernie-election-day-root>
  <style>
    election-day {
      overflow-x: hidden;
      overflow-y: auto;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import riot from "riot";
    import {assign__election_day$route$$} from "./route";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "quovo_demo/quovo-demo.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = tag.ctx;
      assign__election_day$route$$(ctx);
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
</election-day>