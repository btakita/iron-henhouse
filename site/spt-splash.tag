<spt-splash>
  <spt-under-development-notice ctx="{opts.ctx}"></spt-under-development-notice>
  <background-mask>&nbsp;</background-mask>
  <content>
    <logo><img src="/suppress-this/logo.png"/></logo>
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
    spt-splash {
      position: relative;
      display: flex;
      flex-direction: column;
      width: 100%;
      height: 100%;
      align-items: center;
    }
    spt-splash > spt-under-development-notice {
      position: relative;
      width: 100%;
      flex: 1;
      flex-grow: 0;
      height: 3em;
      z-index: 2;
    }
    spt-splash > content {
      position: relative;
      padding: 0 0 40px;
      flex: auto;
      overflow-y: auto;
      display: flex;
      flex-direction: column;
      width: 100%;
      align-items: center;
      z-index: 2;
    }
    spt-splash > background-mask {
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
    spt-splash > content > logo {
      padding: 40px 0 0;
      flex-grow: 0;
    }
    spt-splash > content > logo > img {
      display: block;
      width: 772px;
      height: 372px;
    }
    spt-splash > content > bottom {
      display: block;
      margin: 100px 0 0;
    }
    spt-splash > content > bottom > * {
      float: right;
      box-sizing: border-box;
      width: 536px;
    }
    spt-splash > content > bottom > spt-twitter {
      display: block;
      padding-right: 20px;
    }
    spt-splash > content > bottom > spt-twitter .twitter-timeline {
      display: none;
      width: 100%;
    }
    spt-splash > content > bottom > spt-about-us {
      padding-left: 20px;
    }
    spt-splash > content > bottom > spt-about-us > h2 {
      text-transform: uppercase;
    }
    @media (max-width: 1200px) {
      spt-splash > background-mask {
        width: 100%;
        margin: 0;
        left: auto;
      }
      spt-splash > content {
        width: 100%;
        left: auto;
        margin: 0;
      }
      spt-splash > content > bottom {
        display: flex;
        margin-top: 40px;
        flex-direction: column;
        align-items: center;
      }
      spt-splash > content > bottom > * {
        float: none;
        width: auto;
        padding: 0 0 40px;
      }
    }
  </style>
</spt-splash>
