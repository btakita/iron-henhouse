<spt-zip-code-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <form-error-banner show="{ctx.tag$spt_zip_code_dialog__form$error}">{ctx.tag$spt_zip_code_dialog__form$error}</form-error-banner>
  <content>
    <form action="#" onsubmit="{form$onsubmit}">
      <label for="zip_code">Enter your zip code</label>
      <input type="text" id="zip_code" maxlength="5" value="{ctx.zip_code}"/>
    </form>
  </content>
  <style>
    ctx-dialog.spt-zip-code-dialog > content {
      width: 300px;
      margin-left: -150px;
      height: 400px;
    }
    ctx-dialog.spt-zip-code-dialog spt-zip-code-dialog {
      display: block;
    }
    spt-zip-code-dialog {
      margin-top: 6rem;
      text-align: center;
    }
    spt-zip-code-dialog > form-error-banner {
      display: block;
      overflow: hidden;
      background-color: #aa3333;
      padding: 1em 0;
    }
    spt-zip-code-dialog > content > form > label {
      display: block;
      padding: 0 0 1em;
    }
    spt-zip-code-dialog > content > form > input {
      height: 2em;
      width: 4em;
    }
    @media (max-width: 900px) {
      ctx-dialog.spt-zip-code-dialog > content {
        width: inherit;
        margin-left: inherit;
        height: inherit;
      }
      spt-zip-code-dialog {
        margin-top: inherit;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {agent$$trigger$change} from "ctx-core/agent/lib";
    import {dom$} from "ctx-core/dom/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {form$onsubmit: form$onsubmit})
        , logPrefix = "zip-code/spt-zip-code-dialog.tag";
    log(logPrefix);
    tag.on("show", on$show);
    tag.on("hide", on$hide);
    l10n__tag$mount(tag);
    function on$show() {
      log(`${logPrefix}|on$show`);
      reset();
      tag.assign__ctx$update();
      const dom$zip_code = dom$("#zip_code", tag.root);
      // TODO: remove setTimeout
      setTimeout(() => dom$zip_code.focus(), 100);
    }
    function on$hide() {
      log(`${logPrefix}|on$hide`);
      reset();
    }
    function form$onsubmit(e) {
      log(`${logPrefix}|form$onsubmit`);
      let ctx = tag.ctx;
      const dom$zip_code = dom$("#zip_code", e.target)
          , zip_code = dom$zip_code && dom$zip_code.value;
      if (zip_code && /[0-9]{5}/.test(zip_code)) {
        agent$$trigger$change(ctx, {zip_code: zip_code});
        ctx.dialog_agent.remove();
      } else {
        assign(ctx, {tag$spt_zip_code_dialog__form$error: "Enter a valid zip code"})
      }
    }
    function reset() {
      log(`${logPrefix}|reset`);
      let ctx = tag.ctx;
      assign(ctx, {tag$spt_zip_code_dialog__form$error: null});
      dom$("#zip_code", tag.root).value = ctx.zip_code || "";
    }
  </script>
</spt-zip-code-dialog>