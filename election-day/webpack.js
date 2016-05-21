import "babel-polyfill";
import riot from "riot";
global.riot = riot;
import "site/webpack.spt";
import "ctx-core/dom/ctx.tag";
import "ctx-core/dom/ctx-size.tag";
import "./election-day.tag";
import "./bernie-election-day-root.tag";
import "./polling-station-select.tag";