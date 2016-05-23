<voting-issue>
  <h1>What problems are you facing?</h1>
  <h2>Select from one of the problems below:</h2>
  <a href="voting-issue/no-ballots" class="voting-issue-type no-ballots" onclick="{link$onclick}">
    <p>{ctx.voting_issue$$map.no_ballots.title}</p>
  </a>
  <a href="voting-issue/wrong-ballots" class="voting-issue-type wrong-ballots" onclick="{link$onclick}">
    <p>{ctx.voting_issue$$map.wrong_ballots.title}</p>
  </a>
  <a href="voting-issue/no-evidence-of-registration" class="voting-issue-type no-evidence-of-registration" onclick="{link$onclick}">
    <p>{ctx.voting_issue$$map.no_evidence_of_registration.title}</p>
  </a>
  <a href="voting-issue/wrong-party-registration" class="voting-issue-type wrong-party-registration" onclick="{link$onclick}">
    <p>{ctx.voting_issue$$map.wrong_party_registration.title}</p>
  </a>
  <a href="voting-issue/campaigning-within-100-feet" class="voting-issue-type campaigning-within-100-feet" onclick="{link$onclick}">
    <p>{ctx.voting_issue$$map.campaigning_within_100_feet.title}</p>
  </a>
  <a href="voting-issue/polling-station-closed" class="voting-issue-type polling-station-closed" onclick="{link$onclick}">
    <p>{ctx.voting_issue$$map.polling_station_closed.title}</p>
  </a>
  <a href="voting-issue/sending-voters-away" class="voting-issue-type sending-voters-away" onclick="{link$onclick}">
    <p>{ctx.voting_issue$$map.sending_voters_away.title}</p>
  </a>
  <a href="voting-issue/wrong-location" class="voting-issue-type wrong-location" onclick="{link$onclick}">
    <p>{ctx.voting_issue$$map.wrong_location.title}</p>
  </a>
  <h2>Didn't find an answer? Call our rapid response team. They'll sort you out!</h2>
  <a href="tel:18002498683" class="call-us">
    <p>
      Call us!<br/>
      1-800-CHX-VOTE
    </p>
  </a>
  <style>
    voting-issue {
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
      text-decoration: none;
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
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {link$onclick: link$onclick})
        , logPrefix = "voting-issue/voting-issue.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</voting-issue>