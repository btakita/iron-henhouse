<polling-station-select>
  <title onclick="{title$onclick}">Select your polling station&hellip;</title>
  <content class="{
    loading: !ctx.polling_station$$,
    empty: ctx.polling_station$$ && !polling_station$$.length,
    present: ctx.polling_station$$ && polling_station$$.length,
    collapse: !!(ctx.polling_station$id)}">
    <polling-station
      class="{selected: ctx.polling_station$id === id}"
      each="{ctx.polling_station$$}">
      <a
        href="polling_stations/{id}"
        onclick="{link$onclick}">
        <name>{name}</name>
        <address>{address}</address>
        <address2>{address2}</address2>
        <city>{city}</city>
        <zip>{zip}</zip>
      </a>
      <a href="https://maps.google.com/?q={encodeURIComponent(`${address},${city},${state},${zip}`)}" target="_blank" class="map">map</a>
    </polling-station>
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
      cursor: pointer;
    }
    polling-station-select > content.collapse > polling-station {
      display: none;
    }
    polling-station-select > content.collapse > polling-station.selected {
      display: block;
    }
    polling-station-select > content > polling-station {
      display: block;
      overflow: hidden;
      padding: 10px;
      border: 1px dotted #333333;
    }
    polling-station-select > content > polling-station.selected,polling-station-select > content > polling-station:hover {
      background: #dddddd;
      font-weight: bold;
    }
    polling-station-select > content > polling-station > a {
      display: block;
      overflow: hidden;
      clear: both;
      text-decoration: none;
      color: #111111;
    }
    polling-station-select > content > polling-station > a > * {
      display: block;
      font-style: normal;
    }
    polling-station-select > content > polling-station > a > city, polling-station-select > content > polling-station > a > zip {
      float: left;
    }
    polling-station-select > content > polling-station > a > city:after {
      content: ",\00a0";
    }
    polling-station-select > content > polling-station > a.map {
      text-decoration: underline;
      display: none;
    }
    polling-station-select > content.collapse > polling-station > a.map {
      display: block;
    }
  </style>
  <script type="text/babel">
    import {tag$assign__opts,link$onclick} from "ctx-core/tag/lib";
    import {assign} from "ctx-core/object/lib";
    import {
      assign__polling_station$$_agent,
      assign__polling_station$id_agent} from "election-day/agent";
    import {$,url$anchor$assign} from "ctx-core/dom/lib";
    import dom$classes from "dom-classes";
    import riot from "riot";
    import {log,debug} from "ctx-core/logger/lib";
    const self = tag$assign__opts(this, {
            assign__ctx$update: assign__ctx$update,
            self$update: self$update,
            title$onclick: title$onclick,
            link$onclick: link$onclick})
        , logPrefix = "election-day/polling-station-select.tag";
    let dom$content;
    log(logPrefix);
    self.on("mount", on$mount);
    self.on("unmount", on$unmount);
    function on$mount() {
      log(`${logPrefix}|on$mount`);
      let ctx = self.ctx;
      assign__polling_station$$_agent(ctx);
      assign__polling_station$id_agent(ctx);
      ctx.polling_station$$_agent.on("change", polling_station$$_agent$on$change);
      ctx.polling_station$id_agent.on("change", polling_station$id_agent$on$change);
      dom$content = $("content", self.root);
    }
    function on$unmount() {
      log(`${logPrefix}|on$unmount`);
      let ctx = self.ctx;
      ctx.polling_station$$_agent.off("change", polling_station$$_agent$on$change);
      ctx.polling_station$id_agent.off("change", polling_station$id_agent$on$change);
    }
    function polling_station$$_agent$on$change() {
      log(`${logPrefix}|polling_station$$_agent$on$change`);
      assign__ctx$update();
    }
    function polling_station$id_agent$on$change() {
      log(`${logPrefix}|polling_station$id_agent$on$change`);
      assign__ctx$update();
      const ctx = self.ctx
          , dom$classes$op = ctx.polling_station$id ? "add" : "remove";
      dom$classes[dom$classes$op](dom$content, "collapse");
    }
    function title$onclick() {
      log(`${logPrefix}|title$onclick`);
      dom$classes.toggle(dom$content, "collapse");
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