import {assign,clone} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {assign__agent,assign__cmd_agent} from "ctx-core/agent/lib";
import co from "co";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "site/agent";
export function assign__l10n_agent() {
  log(`${logPrefix}|assign__l10n_agent`);
  let ctx = assign(...arguments);
  if (!ctx.l10n_agent) {
    log(`${logPrefix}|assign__l10n_agent|assign`);
    assign__cmd_agent(ctx, {
      key$agent: "l10n_agent",
      agent$keys: ["l10n"],
      cmd: ["l10n_cmd"]
    });
  }
  return ctx;
}