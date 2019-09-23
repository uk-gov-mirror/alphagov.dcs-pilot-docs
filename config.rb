require 'govuk_tech_docs'

# Check for broken links
require 'html-proofer'

# Pretty URLs see https://middlemanapp.com/advanced/pretty-urls/
activate :directory_indexes

GovukTechDocs.configure(self)

after_build do |builder|
  begin
    HTMLProofer.check_directory(config[:build_dir],
      { :assume_extension => true,
        :disable_external => true,
        :allow_hash_href => true,
        :url_swap => { config[:tech_docs][:host] => "" } }).run
  rescue RuntimeError => e
    abort e.to_s
  end
end
