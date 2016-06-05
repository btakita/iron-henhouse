import {assign} from "ctx-core/object/lib";
import {assign__dialog$$_agent} from "ctx-core/dialog/agent";
import {fn$tag as tag$lib__fn$tag} from "ctx-core/tag/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "site/lib";
export function assign__ctx(ctx) {
  log(`${logPrefix}|assign__ctx`);
  assign__dialog$$_agent(ctx);
  return ctx;
}