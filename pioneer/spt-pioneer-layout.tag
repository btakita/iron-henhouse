<spt-pioneer-layout class="page">
  <ctx ctx="{opts.ctx}"></ctx>
  <spt-pioneer-banner ctx="{opts.ctx}"></spt-pioneer-banner>
  <content>
    <yield/>
  </content>
  <spt-pioneer-dialog ctx="{opts.ctx}"></spt-pioneer-dialog>
  <style>
    spt-pioneer-layout > * {
      width: 100%;
    }
    spt-pioneer-layout > content > * {
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