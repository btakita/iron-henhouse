<voting-issue-tile>
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
    }
    voting-issue-tile > * {
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
    voting-issue-tile #main {
      margin-top: 1.5rem;
    }
    voting-issue-tile #main > header {
      padding-left: 3em;
      padding-right: 3em;
      text-align: center;
    }
    voting-issue-tile #main > header h2 {
      font-size: 1.25em;
      margin: 0 0 1em 0; }
    voting-issue-tile #main > header h2 {
      font-size: 3em;
      letter-spacing: 0.08px;
      line-height: 60px;
      margin: 0 0 0.5em 0;
      color: rgba(255,255,255,.5);
      -ms-transform: rotate(-3.5deg);
      -webkit-transform: rotate(-3.5deg);
      transform: rotate(-3.5deg);
    }
    voting-issue-tile h2 {
      font-size: 1.625rem;
      line-height: 2.4375rem;
      letter-spacing: 1.18px;
    }
    voting-issue-tile p {
      width: 60%;
      margin: 0 0 2em 0;
    }
    voting-issue-tile .wrapper {
      padding: 4em 3em 2em 3em;
    }
    voting-issue-tile .wrapper.style5 h2, voting-issue-tile .wrapper.style5 h3, voting-issue-tile .wrapper.style5 h4, voting-issue-tile .wrapper.style5 h5, voting-issue-tile .wrapper.style5 h6 {
      margin-bottom: 5rem;
      -ms-transform: rotate(-3.5deg);
      -webkit-transform: rotate(-3.5deg);
      transform: rotate(-3.5deg);
      text-transform: none;
    }
    voting-issue-tile .great-i-was-able-to-vote, .get-email {
      display: block;
      max-width: 345px;
      border-radius: 2px;
      background-color: #B8E986;
      padding: .5rem;
      margin: 1.25rem 0;
      color: #000;
      text-align: center;
      font-size: 1.5rem;
      font-weight: 700;
      letter-spacing: 0.5px;
      line-height: 2.25rem;
   }
    voting-issue-tile .success-text {
      color: #B8E986;
    }
    voting-issue-tile .still-have-issues {
      display: block;
      max-width: 345px;
      border-radius: 2px;
      background-color: #FED203;
      padding: .5rem;
      margin: 1.25rem 0;
      color: #000;
      text-align: center;
      font-size: 1.5rem;
      font-weight: 700;
      letter-spacing: 0.5px;
      line-height: 2.25rem;
    }
    voting-issue-tile .call-hotline {
      display: block;
      max-width: 345px;
      border-radius: 2px;
      background-color: #CC2027;
      padding: .5rem;
      margin: 1.25rem 0;
      color: #000;
      text-align: center;
      font-size: 1.5rem;
      font-weight: 700;
      letter-spacing: 0.5px;
      line-height: 2.25rem;
    }
    voting-issue-tile .call-hotline > img {
      margin: 0 auto .5rem;
      display: block;
    }
    voting-issue-tile .get-email-no {
      display: block;
      max-width: 345px;
      border-radius: 2px;
      border: 1px solid #fff;
      padding: .5rem;
      margin: 1.25rem 0;
      color: #fff;
      text-align: center;

      font-size: 1.5rem;
      font-weight: 700;
      letter-spacing: 0.5px;
      line-height: 2.25rem;
    }
    voting-issue-tile .hide {
      display: none;
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