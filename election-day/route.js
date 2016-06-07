import {assign,clone} from "ctx-core/object/lib";
import {route,fn$route as route$lib__fn$route,assign__route$$} from "ctx-core/route/lib";
import {assign__voting_issue$$} from "voting-issue/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "election-day/route";
export function assign__election_day$route$$() {
  log(`${logPrefix}|assign__election_day$route$$`);
  let ctx = assign(...arguments);
  assign__voting_issue$$(ctx);
  return assign__route$$(
    ctx,
    fn$route(ctx, {path: "", route$name: "election_day_root"}),
    fn$route(ctx, {path: "\\?*", route$name: "election_day_root"}),
    fn$route(ctx, {path: "voting-issue", route$name: "voting_issue"}),
    fn$route(ctx, {path: "voting-issue\\?*", route$name: "voting_issue"}),
    ...fn$voting_issue$route$$(ctx)
  );
}
function fn$voting_issue$route$$(ctx, ...ctx$rest$$) {
  log(`${logPrefix}|fn$voting_issue$route$$`);
  let ctx$rest = clone(...ctx$rest$$)
    , route$$;
  route$$ = ctx.voting_issue$$.reduce(
    (memo, voting_issue) => {
      const voting_issue$key = `voting_issue$${voting_issue}`
          , voting_issue$route$path$ = voting_issue$route$path(voting_issue)
          , voting_issue$path = `voting-issue/${voting_issue$route$path$}`;
      memo.push(
        fn$route(ctx, {
          path: voting_issue$path,
          route$name: voting_issue$key,
          fn: root__route}, ctx$rest)
      );
      return memo;
      function root__route(route$ctx) {
        assign(route$ctx, {
          voting_issue$key: voting_issue$key,
          voting_issue$tile: true,
          voting_issue$route$path: voting_issue$route$path$
        });
        route$ctx[`route$name__${voting_issue$key}`] = true;
      }
    }, []);
  return route$$;
}
function voting_issue$route$path(voting_issue) {
  return voting_issue.replace(/_/g, "-");
}
function fn$route(ctx, ...ctx$rest$$) {
  return route$lib__fn$route(ctx, {fn$route$ctx: fn$ctx}, ...ctx$rest$$);
}
function fn$ctx() {
  log(`${logPrefix}|fn$ctx`);
  return assign({
    route$name__election_day_root: null,
    route$name__voting_issue: null,
    voting_issue$title: null,
    voting_issue$tile: null,
    voting_issue$route$path: null
  }, ...arguments);
}