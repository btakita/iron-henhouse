<spt-election-day class="page">
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
    import riot from "riot";
    import {assign__election_day$route$$} from "./route";
    import {assign__route$dialog$map} from "dialog/lib";
    import {zip_code__tag$mount} from "zip-code/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "pioneer/spt-pioneer.tag";
    log(logPrefix);
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    zip_code__tag$mount(tag);
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
</spt-election-day>