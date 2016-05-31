import {assign} from "ctx-core/object/lib";
import {delegate$cmd$map__assign,cmd$api} from "ctx-core/cmd/lib";
import l10n$en from "./l10n.en.json";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "site/cmd";
log(logPrefix);
delegate$cmd$map__assign({
  l10n_cmd: l10n_cmd
});
export function *l10n_cmd() {
  log(`${logPrefix}|l10n_cmd`);
  return yield cmd$api(assign(...arguments), {
    cmd$key: "l10n_cmd",
    ctx$key$whitelist: [
      "voting_issue$locale",
      "l10n"
    ],
    security$web$request_required: [
    ],
    cmd$fn: init
  });
  function *init(cmd$ctx) {
    log(`${logPrefix}|l10n_cmd|init`);
    if (cmd$ctx.l10n) return;
    let ctx = {};
    assign(ctx, l10n$en);
    return ctx;
  }
}