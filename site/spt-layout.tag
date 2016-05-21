<spt-layout>
  <ctx ctx="{opts.ctx}">
    <ctx-size ctx="{opts.ctx}">
      <spt-top-navigation ctx="{opts.ctx}"></spt-top-navigation>
      <yield/>
      <spt-dialogs ctx="{opts.ctx}"></spt-dialogs>
    </ctx-size>
  </ctx>
  <style>
    spt-layout > ctx > ctx-size {
      display: flex;
      flex-direction: column;
      width: 100%;
      height: 100%;
    }
    spt-layout > ctx > ctx-size > * {
      flex: auto;
    }
    spt-layout > ctx > ctx-size > spt-top-navigation {
      flex: inherit;
    }
  </style>
  <script type="text/babel">
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign} from "ctx-core/object/lib";
    import {assign__ctx} from "./lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "site/spt-layout.tag";
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
</spt-layout>