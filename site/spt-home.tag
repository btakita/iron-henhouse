<spt-home>
  <spt-under-development-notice ctx="{opts.ctx}"></spt-under-development-notice>
  <background-mask>&nbsp;</background-mask>
  <content>
    <logo><img src="/suppress-this/logo.png"/></logo>
      <bottom>
        <spt-twitter>
          &nbsp;
         <a class="twitter-timeline" href="https://twitter.com/search?q=%23SuppressThis%20OR%20%23SuppressThisCA%20OR%20%23SuppressThisCali%20OR%20from%3A%40SuppressThisCA%20include%3Aretweets" data-widget-id="737016220361232385">Tweets about #SuppressThis OR #SuppressThisCA OR #SuppressThisCali OR from:@SuppressThisCA include:retweets</a>
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
        </spt-twitter>
        <spt-about-us>
          <h2>About Us</h2>
          <p>
            The California Primary takes place on June 7, 2016. With 548 delegates, California
            has more delegates than any other state, and much more to lose in the case of
            attempted voter suppression.
          </p>
          <p>
            The #SuppressThis Mobile Web App was created in an effort to arm all California Voters & Trained Poll Watchers with the LAW on June 7th! With detailed instructions on how to assert your rights, we highly recommend you keep SuppressThis.Org at your fingertips this Election Day! App Launches June 1, 2016.
          </p>
        </spt-about-us>
      </bottom>
  </content>
  <style>
    spt-home {
      position: relative;
      display: block;
      padding: 0 0 100px;
    }
    spt-home > background-mask {
      position: absolute;
      left: 50%;
      width: 1200px;
      height: 100%;
      margin: 0 0 0 -600px;
      z-index: 1;
      background-image: url('/suppress-this/voter_suppression.png');
      background-repeat: repeat-y;
      background-size: 1200px auto;
      opacity: 0.2;
    }
    spt-home > content {
      position: relative;
      display: block;
      width: 1072px;
      left: 50%;
      margin: 0 0 0 -536px;
      z-index: 2;
    }
    spt-home > content > logo {
      margin: 80px 0 0;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    spt-home > content > logo > img {
      display: block;
      width: 772px;
      height: 372px;
    }
    spt-home > content > bottom {
      display: block;
      min-height: 600px;
      margin: 100px 0 0;
      overflow: hidden;
    }
    spt-home > content > bottom > * {
      float: left;
      box-sizing: border-box;
      width: 536px;
    }
    spt-home > content > bottom > spt-twitter {
      display: block;
      padding-right: 20px;
    }
    spt-home > content > bottom > spt-twitter .twitter-timeline {
      display: none;
      width: 100%;
    }
    spt-home > content > bottom > spt-about-us {
      padding-left: 20px;
    }
    spt-home > content > bottom > spt-about-us > h2 {
      text-transform: uppercase;
    }
  </style>
  <script type="text/babel">
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign} from "ctx-core/object/lib";
    import {assign__ctx} from "./lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "site/spt-home.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      assign__ctx(tag.ctx);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-home>