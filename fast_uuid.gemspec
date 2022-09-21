# frozen_string_literal: true

require_relative "lib/fast_uuid/version"

Gem::Specification.new do |spec|
  spec.name = "fast_uuid"
  spec.version = FastUUID::VERSION
  spec.authors = ["Juanito Fatas"]
  spec.email = ["me@juanitofatas.com"]

  spec.summary = "Generate UUID"
  spec.description = "Generate UUID"
  spec.homepage = "https://github.com/JuanitoFatas/fast_uuid"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/JuanitoFatas/fast_uuid"
  spec.metadata["changelog_uri"] = "https://github.com/JuanitoFatas/fast_uuid/releases"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match?(%r{\A(?:(?:bin|test)/|\.(?:git))})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/fast_uuid/extconf.rb"]
end
