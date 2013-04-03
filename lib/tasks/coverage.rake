namespace :spec do
  desc "Create rspec coverage"
  task :coverage do
    ENV['COVERAGE']="true"
    Rake::Task["spec"].execute
  end
end

# desc "Run tests with SimpleCov"
# Spec::Rake::SpecTask.new('coverage') do |t|
#   ENV['COVERAGE'] = "true"
# end