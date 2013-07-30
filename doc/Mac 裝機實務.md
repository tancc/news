## Environment:

1. ruby version: Ruby 2.0.0
2. rails version: Rails 3.2.13
3. Database: MySQL

## Pre-Requirement:

(If you have installed any thing below, skip this step.)

### Mac OS X:

- [Command Line Tools](https://developer.apple.com/downloads/index.action)

- [Homebrew](http://mxcl.github.io/homebrew/):

```
$ ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
```

- Git:

```
$ brew update
$ brew install git
```

- Others:

```
$ brew tap homebrew/dupes
$ brew install apple-gcc42
$ brew install readline
$ brew link readline
```

- [RVM](http://rvm.io/):

```
$ \curl -L https://get.rvm.io | bash -s stable
$ . ~/.profile
$ source ~/.profile
```

[Zsh user](http://rvm.io/integration/zsh)

- Ruby:

```
$ rvm install 2.0.0
$ rvm requirements
$ rvm 2.0.0 --default
```

- MySQL:

Be careful, this step should set password. Don't just copy and paste.

```
$ brew install mysql
$ unset TMPDIR
$ mysql_install_db --verbose --user=`root` --basedir="$(brew --prefix mysql)"
$ mysql.server start
$ mysqladmin -u root password 'setyourpassword'
```

Run MySQL when your computer open:
```
$ mkdir -p ~/Library/LaunchAgents
$ find /usr/local/Cellar/mysql/ -name "homebrew.mxcl.mysql.plist" -exec cp {} ~/Library/LaunchAgents/ \;
$ launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
```

- ImageMagick

```
$ brew install imagemagick
```

- Gem needed to install:

```
$ gem install mysql2
$ gem install powder
```

Now we use rails 3.2.13, so using `bundle install` command will install the correct version of rails.
However, If you want to install rails to you system, run command below:

Rails 3.2 version

```
gem install rails --version=3.2.13
```

Rails 4 version

```
$ gem install rails
```

- Pow Server:

```
$ curl get.pow.cx | sh
```