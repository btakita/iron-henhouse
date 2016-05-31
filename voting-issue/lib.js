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
      "wrong_ballots",
      "no_evidence_of_registration",
      "wrong_party_registration",
      "campaigning_within_100_feet",
      "polling_station_closed",
      "sending_voters_away",
      "wrong_location"
    ]
  });
}