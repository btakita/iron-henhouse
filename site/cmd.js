import {assign} from "ctx-core/object/lib";
import {delegate$cmd$map__assign,cmd$api} from "ctx-core/cmd/lib";
import {error$throw} from "ctx-core/error/lib";
import l10n$en from "./l10n.en.json";
import fs from "co-fs";
import path from "path";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "site/cmd";
let module$ctx = {zip_codes$ca: null};
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
    cmd$fn: cmd$fn
  });
  function *cmd$fn(cmd$ctx) {
    log(`${logPrefix}|l10n_cmd|cmd$fn`);
    if (cmd$ctx.l10n) return;
    let ctx = {};
    assign(ctx, l10n$en);
    return ctx;
  }
}
export function *zip_code$ca_cmd() {
  log(`${logPrefix}|zip_code$ca_cmd`);
  return yield cmd$api(assign(...arguments), {
    cmd$key: "zip_code$ca_cmd",
    ctx$key$whitelist: [
      "zip_code"
    ],
    security$web$request_required: [
      "zip_code"
    ],
    cmd$fn: cmd$fn
  });
  function *cmd$fn(cmd$ctx) {
    log(`${logPrefix}|zip_code$ca_cmd|cmd$fn`);
    let ctx = {};
    const zip_code = cmd$ctx.zip_code;
    if (!zip_code) error$throw(cmd$ctx, {
      http$status: 400,
      error$message: "zip_code required",
      http$error$message: "zip_code required"
    });
    const zip_codes$ca = fn$zip_codes$ca()
        , zip_code$ca = zip_codes$ca[zip_code];
    assign(ctx, {
      zip_code$ca: zip_code$ca
    });
    return ctx;
  }
}
function *fn$zip_codes$ca() {
  log(`${logPrefix}|fn$zip_codes$ca`);
  if (!module$ctx.zip_codes$ca) {
    const tsv = yield fs.readFile(path.join(__dirname, "zip-codes.tsv"));
    module$ctx.zip_codes$ca = tsv.split("\n").reduce((memo, line) => {
      const row = line.split("|");
      memo[row[0]] = {zip_code: row[0], zip_code$description: row[1]};
      return memo;
    }, {});
  }
  return module$ctx.zip_codes$ca;
}