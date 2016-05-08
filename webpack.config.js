const path = require("path")
    , webpack = require("webpack")
    ;
module.exports = {
  resolve: {
    root: path.resolve(__dirname),
    alias: {
      "js-console-color": "ctx-core/logger/js-console-color.webpack.js"
    }
  },
  entry: {
    "election-day": "./election-day/webpack"
  },
  output: {
    path: path.resolve(__dirname, "public/dist"),
    filename: "[name].js"
  },
  module: {
    loaders: [
      {
        test: /\.js?$/,
        loader: "babel-loader",
        exclude: /(node_modules|bower_components)/
      },
      {
        test: /\.tag?$/,
        loader: "tag-loader",
        exclude: /(node_modules|bower_components)/,
        query: {
          type: "babel"
        }
      }
    ]
  },
  plugins: [
    new webpack.optimize.DedupePlugin()
  ]
};