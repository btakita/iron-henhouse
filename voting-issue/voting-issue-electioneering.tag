<voting-issue-electioneering>
  <article id="main">
    <header>
      <img class="header-icon" src="/images/icon-electioneering.svg" alt="Electioneering and Campaigning">
      <h2>Electioneering &amp; Campaigning</h2>
    </header>
    <section class="wrapper style5">
      <div class="inner">
        <p>In California, electioneering is generally prohibited within 100 feet of the entrance to a building where voting is taking place. Electioneering includes displaying signs, distributing campaign literature, or soliciting votes or signatures for a petition. Exceptions to the rule include signs on private property that is within the 100 feet but is not the polling location itself; bumper stickers on voters’ cars or cars passing through the zone; and voters who wear t-shirts, pins, hats, etc., with the name of a candidate on them, but don’t otherwise attempt to persuade other voters. No voter should be turned away from the polls without voting for this reason.</p>

        <h2 class="issue-heading">If you are observing electioneering/campaigning at your polling site,  you have a few options to resolve the issue.</h2>
        <ol>
          <li>
            <p>Notify the person(s) electioneering/campaigning directly that they are in violation of <a href="http://www.leginfo.ca.gov/cgi-bin/displaycode?section=elec&group=18001-19000&file=18370-18371">EC§1870</a> and ask them to stop.</p>
            <a class="great-i-was-able-to-vote" onclick="{show$target}" href="#stopped-electioneering">Great! The issue has resolved and they are no longer electioneering/campaigning.</a>
            <div class="hide" id="stopped-electioneering">
              <p class="success-text">You're awesome!</p>
            </div>
            <a class="still-have-issues" onclick="{show$target}" href="#refuse-to-stop">They refused to stop.</a>
            <div class="hide" id="refuse-to-stop">
              <p>Notify a pollworker or election official on site.</p>
              <a class="great-i-was-able-to-vote" onclick="{show$target}" href="#stopped-electioneering2">Great! We hope that the issue issue resolved and they are no longer electioneering/campaigning.</a>
              <div class="hide" id="stopped-electioneering2">
                <p class="success-text">You're awesome!</p>
              </div>
              <a class="still-have-issues" onclick="{show$target}" href="#still-not-resolved">Still not resolved?</a>
              <div class="hide" id="still-not-resolved">
                <p>Oh no! Hang tight and give our legal hotline a call so we can resolve this issue ASAP!</p>
                <a class="call-hotline" href="tel:{ctx.spt__hotline$phone_number}"><img src="/images/icon-hotline.svg" alt="">Call Elections Hotline</a>
            </div>
          </li>
          <li>
            <p>Notify a poll worker or election official on site.</p>
            <a class="great-i-was-able-to-vote" onclick="{show$target}" href="#stop-electioneering3">Great!  The issue has resolved and they are no longer electioneering / campaigning.</a>
            <div class="hide" id="stop-electioneering3">
              <p class="success-text">Yay!  Glad we could help</p>
            </div>
            <a class="still-have-issues" onclick="{show$target}" href="#still-not-resolved2">Still not resolved?</a>
              <div class="hide" id="still-not-resolved2">
                <p>Oh no! Hang tight and give our legal hotline a call so we can resolve this issue ASAP!</p>
                <a class="call-hotline" href="tel:{ctx.spt__hotline$phone_number}"><img src="/images/icon-hotline.svg" alt="">Call Elections Hotline</a>
            </div>
          </li>
        </ol>


        <h2 class="issue-heading">Are you experiencing difficulty voting because of electioneering/campaigning?</h2>
        <a class="still-have-issues" onclick="{show$target}" href="#told-i-am-electioneering">Yes, I’m not able to vote because I am told I was electioneering/campaigning.</a>
        <div class="hide" id="told-i-am-electioneering">
          <p>Simply wearing apparel, buttons, hats, stickers with a candidate’s name on them is not reason to be refused the right to vote.</p>
          <a class="great-i-was-able-to-vote" onclick="{show$target}" href="#great-told-i-am-electioneering">Great, I was able to vote!</a>
          <div class="hide" id="great-told-i-am-electioneering">
            <p class="success-text">Yay! Glad we could help</p>
          </div>
          <a class="still-have-issues" onclick="{show$target}" href="#denied-right-to-vote">I was denied the right to vote today.</a>
            <div class="hide" id="denied-right-to-vote">
              <p>Hmmm, let’s have you speak with a legal professional. Give our legal hotline a call and report the incident.</p>
              <a class="call-hotline" href="tel:{ctx.spt__hotline$phone_number}"><img src="/images/icon-hotline.svg" alt="">Call Elections Hotline</a>
            </div>
          <p>If you were attempting to persuade voters, that is considered “electioneering/campaigning” and is reason to be given a misdemeanor. Please cease from electioneering/campaigning immediately.</p>
        </div>
        <a class="still-have-issues" onclick="{show$target}" href="#holdup">Yes, I’m not able to vote because of a holdup or interruption caused by electioneering/campaigning. </a>
          <div class="hide" id="holdup">
            <p>Hmmm, let’s have you speak with a legal professional. Give our legal hotline a call and report the incident. </p>
            <a class="call-hotline" href="tel:{ctx.spt__hotline$phone_number}"><img src="/images/icon-hotline.svg" alt="">Call Elections Hotline</a>
          </div>
      </div>
    </section>
  </article>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {voting_issue__tag$mount} from "voting-issue/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "voting-issue/voting-issue-electioneering.tag";
    log(logPrefix);
    voting_issue__tag$mount(tag);
  </script>
</voting-issue-electioneering>