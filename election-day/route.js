import {assign,clone} from "ctx-core/object/lib";
import {error$throw} from "ctx-core/error/lib";
import {fn$route as route$lib__fn$route,assign__route$$} from "ctx-core/route/lib";
import {agent$$trigger$change} from "ctx-core/agent/lib";
import riot from "riot";
import co from "co";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "quovo_demo/route";
export function assign__election_day$route$$() {
  log(`${logPrefix}|assign__election_day$route$$`);
  let ctx = assign(...arguments);
  return assign__route$$(
    ctx,
    fn$route(ctx, {path: "", route$name: "election_day_root"}),
    fn$route(ctx, {path: "vote-where", route$name: "vote_where"}),
    fn$route(ctx, {path: "voting-issue", route$name: "voting_issue"}),
    fn$route(ctx, {path: "voting-issue/no-ballots", route$name: "voting_issue_no_ballots"}),
    fn$route(ctx, {path: "voting-issue/wrong-ballots", route$name: "voting_issue_wrong_ballots"}),
    fn$route(ctx, {path: "voting-issue/no-evidence-of-registration", route$name: "voting_issue_no_evidence_of_registration"}),
    fn$route(ctx, {path: "voting-issue/wrong-party-registration", route$name: "voting_issue_wrong_party_registration"}),
    fn$route(ctx, {path: "voting-issue/campaigning-within-100-feet", route$name: "voting_issue_campaigning_within_100_feet"}),
    fn$route(ctx, {path: "voting-issue/polling-station-closed", route$name: "voting_issue_polling_station_closed"}),
    fn$route(ctx, {path: "voting-issue/sending-voters-away", route$name: "voting_issue_sending_voters_away"}),
    fn$route(ctx, {path: "voting-issue/wrong-location", route$name: "voting_issue_wrong_location"}),
    fn$route(ctx, {path: "polling_stations", route$name: "polling_station$$"}),
    fn$route(ctx, {path: "polling_stations/*", route$name: "polling_station", fn: fn$route$polling_station(ctx)})
  );
}
function fn$route$polling_station(ctx) {
  log(`${logPrefix}|fn$route$polling_station`);
  return (route$ctx, polling_station$id) => {
    log(`${logPrefix}|fn$route$polling_station|route`, polling_station$id);
    route$ctx.polling_station$id = polling_station$id || null;
  }
}
function fn$route(ctx, ...ctx$rest$$) {
  log(`${logPrefix}|fn$route`);
  route$lib__fn$route(ctx, {fn$ctx: fn$ctx}, ...ctx$rest$$);
}
function fn$ctx() {
  log(`${logPrefix}|fn$ctx`);
  return assign({
    route$name__election_day_root: null,
    route$name__vote_where: null,
    route$name__voting_issue: null,
    route$name__voting_issue_no_ballots: null,
    route$name__voting_issue_wrong_ballots: null,
    route$name__voting_issue_no_evidence_of_registration: null,
    route$name__voting_issue_wrong_party_registration: null,
    route$name__voting_issue_campaigning_within_100_feet: null,
    route$name__voting_issue_polling_station_closed: null,
    route$name__voting_issue_sending_voters_away: null,
    route$name__voting_issue_wrong_location: null,
    route$name__polling_station$$: null,
    route$name__polling_station: null,
    polling_station$id: null
  }, ...arguments);
}