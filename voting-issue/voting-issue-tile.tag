<voting-issue-tile>
  <h1>{ctx.l10n[ctx.voting_issue$key].title}</h1>
  <tabs>
    <a
      href="voting-issue/{ctx.voting_issue$route$path}/your-rights"
      class="{selected: ctx.route$name__voting_issue$your_rights}"
      onclick="{link$onclick}">{ctx.l10n.your_rights}</a>
    <a
      href="voting-issue/{ctx.voting_issue$route$path}/video"
      class="{selected: ctx.route$name__voting_issue$video}"
      onclick="{link$onclick}">{ctx.l10n.video}</a>
    <a
      href="voting-issue/{ctx.voting_issue$route$path}/help"
      class="{selected: ctx.route$name__voting_issue$help}"
      onclick="{link$onclick}">{ctx.l10n.help}</a>
  </tabs>
  <content>
    <voting-issue-campaigning-within-100-feet show="{ctx.route$name__voting_issue$campaigning_within_100_feet}" ctx="{opts.ctx}"></voting-issue-campaigning-within-100-feet>
    <voting-issue-no-ballots show="{ctx.route$name__voting_issue$no_ballots}" ctx="{opts.ctx}"></voting-issue-no-ballots>
    <voting-issue-no-evidence-of-registration show="{ctx.route$name__voting_issue$no_evidence_of_registration}" ctx="{opts.ctx}"></voting-issue-no-evidence-of-registration>
    <voting-issue-polling-station-closed show="{ctx.route$name__voting_issue$polling_station_closed}" ctx="{opts.ctx}"></voting-issue-polling-station-closed>
    <voting-issue-sending-voters-away show="{ctx.route$name__voting_issue$sending_voters_away}" ctx="{opts.ctx}"></voting-issue-sending-voters-away>
    <voting-issue-wrong-ballots show="{ctx.route$name__voting_issue$wrong_ballots}" ctx="{opts.ctx}"></voting-issue-wrong-ballots>
    <voting-issue-wrong-location show="{ctx.route$name__voting_issue$wrong_location}" ctx="{opts.ctx}"></voting-issue-wrong-location>
    <voting-issue-wrong-party-registration show="{ctx.route$name__voting_issue$wrong_party_registration}" ctx="{opts.ctx}"></voting-issue-wrong-party-registration>
    <voting-issue-help ctx="{opts.ctx}" show="{ctx.route$name__voting_issue$help}">
      <p>{ctx.l10n[ctx.voting_issue$key].title} &mdash; Help</p>
    </voting-issue-help>
  </content>
  <style>
    voting-issue-tile {
      display: block;
      overflow: hidden;
    }
    voting-issue-tile > * {
      display: block;
    }
    voting-issue-tile > h1 {
      color: #087ED7;
    }
    voting-issue-tile > tabs {
      display: flex;
      border-bottom: 2px solid #C2C2C2;
    }
    voting-issue-tile > tabs > a {
      width: 33%;
      border-bottom: 3px solid transparent;
    }
    voting-issue-tile > tabs > a:last-child {
      width: auto;
      flex: auto;
    }
    voting-issue-tile > tabs > a.selected {
      border-bottom-color: #087ED7;
    }
    voting-issue-tile > content {
      display: block;
    }
    voting-issue-tile > content > * {
      display: block;
    }
    voting-issue-tile > content > * > * {
      display: block;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "voting-issue/voting-issue-tile.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    l10n__tag$mount(tag);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</voting-issue-tile>