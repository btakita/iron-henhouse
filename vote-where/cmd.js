import {assign} from "ctx-core/object/lib";
import {delegate$cmd$map__assign,cmd$api} from "ctx-core/cmd/lib";
import {log,debug} from "ctx-core/logger/lib";
import polling_station$$__demo from "./polling_station$$__demo.json";
const logPrefix = "ctx-core/vote-where/cmd";
log(logPrefix);
delegate$cmd$map__assign({
  polling_station$$cmd: polling_station$$cmd
});
export function *polling_station$$cmd() {
  log(`${logPrefix}|polling_station$$cmd`);
  return yield cmd$api(assign(...arguments), {
    cmd$key: "polling_station$$cmd",
    ctx$key$whitelist: [
      "polling_station$$"
    ],
    security$web$request_required: [
    ],
    cmd$fn: init
  });
  function *init(cmd$ctx) {
    log(`${logPrefix}|polling_station$$cmd|init`);
    if (cmd$ctx.polling_station$$) return;
    return {polling_station$$: polling_station$$__demo};
  }
}