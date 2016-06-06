<spt-zip-code-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <form-error-banner show="{ctx.tag$spt_zip_code_dialog__form$error}">{ctx.tag$spt_zip_code_dialog__form$error}</form-error-banner>
  <content>
    <form action="#" onsubmit="{co$form$onsubmit}">
      <label for="zip_code">Your registered zip code</label>
      <input type="text" id="zip_code" maxlength="5" value="{ctx.zip_code}"/>
    </form>
    <reset show="{ctx.zip_code}" onclick="{reset$onclick}">Reset</reset>
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
    spt-zip-code-dialog > content > reset {
      display: block;
      overflow: hidden;
      cursor: pointer;
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
    import {assign,clone} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {agent$$trigger$change} from "ctx-core/agent/lib";
    import {dom$} from "ctx-core/dom/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import co from "co";
    import {assign__http$headers,contentType$json} from "ctx-core/http/lib";
    import {xhr} from "ctx-core/xhr/lib";
    import {error$throw} from "ctx-core/error/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {
            co$form$onsubmit: co$form$onsubmit,
            reset$onclick: reset$onclick})
        , logPrefix = "zip-code/spt-zip-code-dialog.tag";
    let ctx = tag.ctx;
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
    function co$form$onsubmit(e) {
      log(`${logPrefix}|co$form$onsubmit`);
      co.wrap(form$onsubmit)(e)
        .catch(error$ctx => error$throw(tag.ctx, error$ctx));
    }
    function *form$onsubmit(e) {
      log(`${logPrefix}|form$onsubmit`);
      const dom$zip_code = dom$("#zip_code", e.target)
          , zip_code = dom$zip_code && dom$zip_code.value;
      if (zip_code && /[0-9]{5}/.test(zip_code)) {
        const zip_code$location = yield fn$zip_code$location({zip_code: zip_code});
        if (zip_code$location) {
          log(`${logPrefix}|form$onsubmit|zip_code$location`);
          agent$$trigger$change(ctx, {zip_code: zip_code, zip_code$location: zip_code$location});
          ctx.dialog_agent.remove();
        } else {
          log(`${logPrefix}|form$onsubmit|else`);
          tag.assign__ctx$update({tag$spt_zip_code_dialog__form$error: "This zip code does not match any US zip codes"});
        }
      } else {
        tag.assign__ctx$update({tag$spt_zip_code_dialog__form$error: "Enter a valid zip code"});
      }
    }
    function *fn$zip_code$location() {
      log(`${logPrefix}|zip_code$location`);
      let ctx$clone = clone(ctx, ...arguments);
      try {
        const response$ctx = yield xhr.http$get(ctx, assign__http$headers({
                  url: `${ctx$clone.zip_code$url$base}/${ctx$clone.zip_code}`
                }, contentType$json, {"Access-Control-Allow-Origin": "*"}))
            , response = response$ctx.response;
        if (response.ok) {
          return yield response.json();
        } else {
          return null;
        }
        return yield response.status();
      } catch(error$ctx) {
        log(`${logPrefix}|zip_code$location|catch`, error$ctx);
        const response$status = error$ctx.response$status;
        if (response$status >= 400 && response$status <= 499) {
          return null;
        } else {
          error$throw(ctx, error$ctx);
        }
      }
    }
    function reset$onclick() {
      log(`${logPrefix}|reset$onclick`);
      agent$$trigger$change(ctx, {zip_code: null});
      ctx.dialog_agent.remove();
    }
    function reset() {
      log(`${logPrefix}|reset`);
      assign(ctx, {tag$spt_zip_code_dialog__form$error: null});
      dom$("#zip_code", tag.root).value = ctx.zip_code || "";
    }
  </script>
</spt-zip-code-dialog>