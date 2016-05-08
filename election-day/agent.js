import {assign,clone} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {assign__agent,assign__agent_cmd} from "ctx-core/agent/lib";
import co from "co";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "election-day/agent";
export function assign__polling_station$$_agent() {
  log(`${logPrefix}|assign__polling_station$$_agent`);
  let ctx = assign(...arguments);
  if (!ctx.polling_station$$_agent) assign__polling_station$$_agent$();
  return ctx;
  function assign__polling_station$$_agent$() {
    log(`${logPrefix}|assign__polling_station$$_agent|assign__polling_station$$_agent$`);
    assign__agent__election_day$cmd(ctx, {
      key$agent: "polling_station$$_agent",
      agent$keys: ["polling_station$$"],
      cmd: ["polling_station$$cmd"]
    });
  }
}
export function assign__agent__election_day$cmd(ctx, ...ctx$rest$$) {
  log(`${logPrefix}|assign__agent__election_day$cmd`);
  assign__agent_cmd(ctx, {
    fn$cmd$ctx: fn$cmd$ctx
  }, ...ctx$rest$$);
  return ctx;
  function fn$cmd$ctx(fn$cmd$ctx$ctx, ...fn$cmd$ctx$ctx$rest$$) {
    log(`${logPrefix}|assign__agent__election_day$cmd|fn$cmd$ctx`);
    return assign(fn$cmd$ctx$ctx, {
      zip: ctx.zip
    }, ...fn$cmd$ctx$ctx$rest$$);
  }
}