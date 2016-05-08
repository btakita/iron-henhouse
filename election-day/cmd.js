import {assign} from "ctx-core/object/lib";
import {delegate$cmd$map__assign,cmd$security} from "ctx-core/cmd/lib";
import {log,debug} from "ctx-core/logger/lib";
import polling_station$$__demo from "./polling_station$$__demo.json";
const logPrefix = "ctx-core/election-day/cmd";
log(logPrefix);
delegate$cmd$map__assign({
  polling_station$$cmd: polling_station$$cmd
});
export
function *polling_station$$cmd() {
  log(`${logPrefix}|polling_station$$cmd`);
  return yield cmd$security(assign(...arguments), {
    ctx$key$whitelist: [
      "polling_station$$"
    ],
    security$web$request_required: [
    ],
    cmd$fn: polling_station$$cmd$fn
  });
}
function *polling_station$$cmd$fn(cmd$ctx) {
  log(`${logPrefix}|polling_station$$cmd$fn`);
  if (cmd$ctx.polling_station$$) return;
  return {polling_station$$: polling_station$$__demo};
}