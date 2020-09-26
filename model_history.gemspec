$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "model_history/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "model_history"
  s.version     = ModelHistory::VERSION
  s.authors     = ["Lucy Gilbert"]
  s.email       = ["lucygilbert01@gmail.com"]
  s.summary     = "Records changes to ActiveRecord models"
  s.description = "Records changes to ActiveRecord models"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.10"

  s.add_development_dependency "sqlite3"
end
