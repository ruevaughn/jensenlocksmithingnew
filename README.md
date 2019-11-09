# README

heroku git:remote -a jensenlocksmith
git push heroku master

Ruby 2.3.1
rbenv install 2.3.1 
rbenv local 2.3.1

Annotation 
--
annotate --exclude tests,fixtures,factories,serializers

Install
--
http://postgresapp.com/
gem install pg -v '0.18.4' -- --with-pg-config="/Applications/Postgres.app/Contents/Versions/latest/bin/pg_config"
bundle

Post-install message from sitemap_generator:
NOTE: SitemapGenerator 4.x uses a new file naming scheme which is more standards-compliant.
If you're upgrading from 3.x, please see the release note in the README:

https://github.com/kjvarga/sitemap_generator#important-changes-in-version-4

The simple answer is that your index file is now called sitemap.xml.gz
and not sitemap_index.xml.gz, but please take a look and see what else has changed.
Post-install message from yard:
--------------------------------------------------------------------------------
As of YARD v0.9.2:

RubyGems "--document=yri,yard" hooks are now supported. You can auto-configure
YARD to automatically build the yri index for installed gems by typing:

    $ yard config --gem-install-yri

See `yard config --help` for more information on RubyGems install hooks.

You can also add the following to your .gemspec to have YARD document your gem
on install:

    spec.metadata["yard.run"] = "yri" # use "yard" to build full HTML docs.
