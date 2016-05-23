<bernie-election-day-root>
  <img class="header-img" src="/bernie/bernie-2016.png" />
  <h1>Suppress This</h1>
  <h2>We the People can stop voter suppression!</h2>
  <a class="action where" href="vote-where" onclick="{link$onclick}">Where can I vote?</a>
  <a class="action issue" href="voting-issue" onclick="{link$onclick}">I have a voting problem!</a>
  <a class="twitter-timeline" href="https://twitter.com/BernieSanders" data-widget-id="734025080737566720">Tweets by @BernieSanders</a>
  <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
  <style>
    bernie-election-day-root {
      display: block;
    }
    bernie-election-day-root > .header-img {
      height: 99px;
    }
    bernie-election-day-root > .action {
      display: block;
      padding: 20px;
      margin: 0;
      text-decoration: none;
      color: #FFFFFF;
      font: 22px bold;
      border: 2px solid transparent;
    }
    bernie-election-day-root > .action:hover {
      border: 2px solid #111111;
    }
    bernie-election-day-root > .where {
      background: #087ED7;
    }
    bernie-election-day-root > .issue {
      background: #EA504E;
    }
    bernie-election-day-root > .twitter-timeline,bernie-election-day-root > iframe {
      display: none;
      position: relative;
      width: 520px;
      height: 600px;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {link$onclick: link$onclick})
        , logPrefix = "election-day/bernie-election-day-root.tag";
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
</bernie-election-day-root>