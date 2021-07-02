
# Federalist + U.S. Web Design System + Jekyll

This project...

## Getting Started

### Running the application

#### With locally installed `node` and `ruby`
    $ npm install
    $ bundle install
    $ npm start 
    OR
    $ bundle exec jekyll serve

To build but not serve the site, run `npm run build` or `bundle exec jekyll build`.

## Modifications

To generate json files of page data, this project uses a custom jekyll plugin. It is located in `/_plugins/json_generator.rb`. The json files are generated in the `/static-api` directory and match the paths of the pages they represent. This runs every time the site is generated, so it does not require any extra steps.

### Example:
A page located at
`domain.com/path/to/page`
would have a json file at
`domain.com/static-api/path/to/page/data.json`