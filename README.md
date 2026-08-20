[![Test](https://github.com/yknx4/heroku-anycable-go/actions/workflows/test.yml/badge.svg)](https://github.com/yknx4/heroku-anycable-go/actions/workflows/test.yml)

# Anycable-Go Buildpack

This is a [Heroku buildpack][0] for bundling a compatible [anycable-go][1]
binary with your environment.

AnyCable-Go version (default): `1.6.16-redis.1`

## Usage

This buildpack only installs `anycable-go` binary and should be used in conjunction with other buildpacks (e.g. Ruby).

```bash
heroku buildpacks:add https://github.com/yknx4/heroku-anycable-go
```

The Redis broker release is downloaded from the `yknx4/anycable` fork during
the Heroku build.

[0]: http://devcenter.heroku.com/articles/buildpacks
[1]: https://github.com/yknx4/anycable
