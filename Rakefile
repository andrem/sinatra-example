require 'rubygems'
require 'cucumber/rake/task'
require 'spec/rake/spectask'

task :default => :features

desc "Run Cucumber features"
Cucumber::Rake::Task.new(:features) do |t|
      t.cucumber_opts = "--format pretty"
end

desc "Run unit tests (Rspec)"
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList['spec/*_spec.rb']
  t.spec_opts = ['--options', 'spec/spec.opts']
end

