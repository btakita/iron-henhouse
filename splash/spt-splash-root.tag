<spt-splash-root>
  <background-mask>&nbsp;</background-mask>
  <content>
    <logo><img src="/suppress-this/logo.png"/></logo>
    <early-voting-link>
      <a class="yellow-button" href="?early_voting=1" onclick="{link$onclick}">Early Voting</a>
    </early-voting-link>
    <bottom>
      <spt-about-us>
        <h2>About Us</h2>
        <p>
          The California Primary takes place on June 7, 2016. With 548 delegates, California
          has more delegates than any other state, and much more to lose in the case of
          attempted voter suppression.
        </p>
        <p>
          The #SuppressThis Mobile Web App was created in an effort to arm all California Voters & Trained Poll Watchers with the LAW on June 7th! With detailed instructions on how to assert your rights, we highly recommend you keep SuppressThis.Org at your fingertips this Election Day! App Launches June 3, 2016.
        </p>
      </spt-about-us>
      <spt-twitter>
        &nbsp;
       <a class="twitter-timeline" href="https://twitter.com/search?q=%23SuppressThis%20OR%20%23SuppressThisCA%20OR%20%23SuppressThisCali%20OR%20from%3A%40SuppressThisCA%20include%3Aretweets" data-widget-id="737016220361232385">Tweets about #SuppressThis OR #SuppressThisCA OR #SuppressThisCali OR from:@SuppressThisCA include:retweets</a>
  <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
      </spt-twitter>
    </bottom>
  </content>
  <style>
    spt-splash-root {
      flex: auto;
      overflow-y: auto;
      height: 100%;
      position: relative;
    }
    spt-splash-root > background-mask {
      position: absolute;
      top: 0;
      left: 50%;
      width: 1200px;
      height: 100%;
      margin: 0 0 0 -600px;
      z-index: 1;
      background-image: url('/suppress-this/voter_suppression.png');
      background-repeat: repeat-y;
      background-size: cover;
      opacity: 0.1;
    }
    spt-splash-root > content {
      position: relative;
      flex: auto;
      overflow-y: auto;
      width: 100%;
      z-index: 2;
      display: flex;
      flex-direction: column;
      padding: 0 0 40px;
      align-items: center;
    }
    spt-splash-root > content > logo {
      overflow: hidden;
      padding: 40px 0 0;
      flex-grow: 0;
      flex-shrink: 0;
    }
    spt-splash-root > content > logo > img {
      display: block;
      width: 772px;
      height: 372px;
    }
    spt-splash-root > content > early-voting-link {
      display: block;
      overflow: hidden;
      padding: 40px 0 0;
    }
    spt-splash-root > content > early-voting-link > a {
      display: block;
      overflow: hidden;
      padding: 20px 80px;
      font-size: 30px;
      border-radius: 8px;
    }
    spt-splash-root > content > bottom {
      display: block;
      margin: 40px 0 0;
      padding: 0 40px;
    }
    spt-splash-root > content > bottom > * {
      float: right;
      box-sizing: border-box;
      width: 536px;
    }
    spt-splash-root > content > bottom > spt-twitter {
      display: block;
      padding-right: 20px;
    }
    spt-splash-root > content > bottom > spt-twitter .twitter-timeline {
      display: none;
      width: 100%;
    }
    spt-splash-root > content > bottom > spt-about-us {
      padding-left: 20px;
    }
    spt-splash-root > content > bottom > spt-about-us > h2 {
      text-transform: uppercase;
    }
    @media (max-width: 1200px) {
      spt-splash-root > background-mask {
        width: 100%;
        margin: 0;
        left: auto;
      }
      spt-splash-root > content {
        width: 100%;
        left: auto;
        margin: 0;
      }
      spt-splash-root > content > bottom {
        display: flex;
        margin-top: 40px;
        flex-direction: column;
        align-items: center;
      }
      spt-splash-root > content > bottom > * {
        float: none;
        width: auto;
        padding: 0 0 40px;
      }
      spt-splash-root > content > bottom > spt-twitter {
        padding-right: 0;
      }
      spt-splash-root > content > bottom > spt-about-us {
        padding-left: 0;
      }
    }
    @media (max-width: 650px) {
      spt-splash-root > content > logo > img {
        width: 386px;
        height: 186px;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {assign__route$fragment_agent} from "ctx-core/route/lib";
    import {assign__dialog_agent} from "ctx-core/dialog/agent";
    import {dialog$$find__tag$name} from "ctx-core/dialog/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {link$onclick: link$onclick})
        , logPrefix = "splash/spt-splash-root.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__route$fragment_agent(ctx);
      assign__dialog_agent(ctx);
      ctx.route$fragment_agent.on("change", refresh);
      refresh(true);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      self.ctx.route$fragment_agent.off("change", refresh);
    }
    function refresh(show) {
      log(`${logPrefix}|refresh`);
      let ctx = self.ctx;
      const early_voting = ctx.route$query$map.early_voting
          , early_voting_issue = ctx.route$query$map.early_voting_issue
          , dialog$$_agent = ctx.dialog$$_agent
          , dialog$spt_early_voting_dialog = dialog$$find__tag$name(ctx, "spt-early-voting-dialog")
          , dialog$spt_early_voting_issue_dialog = dialog$$find__tag$name(ctx, "spt-early-voting-issue-dialog");
      if (early_voting && !dialog$spt_early_voting_dialog) {
        dialog$$_agent.push({
          dialog$$: {
            tag$name: "spt-early-voting-dialog"
          }
        });
      } else if (!early_voting && dialog$spt_early_voting_dialog) {
        dialog$$_agent.remove({dialog$$: dialog$spt_early_voting_dialog});
      }
      if (early_voting_issue && !dialog$spt_early_voting_issue_dialog) {
        dialog$$_agent.push({
          dialog$$: {
            tag$name: "spt-early-voting-issue-dialog"
          }
        });
      } else if (!early_voting_issue && dialog$spt_early_voting_issue_dialog) {
        dialog$$_agent.remove({dialog$$: dialog$spt_early_voting_issue_dialog});
      }
      tag.assign__ctx$update();
    }
  </script>
</spt-splash-root>