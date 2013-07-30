## Set up environment:

- Clone the project to your computer:

```
$ git clone git@github.com:garylai1990/news.git
```

- Install git flow:

[Git Flow Tutorial](http://nvie.com/posts/a-successful-git-branching-model/)

Mac OS X:

```
$ brew install git-flow
```

Linux:

[Link](https://github.com/nvie/gitflow/wiki/Linux)

Windows:

[Link](https://github.com/nvie/gitflow/wiki/Windows)

- Set git flow:

[Git Flow](http://nvie.com/posts/a-successful-git-branching-model/)

```
$ git flow init
```
- Run bundle

```
$ bundle install
```

- Get some yaml files:

You will need to get some yaml files:

```
application.yml
```

- Create database.yml

Example:

```
development:
  adapter: mysql2
  encoding: utf8
  reconnect: false
  database: new_news_development
  pool: 5
  username: root
  password: <<yourmysqlpassword>>
  socket: /tmp/mysql.sock
```

- Create database

```
$ rake db:create
```

- Import database

```
$ mysql -uroot -p new_news_development < <sqlfilepath>
```

- Migrate database:

```
$ rake db:migrate
```

## Browser

- Set Powder Server: (This is only for Mac)

```
$ powder link
```

- Open Browser and go to this link:

[http://news.dev/](http://news.dev/)

- Linux:

```
$ rails s
```
- Open Browser and go to http://localhost:3000/
