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
export function assign__polling_station$id_agent() {
  log(`${logPrefix}|assign__polling_station$id_agent`);
  let ctx = assign(...arguments);
  if (!ctx.polling_station$id_agent) assign__polling_station$id_agent$();
  return ctx;
  function assign__polling_station$id_agent$() {
    log(`${logPrefix}|assign__polling_station$id_agent|assign__polling_station$id_agent$`);
    assign__agent(ctx, {
      key$agent: "polling_station$id_agent",
      agent$keys: ["polling_station$id"]
    });
  }
}
export function assign__polling_station_agent() {
  log(`${logPrefix}|assign__polling_station_agent`);
  let ctx = assign(...arguments);
  if (!ctx.polling_station_agent) assign__polling_station_agent$();
  return ctx;
  function assign__polling_station_agent$() {
    log(`${logPrefix}|assign__polling_station_agent|assign__polling_station_agent$`);
    assign__polling_station$$_agent(ctx);
    assign__polling_station$id_agent(ctx);
    assign__agent(ctx, {
      key$agent: "polling_station_agent",
      agent$keys: ["polling_station"]
    });
    ctx.polling_station$$_agent.on("change", polling_station$$_agent$on$change);
    ctx.polling_station$id_agent.on("change", polling_station$id_agent$on$change);
  }
  function polling_station$$_agent$on$change() {
    log(`${logPrefix}|assign__polling_station_agent|polling_station$$_agent$on$change`);
    polling_station_agent$set();
  }
  function polling_station$id_agent$on$change() {
    log(`${logPrefix}|assign__polling_station_agent|polling_station$id_agent$on$change`);
    polling_station_agent$set();
  }
  function polling_station_agent$set() {
    log(`${logPrefix}|polling_station_agent$set`);
    const polling_station_agent = ctx.polling_station_agent
        , polling_station$$ = ctx.polling_station$$
        , polling_station$id = ctx.polling_station$id;
    if (polling_station$$ && polling_station$id) {
      polling_station_agent.set({
        polling_station: polling_station$$.find(
          polling_station =>
            polling_station.id === polling_station$id)});
    } else {
      polling_station_agent.set(null);
    }
  }
}