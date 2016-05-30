<spt-top-navigation>
  <content>
    <a href="tel:{ctx.spt__hotline$phone_number}" class="call-us">
      Call us! 1-800-CHX-VOTE
    </a>
  </content>
  <a href="#" class="menu" onclick="{menu$onclick}">&equiv;</a>
  <style>
    spt-top-navigation {
      position: relative;
      display: flex;
      border: 1px dotted #111111;
      background: #F9F9F9;
      height: 2.5em;
      line-height: 2.5em;
    }
    spt-top-navigation > content {
      flex: auto;
      text-align: center;
    }
    spt-top-navigation > content > a {
      color: #111111;
    }
    spt-top-navigation > .menu {
      position: absolute;
      right: 0;
      margin: 0;
      padding: 0 20px;
      font-size: 24px;
      font-weight: bold;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign__dialog$$_agent} from "ctx-core/dialog/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {
              menu$onclick: menu$onclick
            })
        , logPrefix = "site/spt-top-navigation.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      assign__dialog$$_agent(self.ctx);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
    function menu$onclick(e) {
      log(`${logPrefix}|menu$onclick`);
      e.preventDefault();
      self.ctx.dialog$$_agent.push({
        dialog$$: {
          tag$name: "spt-dialog-menu",
          title: "Menu"
        }
      });
    }
  </script>
</spt-top-navigation>