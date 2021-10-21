process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const browser = await puppeteer.launch({ignoreDefaultArgs: ['--disable-extensions']})
const environment = require('./environment')

module.exports = environment.toWebpackConfig()
