<spt-election-day show="{show}" class="page">
  <ctx ctx="{opts.ctx}"></ctx>
  <spt-election-day-banner ctx="{opts.ctx}"></spt-election-day-banner>
  <content>
    <spt-election-day-root show="{ctx.route$name__election_day_root}" ctx="{opts.ctx}"></spt-election-day-root>
    <vote-where show="{ctx.route$name__vote_where}" ctx="{opts.ctx}"></vote-where>
    <voting-issue show="{ctx.route$name__voting_issue}" ctx="{opts.ctx}"></voting-issue>
    <voting-issue-tile show="{ctx.voting_issue$tile}" ctx="{opts.ctx}"></voting-issue-tile>
    <footer id="footer">
      <ul class="icons">
        <li><a href="https://twitter.com/suppressthisCA" class="icon social-media-link fa-twitter"><span class="label">Twitter</span></a></li>
        <li><a href="https://www.facebook.com/SuppressThisCA/" class="icon social-media-link fa-facebook"><span class="label">Facebook</span></a></li>
      </ul>
    </footer>
  </content>
  <spt-election-day-dialog ctx="{opts.ctx}"></spt-election-day-dialog>
  <style>
    spt-election-day {
      display: block;
      font-family: 'Oswald', Helvetica-Neue, Helvetica, Arial, san-serif;
    }
    spt-election-day > content > footer {
      display: block;
    }
    spt-election-day > content > footer > .icons {
      font-size: 1.25em;
    }
    spt-election-day > content > footer > ul.icons {
      cursor: default;
      list-style: none;
      padding-left: 0;
    }
    spt-election-day > content > footer > ul.icons {
      display: inline-block;
      padding: 0 1em 0 0;
    }
    spt-election-day .icon:before {
      -moz-osx-font-smoothing: grayscale;
      -webkit-font-smoothing: antialiased;
      font-family: FontAwesome;
      font-style: normal;
      font-weight: normal;
      text-transform: none !important;
    }
    spt-election-day .social-media-link {
      display: none;
      heights: 100px;
      width: 100px;
    }
    spt-election-day .fa-twitter {
      background-position: -20px -800px;
    }
    spt-election-day .fa-facebook-f, spt-election-day .fa-facebook {
      background-position: -20px 0;
    }
    spt-election-day .fa-facebook-f:before, spt-election-day .fa-facebook:before {
      content: "\f09a";
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign__election_day$route$$} from "./route";
    import {assign__dialog$$_agent} from "ctx-core/dialog/agent";
    import {dialog__assign__ctx$update__defer} from "ctx-core/dialog/tag";
    import {assign__route$dialog$map} from "dialog/lib";
    import {localStorage$load} from "ctx-core/localStorage/lib";
    import {route} from "ctx-core/route/lib";
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
      dialog__assign__ctx$update__defer(tag);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-election-day>