import {
    assign
}
from "ctx-core/object/lib";
import {
    log, debug
}
from "ctx-core/logger/lib";
const logPrefix = "dialog/lib";
export

function assign__route$dialog$map(ctx) {
    log(`${logPrefix}|fn$route$dialog$map`);
    if (ctx.route$dialog$map) return ctx;
    assign(ctx, {
        route$dialog$map: {
            "spt-addtocalendar-dialog": {
                tag$name: "spt-addtocalendar-dialog",
                "title": "Add to Calendar"
            },
            "spt-check-registration-dialog": {
                tag$name: "spt-check-registration-dialog",
                title: "Check Your Voter Registration"
            },
            "spt-election-day-menu-dialog": {
                tag$name: "spt-election-day-menu-dialog"
            },
            "spt-early-voting-dialog": {
                tag$name: "spt-early-voting-dialog",
                title: "Early Voting"
            },
            "spt-early-voting-issue-dialog": {
                tag$name: "spt-early-voting-issue-dialog",
                title: "Get Help!"
            },
            "spt-zip-code-dialog": {
                tag$name: "spt-zip-code-dialog",
                title: "Where do you vote?"
            },
            "spt-i-voted-dialog": {
                tag$name: "spt-i-voted-dialog",
                title: "Please tell us about your voting experience:"
            }
        }
    });
    return ctx;
}