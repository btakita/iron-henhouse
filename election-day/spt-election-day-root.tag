<spt-election-day-root>
  <background-mask>&nbsp;</background-mask>
  <content id="landing" style="-webkit-overflow-scrolling: touch;
        overflow-y: scroll;">
    <logo><img src="/suppress-this/logo.png"/></logo>
    <voting-problem-link class="button-link">
      <a class="red-button" href="voting-issue" onclick="{link$onclick}">I Have a Voting Problem</a>
    </voting-problem-link>
    <check-registration-link class="button-link">
      <a class="yellow-button" href="/?dialog=spt-check-registration-dialog" onclick="{link$onclick}">Check Your Voter Registration</a>
    </check-registration-link>
    <vote-where-link class="button-link">
      <a class="yellow-button" href="vote-where" onclick="{link$onclick}">&nbsp;{ctx.l10n.vote_where$menu$text}&nbsp;</a>
    </vote-where-link>
    <I-voted-link class="button-link">
      <a class="yellow-button" href="/?dialog=spt-i-voted-dialog" onclick="{link$onclick}">I Voted!</a>
    </I-voted-link>
    <bottom>
      <spt-about-us ctx="{opts.ctx}"></spt-about-us>
      <spt-twitter ctx="{opts.ctx}"></spt-twitter>
    </bottom>
  </content>
  <style>

    spt-election-day-root {
      display: block;
      position: relative;
    }
    spt-election-day-root > background-mask {
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
    spt-election-day-root > content {
      display: block;
      position: relative;
      -webkit-overflow-scrolling: touch;
      overflow-y: scroll;
      z-index: 2;
      width: 100%;
      padding: 0 0 40px;
      align-items: center;
    }

    spt-election-day-root > content > logo {
      display: block;
      overflow: hidden;
      padding: 40px 0 3rem;
      text-align: center;
    }
    spt-election-day-root > content > logo > img {
      width: 772px;
      height: 372px;
    }
    spt-election-day-root > content > .button-link {
      display: block;
      overflow: hidden;
      margin: 1.2em 0 0;
      text-align: center;
    }
    spt-election-day-root > content > bottom {
      display: block;
      position: relative;
      width: 80%;
      left: 50%;
      margin: 40px 0 0 -40%;
      overflow: hidden;
      padding: 0;
    }
    spt-election-day-root > content > bottom > * {
      display: block;
      float: right;
      box-sizing: border-box;
      width: 50%;
      padding: 0 2rem;
    }
    spt-election-day-root > content > bottom > spt-twitter a.twitter-timeline {
      margin-top: 1.6em;
      width: 100%;
      text-align: center;
      float: right;
    }
    spt-election-day-root > content > bottom > spt-twitter iframe {
      float: right;
    }
    @media (max-width: 1200px) {
      spt-election-day-root > background-mask {
        width: 100%;
        margin: 0;
        left: inherit;
      }
      spt-election-day-root > content {
        width: 100%;
        margin: 0;
      }
      spt-election-day-root > content > bottom {
        display: block;
        margin-top: 40px;
      }
      spt-election-day-root > content > bottom > * {
        float: inherit;
        width: 100%;
        margin-top: 40px;
        padding: 0;
      }
      spt-election-day-root > content > bottom > spt-twitter {
        padding-right: 0;
      }
      spt-election-day-root > content > bottom > spt-twitter iframe {
        float: inherit;
        width: 100%;
      }
      spt-election-day-root > content > bottom > spt-about-us {
        padding-left: 0;
      }
    }
    @media (max-width: 900px) {
      spt-election-day-root > content > logo > img {
        width: 90%;
        margin: 0 5%;
        height: auto;
      }
      spt-election-day-root > content > voting-problem-link > a {
        width: 90%;
        margin-left: 5%;
        margin-right: 5%;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {assign__dialog_agent} from "ctx-core/dialog/agent";
    import {l10n__tag$mount} from "l10n/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "election-day/spt-election-day-root.tag";
    log(logPrefix);
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    l10n__tag$mount(tag);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__dialog_agent(ctx);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-election-day-root>