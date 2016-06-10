# rails-starter-with-docker-compose

## What's this?

rails-starter-with-docker-compose is a starter for rails with docker-compose.

1. Fork this repository
1. Rename your repository
1. Do 'How to setup'
1. Enjoy Rails!

## How to setup

### Build the project

```sh
$ docker-compose run web rails new . --database=postgresql --skip --skip-gemfile --skip-bundle

$ docker-compose build
```

### Boot the project

```sh
$ docker-compose up
```

### Create the database

```sh
$ docker-compose run web rake db:create
```

## FAQ

### change git remote origin

```sh
$ git remote set-url origin git@git.example.com:hoge/fuga.git
```

### rake

```sh
$ docker-compose run web rake db:...
```

### stop

```sh
$ docker-compose stop
```
