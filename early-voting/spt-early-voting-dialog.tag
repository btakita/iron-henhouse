<spt-early-voting-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <a target="_blank" href="http://voteearly.berniesandersvideo.com/?{ctx.ref$query}">&nbsp;{ctx.l10n.vote_early_instructions$menu$text}&nbsp;</a>
    <a href="/?dialog=spt-early-voting-issue-dialog" onclick="{link$onclick}">&nbsp;{ctx.l10n.early_voting_issue$menu$text}&nbsp;</a>
  </content>
  <style>
    ctx-dialog.spt-early-voting-dialog > content {
      width: 22rem;
      margin-left: -11rem;
      height: 40rem;
    }
    ctx-dialog.spt-early-voting-dialog spt-early-voting-dialog {
      display: block;
    }
    spt-early-voting-dialog {
      margin-top: 6rem;
    }
    spt-early-voting-dialog > content {
      display: block;
    }
    spt-early-voting-dialog > content > a {
      display: block;
      padding: 12px 0;
      font-weight: bold;
    }
    @media (max-width: 900px) {
      ctx-dialog.spt-early-voting-dialog > content {
        width: inherit;
        margin-left: inherit;
        height: inherit;
      }
      spt-early-voting-dialog {
        margin-top: inherit;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag,link$onclick} from "ctx-core/tag/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {link$onclick: link$onclick})
        , logPrefix = "splash/spt-early-voting-dialog.tag";
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
</spt-early-voting-dialog>