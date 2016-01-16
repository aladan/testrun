require 'spec_helper'

describe Testrun do
  it 'has a version number' do
    expect(Testrun::VERSION).not_to be nil
  end

  it 'creates testrun_results.txt file"' do
    expect(Testrun.create).to eq("File testrun_results.txt created in current directory")
  end
end
