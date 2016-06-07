import {assign,clone} from "ctx-core/object/lib";
import {route,fn$route as route$lib__fn$route,assign__route$$} from "ctx-core/route/lib";
import {assign__voting_issue$$} from "voting-issue/lib";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "pioneer/route";
export function assign__pioneer$route$$() {
  log(`${logPrefix}|assign__pioneer$route$$`);
  let ctx = assign(...arguments);
  assign__voting_issue$$(ctx);
  return assign__route$$(
    ctx,
    fn$route(ctx, {path: "", route$name: "pioneer_root"}),
    fn$route(ctx, {path: "vote-where", route$name: "vote_where"}),
    fn$route(ctx, {path: "voting-issue", route$name: "voting_issue"}),
    ...fn$voting_issue$route$$(ctx),
    fn$route(ctx, {path: "polling_stations", route$name: "polling_station$$"}),
    fn$route(ctx, {path: "polling_stations/*", route$name: "polling_station", fn: route$polling_station$fn(ctx)})
  );
}
function route$polling_station$fn(ctx) {
  log(`${logPrefix}|route$polling_station$fn`);
  return (route$ctx, polling_station$id) => {
    log(`${logPrefix}|route$polling_station$fn|route`, polling_station$id);
    route$ctx.polling_station$id = polling_station$id || null;
  }
}
function fn$voting_issue$route$$(ctx, ...ctx$rest$$) {
  log(`${logPrefix}|fn$voting_issue$route$$`);
  let ctx$rest = clone(...ctx$rest$$)
    , route$$;
  route$$ = ctx.voting_issue$$.reduce(
    (memo, voting_issue) => {
      const voting_issue$key = `voting_issue$${voting_issue}`
          , voting_issue$route$path$ = voting_issue$route$path(voting_issue)
          , your_rights$path = `voting-issue/${voting_issue$route$path$}/your-rights`;
      memo.push(
        fn$route(ctx, {
          path: `voting-issue/${voting_issue$route$path$}`,
          route$name: voting_issue$key,
          fn: root__route}, ctx$rest),
        fn$route(ctx, {
          path: your_rights$path,
          route$name: `${voting_issue$key}$your_rights`,
          fn: your_rights__route}, ctx$rest),
        fn$route(ctx, {
          path: `voting-issue/${voting_issue$route$path$}/video`,
          route$name: `${voting_issue$key}$video`,
          fn: video__route}, ctx$rest),
        fn$route(ctx, {
          path: `voting-issue/${voting_issue$route$path$}/help`,
          route$name: `${voting_issue$key}$help`,
          fn: help__route}, ctx$rest)
      );
      return memo;
      function root__route(route$ctx) {
        route(ctx, your_rights$path);
      }
      function your_rights__route(route$ctx) {
        log(`${logPrefix}|fn$voting_issue$route$$|your_rights`);
        route$ctx.route$name__voting_issue$your_rights = true;
        route2(...arguments);
      }
      function video__route(route$ctx) {
        log(`${logPrefix}|fn$voting_issue$route$$|video`);
        route$ctx.route$name__voting_issue$video = true;
        route2(...arguments);
      }
      function help__route(route$ctx) {
        log(`${logPrefix}|fn$voting_issue$route$$|help`);
        route$ctx.route$name__voting_issue$help = true;
        route2(...arguments);
      }
      function route2(route$ctx) {
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
  const voting_issue$$ = ctx.voting_issue$$;
  return assign({
      route$name__pioneer_root: null,
      route$name__vote_where: null,
      route$name__voting_issue: null,
      voting_issue$title: null,
      voting_issue$tile: null,
      voting_issue$route$path: null,
      route$name__voting_issue$your_rights: null,
      route$name__voting_issue$video: null,
      route$name__voting_issue$help: null,
      route$name__polling_station$$: null,
      route$name__polling_station: null,
      polling_station$id: null
    },
    voting_issue$$.reduce(
      (memo, voting_issue) => {
        memo[`route$name__voting_issue$${voting_issue}`] =
          memo[`route$name__voting_issue$${voting_issue}$your_rights`] =
          memo[`route$name__voting_issue$${voting_issue}$video`] =
          memo[`route$name__voting_issue$${voting_issue}$help`] =
          null;
        return memo;
    }, {}), ...arguments);
}