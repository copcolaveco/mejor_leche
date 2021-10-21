process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const environment = require('./environment')
const browser = await puppeteer.launch({ignoreDefaultArgs: ['--disable-extensions']})

module.exports = environment.toWebpackConfig()
