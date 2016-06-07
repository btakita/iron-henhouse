
<voting-issue-provisional-ballot>
  <article id="main">
    <header>
      <img class="header-icon" src="/images/icon-no-ballots.svg" alt="No Ballots">
      <h2>Given a Provisional Ballot</h2>
    </header>
    <section class="wrapper style5">
      <div class="inner">
        <p>Provisional ballots are ballots given to voters whose eligibility is questioned on Election Day. These ballots are not included in election night totals and will only be counted if elections officials determine the voter was eligible to cast their ballot in the days after Election Day.</p>
        <h2 class="issue-heading">Do any of the following reasons apply to you?</h2>

        <a class="still-have-issues" onclick="{show$target}" href="#not-assigned-precinct">I’m not at my assigned precinct.</a>
        <div class="hide" id="not-assigned-precinct">
          <p>According to (EC § 14310(c)(3).), this is an acceptable reason to cast a provisional ballot. If you do not have enough time to make it to your correct precinct location, please go ahead and cast a provisional ballot today but make sure to track your ballot and ensure that your vote is counted! <a href="http://www.sos.ca.gov/elections/ballot-status">Here’s a link</a> to track your ballot and make sure it’s counted.</p>
          <!--<h2 class="issue-heading">Would you like to have the link emailed to you to check the status after today?</h2>
          <a class="get-email" onclick="{show$target}" href="#not-assigned-precinct-send-email-yes">Yes</a>
          <form class="hide" id="not-assigned-precinct-send-email-yes" action="">
            <label for=""><input type="text">Enter Your Email</label>
            <button type="submit">Submit</button>
          </form>
          <a class="get-email-no" onclick="{show$target}" href="#not-assigned-precinct-send-email-no">No</a>
          <div class="hide" id="not-assigned-precinct-send-email-no">
            <p>No problem! We hope this helped. Any more questions can be sent directly to <a href="mailto:cavoterprotection@berniesanders.com">cavoterprotection@berniesanders.com</a>.</p>
          </div>-->
        </div>


        <a class="still-have-issues" onclick="{show$target}" href="#vote-by-mail">I’m listed as Vote-By-Mail (VBM) but I did not bring my Vote-By-Mail ballot to surrender at the polling place.</a>
        <div class="hide" id="vote-by-mail">
          <p>According to (EC § 3016.), this is an acceptable reason to cast a provisional ballot. But if you are able to retrieve your Vote-By-Mail ballot and return to the polls by 8pm, you can surrender your Vote-By-Mail ballot and will be given a Democratic Ballot. In that case, your vote will be counted today. If that isn’t possible, please go ahead and cast a provisional ballot but make sure to track your ballot and ensure that your vote is counted!</p>
          <p>Click this <a href="http://www.sos.ca.gov/elections/ballot-status">link</a> to track your ballot and make sure it’s counted.</p>
         <!--<h2 class="issue-heading">Would you like to have the link emailed to you to check the status after today?</h2>
          <a class="get-email" onclick="{show$target}" href="#vote-by-mail-send-email-yes">Yes</a>
          <form class="hide" id="vote-by-mail-send-email-yes" action="">
            <label for=""><input type="text">Enter Your Email</label>
            <button type="submit">Submit</button>
          </form>
          <a class="get-email-no" onclick="{show$target}" href="#vote-by-mail-send-email-no">No</a>
          <div class="hide" id="vote-by-mail-send-email-no">
            <p>No problem! We hope this helped. Any more questions can be sent directly to <a href="mailto:cavoterprotection@berniesanders.com">cavoterprotection@berniesanders.com</a>.</p>
          </div>-->
        </div>


        <a class="still-have-issues" onclick="{show$target}" href="#another-party-preference">I’m listed as another party preference and not as Democrat. </a>
        <div class="hide" id="another-party-preference">
          <p>According to (EC § 3016.), this is an acceptable reason to cast a provisional ballot. Please cast a provisional ballot today.  If you believe your registration status was an error on the part of the elections office and would like to report the incident, please email us at <a href="mailto:cavoterprotection@berniesanders.com">cavoterprotection@berniesanders.com</a> so that we can make sure that the legal response team gets back to you.</p>
          <p>You can track your ballot <a href="http://www.sos.ca.gov/elections/ballot-status">here</a> to see if your vote is counted!</p>
          <!--<h2 class="issue-heading">Would you like to have the link emailed to you to check the status after today?</h2>
          <a class="get-email" onclick="{show$target}" href="#another-party-preference-send-email-yes">Yes</a>
          <form class="hide" id="another-party-preference-send-email-yes" action="">
            <label for=""><input type="text">Enter Your Email</label>
            <button type="submit">Submit</button>
          </form>
          <a class="get-email-no" onclick="{show$target}" href="#another-party-preference-send-email-no">No</a>
          <div class="hide" id="another-party-preference-send-email-no">
            <p>No problem! We hope this helped. Any more questions can be sent directly to <a href="mailto:cavoterprotection@berniesanders.com">cavoterprotection@berniesanders.com</a>.</p>
          </div>-->
        </div>

        <a class="still-have-issues" onclick="{show$target}" href="#first-time-voting">This is my first time voting.</a>
        <div class="hide" id="first-time-voting">
          <p>Any of the following apply to you:</p>
          <ul>
            <li>
              <p>I did not provide a driver license number or last 4 digits of my social security number on my voter registration form, or the number was not verified.</p>
            </li>
            <li>
              <p>If you’d like your vote counted today, a form of ID is required. But did you know there are many acceptable form	s of ID including official documents with your name and address? Click <a href="http://elections.cdn.sos.ca.gov/regulations/hava_id_regs_from_barclays_3_3_06.pdf">here</a> for a full list of acceptable forms of ID.</p>
              <a class="great-i-was-able-to-vote" onclick="{show$target}" href="#great-i-got-democratic-ballot">Great! I was able to provide ID and vote on a Democratic Ballot.</a>

              <a class="still-have-issues" onclick="{show$target}" href="#situation-not-resolved">The situation has not resolved.</a>
              <div class="hide" id="situation-not-resolved">
                <p>Hmm, let's have you speak with a legal professional.  Give our legal hotline a call and report the incident.</p>
                <a class="call-hotline" href="tel:415-795-8065"><img src="/images/icon-hotline.svg" alt="">Call Elections Hotline</a>
              </div>
              <a class="still-have-issues" onclick="{show$target}" href="#unable-to-give-id">I am unable/unwilling to provide ID.</a>
              <div class="hide" id="unable-to-give-id">
                <p>According to (EC § 14310.), this is an acceptable reason to cast a provisional ballot. Please go ahead and cast a provisional ballot today but make sure to track your ballot and ensure that your vote is counted! Here’s a <a href="http://www.sos.ca.gov/elections/ballot-status">link</a> to track your ballot count.</p>
                <!--<h2 class="issue-heading">Would you like to have the link emailed to you to check the status after today?</h2>
                <a class="get-email" onclick="{show$target}" href="#unable-to-give-id-send-email-yes">Yes</a>
                <form class="hide" id="unable-to-give-id-send-email-yes" action="">
                  <label for=""><input type="text">Enter Your Email</label>
                  <button type="submit">Submit</button>
                </form>
                <a class="get-email-no" onclick="{show$target}" href="#unable-to-give-id-send-email-no">No</a>
                <div class="hide" id="unable-to-give-id-send-email-no">
                  <p>No problem! We hope this helped. Any more questions can be sent directly to <a href="mailto:cavoterprotection@berniesanders.com">cavoterprotection@berniesanders.com</a>.</p>
                </div>-->
              </div>
            </li>
          </ul>
        </div>

        <a class="still-have-issues" onclick="{show$target}" href="#moved">I moved within my county but did not re-register to vote. </a>
        <div class="hide" id="moved">
          <p>According to (EC § 14311(b).), this is an acceptable reason to cast a provisional ballot. If you have enough time to make it to your correct precinct by 8pm, please do not cast a provisional ballot vote. Instead, head to your correct precinct and cast a regular ballot to ensure that it gets counted today.</p>
          <p>If you don’t have enough time to make it to your correct precinct location, please go ahead and cast a provisional ballot today. Make sure to track your ballot and ensure that your vote is counted <a href="http://www.sos.ca.gov/elections/ballot-status">here!</a></p>
          <!--<h2 class="issue-heading">Would you like to have the link emailed to you to check the status after today?</h2>
          <a class="get-email" onclick="{show$target}" href="#moved-send-email-yes">Yes</a>
          <form class="hide" id="moved-send-email-yes" action="">
            <label for=""><input type="text">Enter Your Email</label>
            <button type="submit">Submit</button>
          </form>
          <a class="get-email-no" onclick="{show$target}" href="#moved-send-email-no">No</a>
          <div class="hide" id="moved-send-email-no">
            <p>No problem! We hope this helped. Any more questions can be sent directly to <a href="mailto:cavoterprotection@berniesanders.com">cavoterprotection@berniesanders.com</a>.</p>
          </div>-->
        </div>


        <a class="still-have-issues" onclick="{show$target}" href="#none-apply">None of these reasons apply to me.</a>
        <div class="hide" id="none-apply">
          <h2 class="issue-heading">Okay. What is the reason they are giving you a provisional ballot?</h2>
          <a class="still-have-issues" onclick="{show$target}" href="#name-not-on-poll-list">My name is not on the poll list.</a>
          <div class="hide" id="name-not-on-poll-list">
            <h2 class="issue-heading">Are you registered to vote in the precinct location you are at?  You can check your voter registration status <a href="https://www.suppressthis.org/#?check_registration=1">here.</a></h2>
            <a class="still-have-issues" onclick="{show$target}" href="#registered-to-vote">Yes, I’m registered to vote in this precinct.</a>
            <div class="hide" id="registered-to-vote">
              <p>
                Ask the poll worker if they can check the inactive list for your name. Also, make sure to have them check for any other names used previously, nicknames, and common misspellings.
              </p>
              <a class="great-i-was-able-to-vote" onclick="{show$target}" href="#great-found-my-name">They found my name.</a>
              <div class="hide" id="great-found-my-name">
                <p class="success-text">Great! All you have to do is verify your name and address and your name will be put back into the active list and you should be given a regular ballot (not a provisional one). (EC § 2226.)</p>
                <a class="still-have-issues" onclick="{show$target}" href="#i-am-not-given-democratic-ballot">The situation was not resolved.</a>
                <div class="hide" id="i-am-not-given-democratic-ballot">
                  <p>Hmmm, let’s have you speak with a legal professional. Give our legal hotline a call and report the incident.</p>
                  <a class="call-hotline" href="tel:415-795-8065"><img src="/images/icon-hotline.svg" alt="">Call Elections Hotline</a>
                </div>
              </div>
              <h2 class="issue-heading">Did you ask the poll worker if they can check the inactive list for your name? Keep this app handy and follow the advice below.</h2>
              <a class="great-i-was-able-to-vote" onclick="{show$target}" href="#great-found-my-name2">They found my name.</a>
              <div class="hide" id="great-found-my-name2">
                <p class="success-text">Great! All you have to do is verify your name and address and your name will be put back into the active list and you should be given a regular ballot (not a provisional one). (EC § 2226.)</p>
                <a class="still-have-issues" onclick="{show$target}" href="#not-on-inactive-list">My name is not on the inactive list. </a>
                <div class="hide" id="not-on-inactive-list">
                  <p>This is an acceptable reason to cast a provisional ballot. Please go ahead and cast a provisional ballot today but make sure to track your ballot and ensure that your vote is counted <a href="http://www.sos.ca.gov/elections/ballot-status">here!</a></p>
                  <h2 class="issue-heading">Would you like to have the link emailed to you to check the status after today?</h2>
                  <a class="get-email" onclick="{show$target}" href="#not-on-inactive-list-send-email-yes">Yes</a>
                  <form class="hide" id="not-on-inactive-list-send-email-yes" action="">
                    <label for=""><input type="text">Enter Your Email</label>
                    <button type="submit">Submit</button>
                  </form>
                  <a class="get-email-no" onclick="{show$target}" href="#not-on-inactive-list-send-email-no">No</a>
                  <div class="hide" id="not-on-inactive-list-send-email-no">
                    <p>No problem! We hope this helped. Any more questions can be sent directly to <a href="mailto:cavoterprotection@berniesanders.com">cavoterprotection@berniesanders.com</a>.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <a class="still-have-issues" onclick="{show$target}" href="#no-party-preference">I’m registered as No Party Preference (“NPP")</a>
        <div class="hide" id="no-party-preference">
          <p>You are entitled to choose a regular Democratic ballot if you’d like. If you weren’t offered a Democratic ballot, please request one. Depending on your county, you’ll either be given a regular “Democratic Ballot” or a “Crossover Democratic Ballot”.</p>
          <a class="great-i-was-able-to-vote" onclick="{show$target}" href="#great-no-party-preference">Great, I was able to vote!</a>
          <div class="hide" id="great-no-party-preference">
            <p class="success-text">Yay!  Glad we could help</p>
          </div>
          <a class="still-have-issues" onclick="{show$target}" href="#no-party-preference-i-am-not-given-democratic-ballot">I am not being given the requested “Democratic Ballot” or “Crossover Democratic Ballot”.</a>
          <div class="hide" id="no-party-preference-i-am-not-given-democratic-ballot">
            <p>Hmmm, let’s have you speak with a legal professional. Give our legal hotline a call and report the incident.</p>
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
        , logPrefix = "voting-issue/voting-issue-provisional-ballot.tag";
    log(logPrefix);
    voting_issue__tag$mount(tag);
  </script>
</voting-issue-provisional-ballot>