
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "google-civic/version"

Gem::Specification.new do |spec|
  spec.name          = "google-civic-ruby"
  spec.version       = Google::Civic::Ruby::VERSION
  spec.authors       = ["Josh Mejia"]
  spec.email         = ["joshua.mejia@gmail.com"]

  spec.summary       = %q{A simple wrapper for the Google Civic API.}
  spec.description   = %q{Primary purpose is to interface with the Google Civic API. The gem was built to make accessing civic data easier with newer devs in mind. If you are looking for something more robust, try the `google-api-ruby-client` built by Google.}
  spec.homepage      = "https://github.com/jmejia/google-civic-ruby"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug", "~> 10.0"
end
