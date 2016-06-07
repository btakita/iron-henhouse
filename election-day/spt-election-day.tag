<spt-election-day show="{show}" class="page">
  <ctx ctx="{opts.ctx}"></ctx>
  <spt-election-day-banner ctx="{opts.ctx}"></spt-election-day-banner>
  <content>
    <spt-election-day-root show="{ctx.route$name__election_day_root}" ctx="{opts.ctx}"></spt-election-day-root>
    <vote-where show="{ctx.route$name__vote_where}" ctx="{opts.ctx}"></vote-where>
    <voting-issue show="{ctx.route$name__voting_issue}" ctx="{opts.ctx}"></voting-issue>
    <voting-issue-tile show="{ctx.voting_issue$tile}" ctx="{opts.ctx}"></voting-issue-tile>
  </content>
  <spt-election-day-dialog ctx="{opts.ctx}"></spt-election-day-dialog>
  <style>
    spt-election-day {
      display: block;
      font-family: 'Oswald', Helvetica-Neue, Helvetica, Arial, san-serif;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign__election_day$route$$} from "./route";
    import {assign__dialog$$_agent} from "ctx-core/dialog/agent";
    import {assign__route$dialog$map} from "dialog/lib";
    import {dialog__assign__ctx$update__defer} from "dialog/tag";
    import {localStorage$load} from "ctx-core/localStorage/lib";
    import {route__tag$mount} from "ctx-core/route/tag";
    import {zip_code__tag$mount} from "zip-code/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "election-day/spt-election-day.tag";
    log(logPrefix);
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    route__tag$mount(tag, {
      assign__route$$fn: assign__election_day$route$$});
    zip_code__tag$mount(tag);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = tag.ctx;
      assign(ctx, localStorage$load());
      assign__route$dialog$map(ctx);
      assign__dialog$$_agent(ctx);
      const dialog = ctx.dialog
          , zip_code = ctx.zip_code;
      if (!dialog && !zip_code) {
        ctx.dialog$$_agent.push({
          dialog$$: ctx.route$dialog$map["zip_code"]
        });
      }
      dialog__assign__ctx$update__defer(tag);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-election-day>