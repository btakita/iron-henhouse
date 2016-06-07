import env,{env$assign,process$env$,throw$env$missing} from "ctx-core/env";
env$assign({
  zip_code$url$base: process$env$("ZIP_CODE_URL_BASE") || "https://locations.suppressthis.org/zip-codes"
});
export default env;