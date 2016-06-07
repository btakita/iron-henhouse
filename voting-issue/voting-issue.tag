<voting-issue>
  <h1>&nbsp;{ctx.l10n.tag$voting_issue$title}&nbsp;</h1>
  <h2>&nbsp;{ctx.l10n.tag$voting_issue$subtitle}&nbsp;</h2>
  <a href="voting-issue/no-ballots" class="voting-issue-type no-ballots" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$no_ballots.title}&nbsp;</p>
  </a>
  <a href="voting-issue/long-lines" class="voting-issue-type long-lines" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$long_lines.title}&nbsp;</p>
  </a>
  <a href="voting-issue/no-party-preference" class="voting-issue-type no-party-preference" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$no_party_preference.title}&nbsp;</p>
  </a>
  <a href="voting-issue/provisional-ballot" class="voting-issue-type provisional-ballot" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$provisional_ballot.title}&nbsp;</p>
  </a>
  <a href="voting-issue/not-allowed-to-vote" class="voting-issue-type not-allowed-to-vote" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$not_allowed_to_vote.title}&nbsp;</p>
  </a>
  <a href="voting-issue/incorrect-party" class="voting-issue-type incorrect-party" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$incorrect_party.title}&nbsp;</p>
  </a>
  <a href="voting-issue/electioneering" class="voting-issue-type electioneering" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$electioneering.title}&nbsp;</p>
  </a>
  <a href="voting-issue/inadequate-disability-access" class="voting-issue-type inadequate-disability-access" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$inadequate_disability_access.title}&nbsp;</p>
  </a>
  <h2>{ctx.l10n.tag$voting_issue$call_us}</h2>
  <a href="tel:{ctx.spt__hotline$phone_number}" class="call-us">
    <p>
      {ctx.l10n.call_us}<br/>
      {ctx.l10n.hotline$phone}
    </p>
  </a>
  <style>
    voting-issue {
      display: block;
      overflow: hidden;
      text-align: center;
    }
    voting-issue > a {
      display: block;
      position: relative;
      min-height: 50px;
      width: 340px;
      height: 190px;
      left: 50%;
      margin: 10px 0 10px -170px;
      padding: 20px;
      border: 2px solid #EA504E;
      -webkit-border-radius: 4px;
      -moz-border-radius: 4px;
      border-radius: 4px;;
      text-align: center;
      font-size: 24px;
      font-weight: bold;
    }
    voting-issue > a > p {
      position: absolute;
      left: 0;
      bottom: 0;
      width: 100%;
      text-align: center;
    }
    voting-issue > .voting-issue-type {
      background: no-repeat center 1.2rem;
      color: #EA504E;
    }
    voting-issue > .voting-issue-type.no-ballots {
      background-image: url('/images/icon-no-ballots.svg');
    }
    voting-issue > .call-us {
      color: #FFFFFF;
      background-color: #EA504E;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "voting-issue/voting-issue.tag";
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
</voting-issue>