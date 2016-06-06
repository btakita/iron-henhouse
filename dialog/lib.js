import {assign} from "ctx-core/object/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "dialog/lib";
export function assign__route$dialog$map(ctx) {
  log(`${logPrefix}|fn$route$dialog$map`);
  if (ctx.route$dialog$map) return ctx;
  assign(ctx, {
    route$dialog$map: {
      addtocalendar: {
        tag$name: "spt-addtocalendar-dialog",
        "title": "Add to Calendar"
      },
      check_registration: {
        tag$name: "spt-check-registration-dialog",
        title: "Check Your Voter Registration"
      },
      early_voting: {
        tag$name: "spt-early-voting-dialog",
        title: "Early Voting"
      },
      early_voting_issue: {
        tag$name: "spt-early-voting-issue-dialog",
        title: "Get Help!"
      },
      zip_code: {
        tag$name: "spt-zip-code-dialog",
        title: "Zip Code"
      }
    }
  });
  return ctx;
}