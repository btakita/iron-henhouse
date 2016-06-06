import {assign__dialog$$_agent,assign__dialog_agent} from "ctx-core/dialog/agent";
import {assign__route$dialog$map} from "dialog/lib";
import {assign__route$fragment_agent} from "ctx-core/route/lib";
import riot from "riot";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "dialog/tag";
export function dialog__tag$mount(tag) {
  log(`${logPrefix}|tag$mount`);
  let ctx = tag.ctx;
  tag.on("mount", on$mount);
  tag.on("unmount", on$unmount);
  return tag;
  function on$mount() {
    log(`${logPrefix}|tag$mount|on$mount`);
    assign__route$dialog$map(ctx);
    assign__dialog$$_agent(ctx);
    assign__dialog_agent(ctx);
    assign__route$fragment_agent(ctx);
    ctx.route$fragment_agent.on("change", route$fragment_agent$refresh);
    ctx.dialog_agent.on("change", dialog_agent$on$change);
    route$fragment_agent$refresh();
  }
  function on$unmount() {
    log(`${logPrefix}|tag$mount|on$unmount`);
    ctx.route$fragment_agent.off("change", route$fragment_agent$refresh);
    ctx.dialog_agent.off("change", dialog_agent$on$change);
  }
  function route$fragment_agent$refresh() {
    log(`${logPrefix}|route$fragment_agent$refresh`);
    refresh_dialog();
    tag.assign__ctx$update();
  }
  function dialog_agent$on$change() {
    log(`${logPrefix}|dialog_agent$on$change`);
    if (!ctx.dialog) {
      riot.route("");
    }
  }
  function refresh_dialog() {
    log(`${logPrefix}|refresh_dialog`);
    const route$query$map = ctx.route$query$map
        , route$dialog = route$query$map && route$query$map.dialog
        , dialog = ctx.route$dialog$map[route$dialog]
        , dialog$tag$name = dialog && dialog.tag$name
        , dialog$$_agent = ctx.dialog$$_agent
        , ctx$dialog = ctx.dialog;
    if (ctx$dialog && (ctx$dialog.tag$name !== dialog$tag$name)) {
      dialog$$_agent.remove({dialog$$: ctx$dialog});
    }
    if (dialog && (dialog !== ctx$dialog)) {
      dialog$$_agent.push({
        dialog$$: dialog
      });
    }
    return ctx;
  }
}
export function dialog__assign__ctx$update__defer(tag) {
  log(`${logPrefix}|dialog__assign__ctx$update__defer`);
  setTimeout(() => {
    tag.show = true;
    tag.assign__ctx$update();
  }, 100); // TODO: Use events instead of hard-coded timeout
}