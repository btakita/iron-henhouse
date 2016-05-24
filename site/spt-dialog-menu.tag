<spt-dialog-menu class="dialog">
  <content>
    <a href="vote-where" onclick="{a$onclick}">Where do I vote?</a>
    <a href="voting-issue" onclick="{a$onclick}">I have a voting problem!</a>
  </content>
  <style>
    spt-dialog-menu > content {
      display: block;
      padding-top: 12px;
    }
    spt-dialog-menu > content > a {
      display: block;
      padding: 12px 0;
      text-decoration: none;
      font-size: 18px;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {a$onclick: a$onclick})
        , logPrefix = "site/spt-dialog-menu.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
    function a$onclick(e) {
      log(`${logPrefix}|a$onclick`);
      link$onclick(e);
      const ctx = self.ctx;
      ctx.dialog_agent.remove();
    }
  </script>
</spt-dialog-menu>