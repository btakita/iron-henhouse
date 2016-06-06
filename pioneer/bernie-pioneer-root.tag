<bernie-pioneer-root>
  <img class="header-img" src="/bernie/bernie-2016.png" />
  <h1>&nbsp;{ctx.l10n.tag$election_day$title}&nbsp;</h1>
  <h2>&nbsp;{ctx.l10n.tag$election_day$subtitle}&nbsp;</h2>
  <a class="action where" href="vote-where" onclick="{link$onclick}">&nbsp;{ctx.l10n.vote_where$menu$text}&nbsp;</a>
  <a class="action issue" href="voting-issue" onclick="{link$onclick}">&nbsp;{ctx.l10n.voting_issue$menu$text}&nbsp;</a>
  <a class="twitter-timeline" href="https://twitter.com/BernieSanders" data-widget-id="734025080737566720">Tweets by @BernieSanders</a>
  <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
  <style>
    bernie-pioneer-root {
      display: block;
    }
    bernie-pioneer-root > .header-img {
      height: 99px;
    }
    bernie-pioneer-root > .action {
      display: block;
      padding: 20px;
      margin: 0;
      color: #FFFFFF;
      font: 22px bold;
      border: 2px solid transparent;
    }
    bernie-pioneer-root > .action:hover {
      border: 2px solid #111111;
    }
    bernie-pioneer-root > .where {
      background: #087ED7;
    }
    bernie-pioneer-root > .issue {
      background: #EA504E;
    }
    bernie-pioneer-root > .twitter-timeline,bernie-pioneer-root > iframe {
      display: none;
      position: relative;
      width: 520px;
      height: 600px;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {assign__l10n_agent} from "l10n/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {link$onclick: link$onclick})
        , logPrefix = "pioneer/bernie-pioneer-root.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__l10n_agent(ctx);
      ctx.l10n_agent.on("change", l10n_agent$on$change);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      self.ctx.l10n_agent.off("change", l10n_agent$on$change);
    }
    function l10n_agent$on$change() {
      log(`${logPrefix}|l10n_agent$on$change`);
      tag.assign__ctx$update();
    }
  </script>
</bernie-pioneer-root>