const { environment } = require('@rails/webpacker')
const browser = await puppeteer.launch({ignoreDefaultArgs: ['--disable-extensions']})

module.exports = environment

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jquery: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)