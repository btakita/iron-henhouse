import {assign} from "ctx-core/object/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "voting-issue/lib";
export function assign__voting_issue$$() {
  log(`${logPrefix}|assign__voting_issue$$`);
  let ctx = assign(...arguments);
  if (ctx.voting_issue$$) return ctx;
  return assign(ctx, {
    voting_issue$$: [
      "no_ballots",
      "long_lines",
      "no_party_preference",
      "provisional_ballot",
      "not_allowed_to_vote",
      "incorrect_party",
      "electioneering",
      "inadequate_disability_access"
    ]
  });
}