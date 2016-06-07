<spt-zip-code-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <form-error-banner show="{ctx.tag$spt_zip_code_dialog__form$error}">{ctx.tag$spt_zip_code_dialog__form$error}</form-error-banner>
  <content>
    <zip-code-form show="{!ctx.route$query$map.dialog_nav}">
      <form action="#" onsubmit="{co$form$onsubmit}">
        <label for="zip_code">Your registered zip code</label>
        <input type="text" id="zip_code" maxlength="5" value="{ctx.zip_code}"/>
        <button>Save</button>
      </form>
      <reset show="{ctx.zip_code}" onclick="{reset$onclick}">Reset</reset>
    </zip-code-form>
    <out-of-state show="{!ctx.route$in_process && ctx.route$query$map.dialog_nav == 'out-of-state'}">
      <p>
        This app is intended for people in the State of California for the June 7 Presidential Primary.
        If you are looking for information about voting in your state,
        please visit <a target="_blank" href="{ctx.out_of_state$url}">{ctx.out_of_state$text}</a>.
      </p>
      <p>
        Click &quot;<a href="/" onclick="{link$onclick}">Skip</a>&quot; to proceed.
      </p>
    </out-of-state>
  </content>
  <style>
    ctx-dialog.spt-zip-code-dialog > content {
      width: 30rem;
      margin-left: -15rem;
      height: 40rem;
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
    spt-zip-code-dialog > content > zip-code-form > form > label {
      display: block;
      padding: 0 0 1em;
    }
    spt-zip-code-dialog > content > zip-code-form > form > input, spt-zip-code-dialog > content > zip-code-form > form > button {
      display: inline-block;
      height: 2em;
      width: 4em;
    }
    spt-zip-code-dialog > content > zip-code-form > reset {
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
    import {route} from "ctx-core/route/lib";
    import co from "co";
    import parseUri from "parseUri";
    import {assign__http$headers,contentType$json} from "ctx-core/http/lib";
    import {assign__out_of_state$url$map} from "state/lib";
    import {xhr} from "ctx-core/xhr/lib";
    import {error$throw} from "ctx-core/error/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this, {
            co$form$onsubmit: co$form$onsubmit,
            reset$onclick: reset$onclick})
        , logPrefix = "zip-code/spt-zip-code-dialog.tag";
    let ctx = tag.ctx;
    log(logPrefix);
    tag.on("mount", on$mount);
    tag.on("show", on$show);
    tag.on("hide", on$hide);
    l10n__tag$mount(tag);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      assign__out_of_state$url$map(ctx);
    }
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
        let zip_code$ctx = {
              zip_code: zip_code,
              zip_code$location: zip_code$location
            }
          , route$path;
        if (zip_code$location) {
          log(`${logPrefix}|form$onsubmit|zip_code$location`);
          const state_abbr = zip_code$location.state_abbr;
          if (state_abbr === "CA") {
            // message success
            assign(zip_code$ctx, {
              dialog$closing: true,
              out_of_state$url: null,
              out_of_state$text: null
            });
            route$path = "/";
          } else {
            const out_of_state$url$map = ctx.out_of_state$url$map
                , out_of_state$url = out_of_state$url$map[state_abbr] || out_of_state$url$map.__default
                , out_of_state$text = parseUri(out_of_state$url).host;
            assign(zip_code$ctx, {
              dialog$closing: true,
              out_of_state$url: out_of_state$url,
              out_of_state$text: out_of_state$text
            });
            route$path = "?dialog=spt-zip-code-dialog&dialog_nav=out-of-state";
          }
          route(ctx, route$path);
          agent$$trigger$change(ctx, zip_code$ctx);
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