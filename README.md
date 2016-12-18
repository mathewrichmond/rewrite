# Rewrite
Peer review and revision platform.

## Setup
# OS X Sierra

Install Homebrew:
> ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

Install Ruby :
> brew install rbenv ruby-build

Add rbenv to bash so that it loads every time you open a terminal:
> echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile

Install Ruby
> rbenv install 2.3.1
> rbenv global 2.3.1
> ruby -v

Configure git:
> git config --global color.ui true
> git config --global user.name "YOUR NAME"
> git config --global user.email "YOUR@EMAIL.com"
> ssh-keygen -t rsa -C "YOUR@EMAIL.com"

Add your key to GitHup:
[Instructions](https://help.github.com/articles/generating-an-ssh-key/)

Install Rails:
> gem install rails -v 4.2.6
> rbenv rehash
> rails -v

Install PostgreSQL:
> brew install postgresql
> ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents
> launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

Install pgAdmin (optional):
> brew install Caskroom/cask/pgadmin4

Clone the project:
> git clone https://github.com/mathewrichmond/rewrite.git
> cd rewrite

Create local databases:
> createdb
> rake db:create

Launch the site:
> rails server
[Local site](http://localhost:3000)

## Style and conventions
Use complete sentences with proper punctuation for all comments and documentation. If editing an existing file follow the style already being used in that file. When creating a new file use your best judgment to follow existing patterns.