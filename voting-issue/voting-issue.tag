<voting-issue>
  <h1>&nbsp;{ctx.l10n.tag$voting_issue$title}&nbsp;</h1>
  <h2>&nbsp;{ctx.l10n.tag$voting_issue$subtitle}&nbsp;</h2>
  <a href="voting-issue/no-ballots" class="voting-issue-type no-ballots" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$no_ballots.title}&nbsp;</p>
  </a>
  <a href="voting-issue/wrong-ballots" class="voting-issue-type wrong-ballots" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$wrong_ballots.title}&nbsp;</p>
  </a>
  <a href="voting-issue/no-evidence-of-registration" class="voting-issue-type no-evidence-of-registration" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$no_evidence_of_registration.title}&nbsp;</p>
  </a>
  <a href="voting-issue/wrong-party-registration" class="voting-issue-type wrong-party-registration" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$wrong_party_registration.title}&nbsp;</p>
  </a>
  <a href="voting-issue/campaigning-within-100-feet" class="voting-issue-type campaigning-within-100-feet" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$campaigning_within_100_feet.title}&nbsp;</p>
  </a>
  <a href="voting-issue/polling-station-closed" class="voting-issue-type polling-station-closed" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$polling_station_closed.title}&nbsp;</p>
  </a>
  <a href="voting-issue/sending-voters-away" class="voting-issue-type sending-voters-away" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$sending_voters_away.title}&nbsp;</p>
  </a>
  <a href="voting-issue/wrong-location" class="voting-issue-type wrong-location" onclick="{link$onclick}">
    <p>&nbsp;{ctx.l10n.voting_issue$wrong_location.title}&nbsp;</p>
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
      color: #EA504E;
    }
    voting-issue > .call-us {
      color: #FFFFFF;
      background-color: #EA504E;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {assign__l10n_agent} from "l10n/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {link$onclick: link$onclick})
        , logPrefix = "voting-issue/voting-issue.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__l10n_agent(ctx);
      ctx.l10n_agent.on("change", l10n_agent$on$change);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      self.ctx.l10n_agent.off("change", l10n_agent$on$change);
    }
    function l10n_agent$on$change() {
      log(`${logPrefix}|l10n_agent$on$change`);
      tag.assign__ctx$update();
    }
  </script>
</voting-issue>