<spt-voting-issue>
  <content>
    <h2>What Problems are you Facing</h2>
  </content>
  <style>

  </style>
  <script type="text/babel">
    import {assign} from "ctx-core/object/lib";
    import {fn$tag} from "ctx-core/tag/lib";
    import {log,debug} from "ctx-core/logger/lib";
    const tag = fn$tag(this)
        , logPrefix = "voting-issue/spt-voting-issue.tag";
    tag.on("mount", on$mount);
    tag.on("unmount", on$unmount);
    log(logPrefix);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
    }
  </script>
</spt-voting-issue>