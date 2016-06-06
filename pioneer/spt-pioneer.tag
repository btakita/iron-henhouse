<spt-pioneer class="page">
  <bernie-pioneer-root show="{ctx.route$name__pioneer_root}" ctx="{opts.ctx}"></bernie-pioneer-root>
  <vote-where show="{ctx.route$name__vote_where}" ctx="{opts.ctx}"></vote-where>
  <voting-issue show="{ctx.route$name__voting_issue}" ctx="{opts.ctx}"></voting-issue>
  <voting-issue-tile show="{ctx.voting_issue$tile}" ctx="{opts.ctx}"></voting-issue-tile>
  <style>
    spt-pioneer {
      display: block;
      overflow-y: auto;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {route__tag$mount} from "ctx-core/route/tag";
    import {assign__pioneer$route$$} from "./route";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "pioneer/spt-pioneer.tag";
    log(logPrefix);
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    route__tag$mount(tag, {
      assign__route$$fn: assign__pioneer$route$$
    });
    function on$mount() {
      log(`${logPrefix}|on$mount`);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-pioneer>