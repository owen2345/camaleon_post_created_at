$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "camaleon_post_created_at/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "camaleon_post_created_at"
  s.version     = CamaleonPostCreatedAt::VERSION
  s.authors     = ["Owen Peredo"]
  s.email       = ["owenperedo@gmail.com"]
  s.homepage    = ""
  s.summary     = "Permit to customize the created at date of post contents"
  s.description = "Camaleon CMS plugin to permit to customize the created at date of post contents"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "camaleon_cms", '>= 2.3.5'

  s.add_development_dependency "sqlite3"
end
