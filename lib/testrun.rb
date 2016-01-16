require "testrun/version"

module Testrun
  def self.create
    %x{touch testrun_results.txt}
    "File testrun_results.txt created in current directory"
  end
  def self.run(number, spec)
    %x{ 
        > testrun_results.txt
        n=#{number}
        for i in $(seq 1 $n)
        do
          echo "*** Run number $i ***" >> testrun_results.txt;
          rspec #{spec} | grep failure >> testrun_results.txt;
          echo '\r' >> testrun_results.txt;
        done
      }
  end
end
