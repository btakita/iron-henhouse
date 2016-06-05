import {assign} from "ctx-core/object/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "html/lib";
export function fn$riot$mount$ctx(ctx, ...riot$mount$ctx$$) {
  log(`${logPrefix}|fn$riot$mount$ctx`);
  let riot$mount$ctx = assign({}, {
    ctx: {
      authentication: ctx.authentication,
      spt__hotline$phone_number: "18002498683",
      ref$query: "ref=suppressthis.org"
    }
  }, ...riot$mount$ctx$$);
  return riot$mount$ctx;
}