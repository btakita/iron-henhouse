import {assign} from "ctx-core/object/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "state/lib";
export function assign__out_of_state$url$map(ctx) {
  log(`${logPrefix}|assign__out_of_state$url$map`);
  if (ctx.out_of_state$url$map) return ctx;
  assign(ctx, {
    out_of_state$url$map: {
      IA: `http://www.aclu-ia.org/know-your-voting-rights/?${ctx.ref$query}`,
      MT: `http://vote-mt.org/?${ctx.ref$query}`,
      ND: `http://www.866ourvote.org/state/nd?${ctx.ref$query}`,
      NJ: `http://vote-nj.org/?${ctx.ref$query}`,
      NM: `http://www.lwvnm.org/information.html?${ctx.ref$query}`,
      SD: `http://www.866ourvote.org/state/sd?${ctx.ref$query}`,
      __default:  `https://www.vote.org?${ctx.ref$query}`
    }
  });
  return ctx;
}