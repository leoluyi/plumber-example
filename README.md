# Example Plumber App on Heroku

This is an example [Plumber][1] application, which uses [heroku-docker-r][2] for Heroku. You can use this project as a template for creating Plumber applications on Heroku.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Getting started:

```bash
# get the sources
git clone https://github.com/leoluyi/plumber_example.git
cd plumber_example

# create a new heroku application and deploye
heroku create --stack=container
git push heroku master

# view the application
heroku open
```

The following paths are provided:

* [`/hello`](plumber.R#L2)
* [`/echo?msg=MSG`](plumber.R#L10)
* [`/plot`](plumber.R#L18)

The OpenAPI (Swagger) user-interface is available via the [`/__docs__/`](app.R#L10) path.

## License

See [MIT_LICENSE](MIT_LICENSE) for details.

[1]: https://www.rplumber.io
[2]: https://github.com/virtualstaticvoid/heroku-docker-r
