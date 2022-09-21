# frozen_string_literal: true

require "bundler"
require "bundler/gem_tasks"

require "rake/testtask"
require "rake/extensiontask"

require "standard/rake"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end

require "rubocop/rake_task"
RuboCop::RakeTask.new

task build: :compile

Rake::ExtensionTask.new("fast_uuid") do |ext|
  ext.lib_dir = "lib/fast_uuid"
end

task default: [:clobber, :compile, :test, "standard:fix"]
