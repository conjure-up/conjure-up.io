#!/bin/bash

PUG=node_modules/.bin/pug
UGLIFY=node_modules/.bin/uglifyjs
SCSS=node_modules/.bin/node-sass
HTTPSERVE=node_modules/.bin/http-server

if [ ! -e /usr/bin/asciidoctor ]; then
  sudo apt install asciidoctor
fi

dpkg -l ruby-pygments.rb >/dev/null

if [ $? -ne 0 ]; then
  sudo apt install ruby-pygments.rb
fi

if [ -d public ]; then
  echo "cleaning public html"
  rm -rf public/**/*.html
  rm -rf public/{js,css}
  rm -rf public/docs
fi

mkdir -p public/{js,css,images,files}

# render templates
echo "render templates"
$PUG app/index.pug -o public/

# process vendor js
echo "render js"
cat node_modules/jquery/dist/jquery.min.js \
    node_modules/bootstrap-sass/assets/javascripts/bootstrap.min.js \
    > public/js/app.js
$UGLIFY app/js/main.js >> public/js/app.js

# process css
echo "render scss"
cat app/scss/app.scss | $SCSS --output-style compressed > public/css/app.css

# copy assets
echo "copying assets"
rsync -az app/images public
rsync -az node_modules/bootstrap-sass/assets/fonts/bootstrap/*.{ttf,woff,eot,svg,woff2} public/fonts
rsync -az node_modules/font-awesome/fonts/*.{ttf,otf,eot,svg,woff,woff2} public/fonts
rsync -az app/setup.sh public


echo "generating documentation"
mkdir -p public/docs/en/users
asciidoctor -b html docs/en/users/index.adoc -o public/docs/en/users/index.html

mkdir -p public/docs/en/developers
asciidoctor -b html docs/en/developers/index.adoc -o public/docs/en/developers/index.html
