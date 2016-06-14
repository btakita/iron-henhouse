import {dialog__tag$mount as core__dialog__tag$mount} from "ctx-core/dialog/tag";
import {assign__route$dialog$map} from "dialog/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "ctx-core/dialog/tag";
export function dialog__tag$mount(tag) {
  log(`${logPrefix}|tag$mount`);
  core__dialog__tag$mount(tag);
  let ctx = tag.ctx;
  tag.on("mount", on$mount);
  return tag;
  function on$mount() {
    log(`${logPrefix}|tag$mount|on$mount`);
    assign__route$dialog$map(ctx);
  }
}