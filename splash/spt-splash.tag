<spt-splash show="{show}" class="page">
  <ctx ctx="{opts.ctx}"></ctx>
  <spt-splash-banner ctx="{opts.ctx}"></spt-splash-banner>
  <content>
    <spt-splash-root show="{ctx.route$name__splash_root}" ctx="{opts.ctx}"></spt-splash-root>
  </content>
  <spt-splash-dialog ctx="{opts.ctx}"></spt-splash-dialog>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {route__tag$mount} from "ctx-core/route/tag";
    import {assign__splash$route$$} from "./route";
    import {dialog__assign__ctx$update__defer} from "dialog/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "splash/spt-splash.tag";
    log(logPrefix);
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    route__tag$mount(tag, {
      assign__route$$fn: assign__splash$route$$
    });
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      dialog__assign__ctx$update__defer(tag);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-splash>