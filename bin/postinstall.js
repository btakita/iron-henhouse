#!/usr/bin/env babel-node
import shelljs from "shelljs";
import {log,debug} from "ctx-core/logger/lib";
const logPrefix = "bin/postinstall";
log(logPrefix);
shelljs.exec("webpack && webpack --config webpack.config.min.js");