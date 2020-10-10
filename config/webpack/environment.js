const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')
const vue = require('./loaders/vue')

environment.plugins.prepend('VueLoaderPlugin', new VueLoaderPlugin())
environment.loaders.prepend('vue', vue)
// module.exports = environment

var webpack = require('webpack');

// Vue.js フル版（Compiler入り）
// environment.config.resolve.alias = { 'vue$': 'vue/dist/vue.esm.js' }後で確認2020/10/07

environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jquery: 'jquery',
    'window.jQuery': 'jquery',
    Popper: 'popper.js'
  })
)
module.exports = environment
