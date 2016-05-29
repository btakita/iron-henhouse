<spt-home>
  <spt-under-development-notice ctx="{opts.ctx}"></spt-under-development-notice>
  <logo><img src="/suppress-this/logo.png"/></logo>
  <bottom>
    <spt-twitter>
      &nbsp;
      <a class="twitter-timeline" href="https://twitter.com/SuppressThisCA" data-widget-id="736832656298672128">Tweets by @SuppressThisCA</a>
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
        To prevent and respond to attempts at voter suppression, Suppress This will launch
        an app to organize, report, and respond to expected voter irregularities and
        contingencies.
      </p>
    </spt-about-us>
  </bottom>
  <style>
    spt-home {
      display: block;
      padding: 0 0 100px;
    }
    spt-home > logo {
      margin: 80px 0 0;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    spt-home > logo > img {
      display: block;
      width: 772px;
      height: 372px;
    }
    spt-home > bottom {
      position: relative;
      display: block;
      width: 1072px;
      min-height: 600px;
      left: 50%;
      margin: 100px 0 0 -536px;
      overflow: hidden;
    }
    spt-home > bottom > * {
      float: left;
      box-sizing: border-box;
      width: 536px;
    }
    spt-home > bottom > spt-twitter {
      display: block;
      padding-right: 20px;
    }
    spt-home > bottom > spt-twitter .twitter-timeline {
      display: none;
      width: 100%;
    }
    spt-home > bottom > spt-about-us {
      padding-left: 20px;
    }
    spt-home > bottom > spt-about-us > h2 {
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