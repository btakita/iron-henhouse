<spt-election-day show="{show}" class="page">
  <ctx ctx="{opts.ctx}"></ctx>
  <spt-election-day-banner ctx="{opts.ctx}"></spt-election-day-banner>
  <navigation>
    <a href="/?dialog=early_voting" onclick="{link$onclick}">Early Voting</a>
    <a href="/?dialog=early_voting_issue" onclick="{link$onclick}">Early Issue Voting</a>
    <a href="/?dialog=check_registration" onclick="{link$onclick}">Check Registration</a>
    <a href="/?dialog=zip_code" onclick="{link$onclick}">
      Zip Code
      <span show="{ctx.zip_code}">({ctx.zip_code})</span>
    </a>
  </navigation>
  <spt-election-day-dialog ctx="{opts.ctx}"></spt-election-day-dialog>
  <style>
    spt-election-day {
      display: block;
    }
    spt-election-day > navigation {
      display: block;
      overflow: hidden;
      margin-top: 2rem;
    }
    spt-election-day > navigation > * {
      display: block;
      overflow: hidden;
      margin: 0.2em 0;
      text-align: center;
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
        , logPrefix = "pioneer/spt-pioneer.tag";
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