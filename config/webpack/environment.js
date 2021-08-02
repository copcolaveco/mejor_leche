

const { environment } = require('@rails/webpacker')

// To get an overview, have a look at `environment.loaders`.
console.log(environment.loaders)

const { merge } = require('webpack-merge')
const sassConfig = environment.loaders.find(el => el.key == 'sass')
const sassLoader = sassConfig.value.use.find(el => el.loader == 'sass-loader')

sassLoader.options = merge(sassLoader.options, {
  sassOptions: {
    indentedSyntax: true
  }
})

module.exports = environment
