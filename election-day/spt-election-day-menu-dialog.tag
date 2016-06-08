<spt-election-day-menu-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <a href="vote-where" onclick="{a$onclick}">&nbsp;{ctx.l10n.vote_where$menu$text}&nbsp;</a>
    <a href="voting-issue" onclick="{a$onclick}">&nbsp;{ctx.l10n.voting_issue$menu$text}&nbsp;</a>
  </content>
  <style>
    ctx-dialog.spt-election-day-menu-dialog > content {
      left: auto;
      right: 0;
      width: 22rem;
    }
    ctx-dialog.spt-election-day-menu-dialog spt-election-day-menu-dialog {
      display: block;
    }
    spt-election-day-menu-dialog {
      height: 100%;
    }
    spt-election-day-menu-dialog > * {
      padding-left: 10px;
      padding-right: 10px;
    }
    spt-election-day-menu-dialog > content {
      display: block;
      padding-top: 12px;
    }
    spt-election-day-menu-dialog > content > a {
      display: block;
      padding: 12px 0;
      font-size: 18px;
    }
    @media (max-width: 900px) {
      ctx-dialog.spt-election-day-menu-dialog > content {
        left: inherit;
        right: inherit;
        width: inherit;
        height: inherit;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import {assign__l10n_agent} from "l10n/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {a$onclick: a$onclick})
        , logPrefix = "election-day/spt-election-day-menu-dialog.tag";
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
    function a$onclick(e) {
      log(`${logPrefix}|a$onclick`);
      tag.link$onclick(e);
      const ctx = tag.ctx;
      ctx.dialog_agent.remove();
    }
  </script>
</spt-election-day-menu-dialog>