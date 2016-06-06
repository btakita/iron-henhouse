<bernie-pioneer-root>
  <img class="header-img" src="/bernie/bernie-2016.png" />
  <h1>&nbsp;{ctx.l10n.tag$election_day$title}&nbsp;</h1>
  <h2>&nbsp;{ctx.l10n.tag$election_day$subtitle}&nbsp;</h2>
  <a class="action where" href="vote-where" onclick="{link$onclick}">&nbsp;{ctx.l10n.vote_where$menu$text}&nbsp;</a>
  <a class="action issue" href="voting-issue" onclick="{link$onclick}">&nbsp;{ctx.l10n.voting_issue$menu$text}&nbsp;</a>
  <spt-twitter ctx="{opts.ctx}"></spt-twitter>
  <style>
    bernie-pioneer-root {
      display: block;
      text-align: center;
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
    bernie-pioneer-root > spt-twitter {
      margin: 3rem 0 0;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "pioneer/bernie-pioneer-root.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    l10n__tag$mount(tag);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</bernie-pioneer-root>