[![Circle CI](https://circleci.com/gh/anycable/heroku-anycable-go/tree/master.svg?style=svg)](https://circleci.com/gh/anycable/heroku-anycable-go/tree/master)

# Anycable-Go Buildpack

This is a [Heroku buildpack][0] for bundling a compatible [anycable-go][1]
binary with your environment.

AnyCable-Go version (default): `1.6.16-redis.1`

## Usage

This buildpack only installs `anycable-go` binary and should be used in conjunction with other buildpacks (e.g. Ruby).

```bash
heroku buildpacks:add https://github.com/yknx4/heroku-anycable-go
```

### Anycable-Go Version

To specify custom version of `anycable-go` use `HEROKU_ANYCABLE_GO_VERSION` environment variable, for example:

```sh
heroku config:set HEROKU_ANYCABLE_GO_VERSION=1.0.0 -a example-app-anycable-rpc
# or with mruby engine
heroku config:set HEROKU_ANYCABLE_GO_VERSION=1.0.0-mrb -a example-app-anycable-rpc
```

The default Redis broker release is downloaded from the `yknx4/anycable` fork.
To install a different release, set its repository together with its version:

```sh
heroku config:set \
  HEROKU_ANYCABLE_GO_REPO=https://github.com/anycable/anycable \
  HEROKU_ANYCABLE_GO_VERSION=1.6.15 \
  -a example-app-anycable-rpc
```

[0]: http://devcenter.heroku.com/articles/buildpacks
[1]: https://github.com/anycable/anycable-go
