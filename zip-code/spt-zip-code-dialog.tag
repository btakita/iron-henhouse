<spt-zip-code-dialog class="dialog">
  <ctx-dialog-topbar ctx="{opts.ctx}"></ctx-dialog-topbar>
  <content>
    <form action="#" onsubmit="{form$onsubmit}">
      <label for="zip_code$input">Enter your zip code</label>
      <input type="text" id="zip_code$input" maxlength="5"/>
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
    spt-zip-code-dialog > content > form > label {
      display: block;
      padding: 0 0 1em;
    }
    spt-zip-code-dialog > content > form > input {
      height: 2em;
      width: 4em;
    }
    @media (max-width: 900px) {
      spt-early-voting-dialog {
        margin-top: inherit;
      }
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {l10n__tag$mount} from "l10n/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "zip-code/spt-zip-code-dialog.tag";
    log(logPrefix);
    l10n__tag$mount(tag);
  </script>
</spt-zip-code-dialog>