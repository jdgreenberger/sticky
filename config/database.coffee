module.exports =
  development:
    username: process.env.USER
    password: null
    database: "tdp_development"
    host: "127.0.0.1"
    dialect: "postgres"

  test:
    username: process.env.USER
    password: null
    database: "tdp_test"
    host: "127.0.0.1"
    dialect: "postgres"
    logging: false

  production:
    username: process.env.USER
    password: null
    database: "tdp_production"
    host: "127.0.0.1"
    dialect: "postgres"
