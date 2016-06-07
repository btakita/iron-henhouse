<voting-issue-tile>
  <h1>{ctx.l10n[ctx.voting_issue$key].title}</h1>
  <content>
    <voting-issue-no-ballots show="{ctx.route$name__voting_issue$no_ballots}" ctx="{opts.ctx}"></voting-issue-no-ballots>
    <voting-issue-long-lines show="{ctx.route$name__voting_issue$long_lines}" ctx="{opts.ctx}"></voting-issue-long-lines>
    <voting-issue-no-party-preference show="{ctx.route$name__voting_issue$no_party_preference}" ctx="{opts.ctx}"></voting-issue-no-party-preference>
    <voting-issue-provisional-ballot show="{ctx.route$name__voting_issue$provisional_ballot}" ctx="{opts.ctx}"></voting-issue-provisional-ballot>
    <voting-issue-not-allowed-to-vote show="{ctx.route$name__voting_issue$not_allowed_to_vote}" ctx="{opts.ctx}"></voting-issue-not-allowed-to-vote>
    <voting-issue-incorrect-party show="{ctx.route$name__voting_issue$incorrect_party}" ctx="{opts.ctx}"></voting-issue-incorrect-party>
    <voting-issue-electioneering show="{ctx.route$name__voting_issue$electioneering}" ctx="{opts.ctx}"></voting-issue-electioneering>
    <voting-issue-inadequate-disability-access show="{ctx.route$name__voting_issue$inadequate_disability_access}" ctx="{opts.ctx}"></voting-issue-inadequate-disability-access>
  </content>
  <style>
    voting-issue-tile {
      display: block;
      overflow: hidden;
      text-align: center;
    }
    voting-issue-tile > * {
    }
    voting-issue-tile > h1 {
      color: #fff;
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