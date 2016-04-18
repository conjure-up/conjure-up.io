#!/bin/bash

JADE=node_modules/.bin/jade
UGLIFY=node_modules/.bin/uglifyjs
SCSS=node_modules/.bin/node-sass
HTTPSERVE=node_modules/.bin/http-server

if [ -d public ]; then
  echo "cleaning public html"
  rm -rf public/**/*.html
  rm -rf public/{js,css}
fi

mkdir -p public/{js,css,images,files}

# render templates
echo "render templates"
$JADE -H app -o public

# process vendor js
echo "render js"
cat node_modules/jquery/dist/jquery.min.js \
    node_modules/bootstrap-sass/assets/javascripts/bootstrap.min.js \
    node_modules/typed.js/dist/typed.min.js \
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
