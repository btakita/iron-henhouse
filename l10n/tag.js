import {assign} from "ctx-core/object/lib";
import {assign__l10n_agent} from "l10n/agent";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "l10n/tag";
export function l10n__tag$mount(tag) {
  log(`${logPrefix}|l10n__tag$mount`);
  let ctx = tag.ctx;
  tag.on("mount", on$mount);
  tag.on("unmount", on$unmount);
  return tag;
  function on$mount() {
    log(`${logPrefix}|l10n__tag$mount|on$mount`);
    assign__l10n_agent(ctx);
    ctx.l10n_agent.on("change", l10n_agent$on$change);
  }
  function on$unmount() {
    log(`${logPrefix}|l10n__tag$mount|on$unmount`);
    ctx.l10n_agent.off("change", l10n_agent$on$change);
  }
  function l10n_agent$on$change() {
    log(`${logPrefix}|l10n_agent$on$change`);
    tag.assign__ctx$update();
  }
}