<spt-splash-root>
  <background-mask>&nbsp;</background-mask>
  <content>
    <logo><img src="/suppress-this/logo.png"/></logo>
    <early-voting-link class="splash-link">
      <a class="yellow-button" href="?early_voting=1" onclick="{link$onclick}">Early Voting</a>
    </early-voting-link>
    <check-registration-link class="splash-link">
      <a href="?check_registration=1" onclick="{link$onclick}">Check Your Voter Registration</a>
    </check-registration-link>
    <npp-registration-link class="splash-link">
      <a target="_blank" href="http://youdownwithnpp.com/?{ctx.ref$query}">Voting as No Party Preference?</a>
    </npp-registration-link>
    <bottom>
      <spt-about-us>
        <h2>About Us</h2>
        <p>
          The California Primary takes place on June 7, 2016. With 548 delegates, California
          has more delegates than any other state, and much more to lose in the case of
          attempted voter suppression.
        </p>
        <p>
          The #SuppressThis Mobile Web App was created in an effort to arm all California Voters with the LAW on June 7th! With detailed instructions on how to assert your rights, we highly recommend you keep SuppressThis.Org at your fingertips this Election Day! App Launches June 7, 2016.
        </p>
      </spt-about-us>
      <spt-twitter>
       <a class="twitter-timeline" href="https://twitter.com/search?q=%23SuppressThis%20OR%20%23SuppressThisCA%20OR%20%23SuppressThisCali%20OR%20from%3A%40SuppressThisCA%20include%3Aretweets" data-widget-id="737016220361232385">Loading &hellip;</a>
       <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
      </spt-twitter>
    </bottom>
  </content>
  <style>
    spt-splash-root {
      display: block;
      position: relative;
    }
    spt-splash-root > background-mask {
      position: absolute;
      top: 0;
      left: 50%;
      width: 80%;
      height: 100%;
      margin: 0 0 0 -40%;
      z-index: 1;
      background-image: url('/suppress-this/voter_suppression.png');
      background-repeat: repeat-y;
      background-size: cover;
      opacity: 0.1;
    }
    spt-splash-root > content {
      display: block;
      position: relative;
      z-index: 2;
      overflow-y: auto;
      width: 100%;
      padding: 0 0 40px;
      align-items: center;
    }
    spt-splash-root > content > logo {
      display: block;
      overflow: hidden;
      padding: 40px 0 0;
      text-align: center;
    }
    spt-splash-root > content > logo > img {
      width: 772px;
      height: 372px;
    }
    spt-splash-root > content > .splash-link {
      display: block;
      overflow: hidden;
      padding: 40px 0 0;
      text-align: center;
    }
    spt-splash-root > content > early-voting-link {
      display: block;
      overflow: hidden;
      margin: 20px 0 0;
      height: 100px;
      text-align: center;
    }
    spt-splash-root > content > early-voting-link > a {
      padding: 20px 80px;
      font-size: 30px;
      border-radius: 8px;
    }
    spt-splash-root > content > bottom {
      display: block;
      position: relative;
      width: 80%;
      left: 50%;
      margin: 40px 0 0 -40%;
      overflow: hidden;
      padding: 0;
    }
    spt-splash-root > content > bottom > * {
      display: block;
      box-sizing: border-box;
      width: 50%;
      padding: 0 2rem;
    }
    spt-splash-root > content > bottom > spt-twitter {
      height: 600px;
    }
    spt-splash-root > content > bottom > spt-twitter iframe {
      float: right;
    }
    spt-splash-root > content > bottom > spt-twitter a.twitter-timeline {
      color: #ffffff;
      margin-top: 1.6em;
      width: 100%;
      float: right;
      text-align: center;
    }
    spt-splash-root > content > bottom > spt-about-us > h2 {
      text-transform: uppercase;
    }
    @media (max-width: 1200px) {
      spt-splash-root > background-mask {
        width: 100%;
        margin: 0;
        left: inherit;
      }
      spt-splash-root > content {
        width: 100%;
        margin: 0;
      }
      spt-splash-root > content > bottom {
        display: block;
        margin-top: 40px;
      }
      spt-splash-root > content > bottom > * {
        float: inherit;
        width: 100%;
        margin-top: 40px;
        padding: 0;
      }
      spt-splash-root > content > bottom > spt-twitter {
        padding-right: 0;
      }
      spt-splash-root > content > bottom > spt-twitter iframe {
        float: inherit;
        width: 100%;
      }
      spt-splash-root > content > bottom > spt-about-us {
        padding-left: 0;
      }
    }
    @media (max-width: 900px) {
      spt-splash-root > content > logo > img {
        width: 90%;
        margin: 0 5%;
        height: auto;
      }
      spt-splash-root > content > early-voting-link > a {
        width: 90%;
        margin-left: 5%;
        margin-right: 5%;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {assign__dialog_agent} from "ctx-core/dialog/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {link$onclick: link$onclick})
        , logPrefix = "splash/spt-splash-root.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__dialog_agent(ctx);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      self.ctx.route$fragment_agent.off("change", refresh);
    }
  </script>
</spt-splash-root>