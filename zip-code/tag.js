import {assign} from "ctx-core/object/lib";
import {assign__zip_code_agent} from "zip-code/agent";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "zip_code/tag";
export function zip_code__tag$mount(tag) {
  log(`${logPrefix}|zip_code__tag$mount`);
  let ctx = tag.ctx;
  tag.on("mount", on$mount);
  tag.on("unmount", on$unmount);
  return tag;
  function on$mount() {
    log(`${logPrefix}|zip_code__tag$mount|on$mount`);
    assign__zip_code_agent(ctx);
    ctx.zip_code_agent.on("change", zip_code_agent$on$change);
  }
  function on$unmount() {
    log(`${logPrefix}|zip_code__tag$mount|on$unmount`);
    ctx.zip_code_agent.off("change", zip_code_agent$on$change);
  }
  function zip_code_agent$on$change() {
    log(`${logPrefix}|zip_code_agent$on$change`);
    tag.assign__ctx$update();
  }
}