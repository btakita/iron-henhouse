<voting-issue-not-allowed-to-vote>
  <article id="main">
    <header>
      <img class="header-icon" src="/images/icon-not-allowed.svg" alt="Not Allowed To Vote">
      <h2>Not Allowed To Vote</h2>
    </header>
    <section class="wrapper style5">
      <div class="inner">
        <h2 class="issue-heading">Were you refused to vote because of any of the following reasons?</h2>
        <a class="still-have-issues" onclick="{show$target}" href="#not-eighteen">I am not 18 years of age as of June 7th, 2016.</a>
        <div id="not-eighteen" class="hide">
          <p>DAww, shucks. Looks like you are not eligible to vote today. But you can still make a difference by encouraging eligible friends and family to head to the polls!</p>
        </div>
        <a class="still-have-issues" onclick="{show$target}" href="#felon">I am a convicted felon currently on parole or imprisoned.</a>
        <div id="felon" class="hide">
          <p>DAww, shucks. Looks like you are not eligible to vote today. But you can still make a difference by encouraging eligible friends and family to head to the polls!</p>
        </div>
        <a class="still-have-issues" onclick="{show$target}" href="#late">I entered the line to vote at my polling site after 8pm PST on Election Day.</a>
        <div id="late" class="hide">
          <p>Oh no! Looks like you’re not eligible to vote today.</p>
        </div>
        <a class="still-have-issues" onclick="{show$target}" href="#no-more-ballots">There are no more ballots available to use.</a>
        <div id="no-more-ballots" class="hide">
          <p>Oh no!  Hang tight and give our legal hotline a call so we can resolve this issue ASAP!</p>
          <a class="call-hotline" href="tel:{ctx.spt__hotline$phone_number}"><img src="/images/icon-hotline.svg" alt="">Call Elections Hotline</a>
        </div>
        <a class="still-have-issues" onclick="{show$target}" href="#homeless">I am homeless and am not allowed to vote because of that.</a>
        <div id="homeless" class="hide">
          <p>If you are currently homeless, but are registered to vote, you should be allowed to vote today. Remember, as a voter experiencing homelessness, you can designate any place where you habitually spend time, including a street corner, as your residence.</p>
          <p>Please provide this legal information to the poll workers and assert your legal right to vote today.  If you are still unable to vote, give our legal hotline a call and report the incident.</p>
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
        , logPrefix = "voting-issue/voting-issue-no-party-preference.tag";
    log(logPrefix);
    voting_issue__tag$mount(tag);
  </script>
</voting-issue-not-allowed-to-vote>