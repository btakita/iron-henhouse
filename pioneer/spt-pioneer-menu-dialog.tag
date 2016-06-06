<spt-pioneer-menu-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <a href="/" onclick="{a$onclick}">&nbsp;Suppress This&nbsp;</a>
    <a href="vote-where" onclick="{a$onclick}">&nbsp;{ctx.l10n.vote_where$menu$text}&nbsp;</a>
    <a href="voting-issue" onclick="{a$onclick}">&nbsp;{ctx.l10n.voting_issue$menu$text}&nbsp;</a>
  </content>
  <style>
    spt-pioneer-menu-dialog > * {
      padding-left: 10px;
      padding-right: 10px;
    }
    spt-pioneer-menu-dialog > content {
      display: block;
      padding-top: 12px;
    }
    spt-pioneer-menu-dialog > content > a {
      display: block;
      padding: 12px 0;
      font-size: 18px;
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import {assign__l10n_agent} from "l10n/agent";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {a$onclick: a$onclick})
        , logPrefix = "site/spt-pioneer-menu-dialog.tag";
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
</spt-pioneer-menu-dialog>