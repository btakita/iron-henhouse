<polling-station-select>
  <title>Select your polling station</title>
  <content class="{
    loading: !ctx.polling_station$$,
    empty: ctx.polling_station$$ && !polling_station$$.length}">
    <a
      href="polling_stations/{id}"
      class="{selected: ctx.polling_station$id === id}"
      onclick="{link$onclick}"
      each="{ctx.polling_station$$}">
      <name>{name}</name>
      <address>{address}</address>
      <address2>{address2}</address2>
      <city>{city}</city>
      <zip>{zip}</zip>
    </a>
  </content>
  <style>
    polling-station-select {
      display: block;
    }
    polling-station-select > * {
      display: block;
      width: 100%;
    }
    polling-station-select > title {
      padding: 10px;
      font-style: italic;
    }
    polling-station-select > content > a {
      display: block;
      overflow: hidden;
      clear: both;
      padding: 10px;
      border: 1px dotted #333333;
      text-decoration: none;
      color: #111111;
    }
    polling-station-select > content > a.selected,polling-station-select > content > a:hover {
      background: #dddddd;
      font-weight: bold;
    }
    polling-station-select > content > a > * {
      display: block;
      font-style: normal;
    }
    polling-station-select > content > a > city, polling-station-select > content > * > zip {
      float: left;
    }
    polling-station-select > content > a > city:after {
      content: ",\00a0";
    }
  </style>
  <script type="text/babel">
    import {tag$assign__opts,link$onclick} from "ctx-core/tag/lib";
    import {assign} from "ctx-core/object/lib";
    import {assign__polling_station$$_agent} from "election-day/agent";
    import {url$anchor$assign} from "ctx-core/dom/lib";
    import riot from "riot";
    import {log,debug} from "ctx-core/logger/lib";
    const self = tag$assign__opts(this, {
            assign__ctx$update: assign__ctx$update,
            self$update: self$update,
            link$onclick: link$onclick})
        , logPrefix = "election-day/polling-station-select.tag";
    log(logPrefix);
    self.on("mount", on$mount);
    self.on("unmount", on$unmount);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__polling_station$$_agent(ctx);
      ctx.polling_station$$_agent.on("change", polling_station$$_agent$on$change);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      let ctx = self.ctx;
      ctx.polling_station$$_agent.off("change", polling_station$$_agent$on$change);
    }
    function polling_station$$_agent$on$change() {
      log(`${logPrefix}|polling_station$$_agent$on$change`);
      assign__ctx$update();
    }
    function onchange(e) {
      log(`${logPrefix}|onchange`);
      const target$value = e.target.value;
      riot.route(`polling_stations/${target$value}`);
    }
    function assign__ctx$update() {
      log(`${logPrefix}|assign__ctx$update`);
      let ctx = assign(self.ctx, ...arguments);
      assign(self, {ctx: ctx});
      self$update();
    }
    function self$update() {
      log(`${logPrefix}|self$update`);
      self.update();
    }
  </script>
</polling-station-select>