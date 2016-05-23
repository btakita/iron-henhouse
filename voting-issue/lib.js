import {assign} from "ctx-core/object/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "voting-issue/lib";
export function assign__voting_issue$$map() {
  log(`${logPrefix}|assign__voting_issue$$map`);
  let ctx = assign(...arguments);
  if (ctx.voting_issue$$map) return ctx;
  return assign(ctx, {
    voting_issue$$map: {
      no_ballots: {
        title: "No ballots available"
      },
      wrong_ballots: {
        title: "Wrong ballots available"
      },
      no_evidence_of_registration: {
        title: "No evidence of registration"
      },
      wrong_party_registration: {
        title: "Wrong party registration"
      },
      campaigning_within_100_feet: {
        title: "Campaigning within 100 feet"
      },
      polling_station_closed: {
        title: "Polling place closed"
      },
      sending_voters_away: {
        title: "Sending voters away"
      },
      wrong_location: {
        title: "Wrong location"
      }
    }
  });
}