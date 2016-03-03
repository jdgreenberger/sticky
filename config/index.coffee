db = require './database'


environment = process.env.NODE_ENV ? 'development'


module.exports =
  env: environment

  port: process.env.PORT ? 3000

  db: db[environment]
