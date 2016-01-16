require "testrun"
  namespace :testrun do
    desc "Creates txt file for results"
    task :create do
      Testrun.create
    end
    desc "Run tests in 'spec' file 'number' times"
    task :run, [:number, :spec] do |t, args|
      Testrun.run(args[:number].to_i, args[:spec])
    end
  end
