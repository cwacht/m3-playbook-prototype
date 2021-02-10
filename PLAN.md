Bookmark: Phase 1 Documentation (add links)



2 versions of data organization

1. Markdown
/m3-
Most data in .md files
Small data file with only the data that needs to be shared across pages
Some duplication
Easier to navigate
Try to use these page variables:
page.dir
page.name
page.next
page.previous


2. Data file
/m3/
Large data file with everything in it (m3-relational.yaml)
No .md files
Minimize duplication








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

