import "babel-polyfill";
import riot from "riot";
global.riot = riot;
import "ctx-core/dom/ctx.tag";
import "election-day/spt-election-day.tag";
import "election-day/spt-election-day-root.tag";
import "election-day/spt-election-day-banner.tag";
import "banner/spt-banner.tag";
import "site/spt-about-us.tag";
import "site/spt-twitter.tag";
import "election-day/spt-election-day-dialog.tag";
import "election-day/spt-election-day-menu-dialog.tag";
import "ctx-core/dialog/ctx-dialog.tag";
import "ctx-core/dialog/ctx-dialog-topbar.tag";
import "ctx-core/dialog/ctx-dialog-position-center.tag";
import "voting-issue/voting-issue.tag";
import "voting-issue/voting-issue-tile.tag";
import "voting-issue/voting-issue.webpack";
import "vote-where/vote-where.tag";
import "check-registration/spt-check-registration-dialog.tag";
import "zip-code/spt-zip-code-dialog.tag";