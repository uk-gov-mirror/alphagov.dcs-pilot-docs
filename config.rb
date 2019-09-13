require 'govuk_tech_docs'

# Pretty URLs: Change http://example.com/about-us.html to http://example.com/about-us
# Reference: https://middlemanapp.com/advanced/pretty-urls/
activate :directory_indexes

GovukTechDocs.configure(self)
