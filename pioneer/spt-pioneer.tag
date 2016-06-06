<spt-pioneer>
  <bernie-pioneer-root show="{ctx.route$name__election_day_root}" ctx="{opts.ctx}"></bernie-pioneer-root>
  <vote-where show="{ctx.route$name__vote_where}" ctx="{opts.ctx}"></vote-where>
  <voting-issue show="{ctx.route$name__voting_issue}" ctx="{opts.ctx}"></voting-issue>
  <voting-issue-tile show="{ctx.voting_issue$tile}" ctx="{opts.ctx}"></voting-issue-tile>
  <style>
    spt-pioneer {
      display: block;
      overflow-y: auto;
      background: #FFFFFF;
      color: #000000;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import riot from "riot";
    import {assign__election_day$route$$} from "./route";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "pioneer/spt-pioneer.tag";
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
</spt-pioneer>