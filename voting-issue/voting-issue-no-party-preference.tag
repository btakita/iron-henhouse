
<voting-issue-no-party-preference>
  <article id="main">
    <header>
      <img class="header-icon" src="/images/icon-no-ballots.svg" alt="No Ballots">
      <h2>No Party Preference - Unable to Vote on Democratic Ballot</h2>
    </header>
    <section class="wrapper style5">
      <div class="inner">
        <h2 class="issue-heading">You are entitled to choose a regular Democratic ballot if you’d like.</h2>
        <p>If you weren’t offered a Democratic ballot, please request one. Depending on your county, you’ll either be given a regular “Democratic Ballot” or a “Crossover Democratic Ballot”. </p>
        <a class="great-i-was-able-to-vote" onclick="{show$target}" href="#great-i-got-democratic-ballot">Great, I was able to vote!</a>
        <a class="still-have-issues" onclick="{show$target}" href="#i-am-not-given-democratic-ballot">I am not being given the requested “Democratic Ballot” or “Crossover Democratic Ballot”.</a>
        <div id="great-i-got-democratic-ballot" class="hide">
          <p class="success-text">Yay!  Glad we could help</p>
        </div>
        <div id="i-am-not-given-democratic-ballot" class="hide">
          <p>Don’t cast a provisional ballot! You are entitled to “Democratic Ballot” or a “Crossover Democratic Ballot”. Give our legal hotline a call to get assistance from a legal professional!</p>
          <a class="call-hotline" href="tel:415-795-8065"><img src="/images/icon-hotline.svg" alt="">Call Elections Hotline</a>
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
</voting-issue-no-party-preference>