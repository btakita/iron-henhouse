import {assign} from "ctx-core/object/lib";
import dom$classes from "dom-classes";
import {dom$} from "ctx-core/dom/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "voting-issue/tag";
export function voting_issue__tag$mount(tag) {
  log(`${logPrefix}|voting_issue__tag$mount`);
  assign(tag, {show$target: show$target});
  return tag;
  function show$target(e) {
    log(`${logPrefix}|voting_issue__tag$mount|show$target`);
    e.preventDefault();
    const e$target = e.target
        , selector = e$target.getAttribute("href");
    dom$classes.remove(dom$(selector, tag.root), "hide");
  }
}