PATH="$HOME/.rbenv/shims:$PATH"
benv local 2.6.6
bundle exec jekyll serve



TODO:
  * Update Naming convention
    * m3 layout should be phasePage
    * subphase should be keyTask
  * Add page content and styles
    * Overview Page
    * Resources Page
  * Remove extra stuff
    * _includes
      * hero.html
      * highlights.html
      * tagline.html
    * _layouts
      * data
      * posts
      * wide
  * Update Netlify via admin/config.yml


Bookmark: Phase 1 Activities

Learn about Netlify to enable jekyll-admin on federalist


2 versions of data organization

1. Markdown
  - path on site: /m3/m3-introduction
  - Most data in /_pages directory in many .md files
  - Small data file with only the data that needs to be shared across pages
  - Some duplication
  - Easier to navigate
  - Try to use these page variables:
    - page.dir
    - page.name
    - page.next
    - page.previous


2. Data file
  - path on site: /m3-data/introduction
  - [jekyll-datapage](https://github.com/avillafiorita/jekyll-datapage_gen)
  - Large data file with everything in it (m3-data.yaml)
  - probably over 2000 lines of data
  - No .md files
  - Minimize duplication








All pages need
phases: name, url

to build step indicator
so phases should be in site data




Phase pages need:
child activities: name, url, category, responsibleParty

to list activities, categorise activities, label activities
so activities could be in site data OR be duplicated in .md files




Activity pages need:
parent phase: name, url
previous/next phase: name, url


so
use phases from site data (.md file will specify index of parent phase)
activities could be in site data OR be duplicated in .md

