<spt-pioneer-layout>
  <ctx ctx="{opts.ctx}"></ctx>
  <spt-top-navigation ctx="{opts.ctx}"></spt-top-navigation>
  <content>
    <yield/>
  </content>
  <spt-pioneer-dialog ctx="{opts.ctx}"></spt-pioneer-dialog>
  <style>
    spt-pioneer-layout {
      display: flex;
      flex-direction: column;
      align-items: center;
      width: 100%;
      height: 100%;
    }
    spt-pioneer-layout > * {
      width: 100%;
    }
    spt-pioneer-layout > spt-top-navigation {
      flex: none;
    }
    spt-pioneer-layout > content {
      display: flex;
      flex: auto;
      text-align: center;
      overflow-x: hidden;
      overflow-y: auto;
    }
    spt-pioneer-layout > content > * {
      flex: auto;
      width: 100%;
    }
  </style>
  <script type="text/babel">
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign} from "ctx-core/object/lib";
    import {assign__ctx} from "site/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "pioneer/spt-pioneer-layout.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      assign__ctx(tag.ctx);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-pioneer-layout>