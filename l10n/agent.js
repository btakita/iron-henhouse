import {assign,clone} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {assign__agent,assign__http_agent,agent$lib$ctx__refresh$ctx$fn} from "ctx-core/agent/lib";
import co from "co";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "site/agent";
export function assign__l10n_agent() {
  log(`${logPrefix}|assign__l10n_agent`);
  let ctx = assign(...arguments);
  if (!ctx.l10n_agent) {
    log(`${logPrefix}|assign__l10n_agent|assign`);
    assign__http_agent(ctx, {
      key$agent: "l10n_agent",
      agent$keys: ["l10n"],
      fn$http$request$ctx: fn$http$request$ctx,
      fn$http$response$value: fn$http$response$value,
      refresh$ctx$fn: agent$lib$ctx__refresh$ctx$fn
    });
  }
  return ctx;
  function fn$http$request$ctx() {
    log(`${logPrefix}|assign__l10n_agent|fn$http$request$ctx`);
    return {
      method: "GET",
      path: "/l10n/en"
    };
  }
  function *fn$http$response$value(response$ctx) {
    log(`${logPrefix}|assign__l10n_agent|fn$http$response$value`);
    const response$ctx$text = yield response$ctx.response.text();
    return JSON.parse(response$ctx$text);
  }
}