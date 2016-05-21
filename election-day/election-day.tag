<election-day>
  <bernie-election-day-root show="{ctx.route$name__election_day_root}" ctx="{opts.ctx}"></bernie-election-day-root>
  <vote-where show="{ctx.route$name__vote_where}" ctx="{opts.ctx}"></vote-where>
  <voting-issue show="{ctx.route$name__voting_issue}" ctx="{opts.ctx}"></voting-issue>
  <voting-issue-no-ballots show="{ctx.route$name__voting_issue_no_ballots}" ctx="{opts.ctx}"></voting-issue-no-ballots>
  <voting-issue-wrong-ballots show="{ctx.route$name__voting_issue_wrong_ballots}" ctx="{opts.ctx}"></voting-issue-wrong-ballots>
  <voting-issue-no-evidence-of-registration show="{ctx.route$name__voting_issue_no_evidence_of_registration}" ctx="{opts.ctx}"></voting-issue-no-evidence-of-registration>
  <voting-issue-wrong-party-registration show="{ctx.route$name__voting_issue_wrong_party_registration}" ctx="{opts.ctx}"></voting-issue-wrong-party-registration>
  <voting-issue-campaigning-within-100-feet show="{ctx.route$name__voting_issue_campaigning_within_100_feet}" ctx="{opts.ctx}"></voting-issue-campaigning-within-100-feet>
  <voting-issue-polling-station-closed show="{ctx.route$name__voting_issue_polling_station_closed}" ctx="{opts.ctx}"></voting-issue-polling-station-closed>
  <voting-issue-sending-voters-away show="{ctx.route$name__voting_issue_sending_voters_away}" ctx="{opts.ctx}"></voting-issue-sending-voters-away>
  <voting-issue-wrong-location show="{ctx.route$name__voting_issue_wrong_location}" ctx="{opts.ctx}"></voting-issue-wrong-location>
  <style>
    election-day {
      overflow-x: hidden;
      overflow-y: auto;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import riot from "riot";
    import {assign__election_day$route$$} from "./route";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "election-day/election-day.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = tag.ctx;
      assign__election_day$route$$(ctx);
      ctx.route$name_agent.on("change", route$name_agent$on$change);
      riot.route.exec();
      tag.assign__ctx$update();
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      const ctx = tag.ctx;
      ctx.route$name_agent.on("change", route$name_agent$on$change);
      riot.route.stop();
    }
    function route$name_agent$on$change() {
      log(`${logPrefix}|route$name_agent$on$change`);
      tag.assign__ctx$update();
    }
  </script>
</election-day>