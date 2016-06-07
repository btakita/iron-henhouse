<vote-where>
  <div id="_vit"></div>
  <style>
    vote-where {
      display: block;
      position: relative;
      width: 640px;
      left: 50%;
      margin-left: -320px;
      overflow: hidden;
    }
    vote-where #_vit {
    }
  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {dialog__tag$mount} from "dialog/tag";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "vote-where/vote-where.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    dialog__tag$mount(tag);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      if (window.vit) {
        window.vit.load({
          modal: true,
          title: 'Voting Information Tool',
          width: '640px', height: '480px',
          colors: { 'header': '#229acd', 'landscapeBackgroundHeader': '#228a9d' },
          language: 'en'
        })
      }
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</vote-where>