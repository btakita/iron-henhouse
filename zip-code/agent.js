import {assign} from "ctx-core/object/lib";
import {assign__agent} from "ctx-core/agent/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "ctx-core/dialog/agent";
export function assign__zip_code_agent() {
  log(`${logPrefix}|assign__zip_code_agent`);
  let ctx = assign(...arguments);
  if (!ctx.zip_code_agent) init();
  return ctx;
  function init() {
    log(`${logPrefix}|assign__zip_code_agent|init`);
    assign__agent(ctx, {
      key$agent: "zip_code_agent",
      agent$keys: ["zip_code"]
    });
  }
}