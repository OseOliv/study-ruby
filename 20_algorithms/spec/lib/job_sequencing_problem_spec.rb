require 'spec_helper'
require 'job_sequencing_problem'

RSpec.describe 'Job Sequencing' do
  before do
    @jobs = [
      Job.new('a', 4, 20),
      Job.new('b', 1, 10),
      Job.new('c', 1, 40),
      Job.new('d', 1, 30)
    ]
  end

  it 'returns the job sequence with maximum profit' do
    result = job_sequencing(@jobs)
    expected_result = ['c', 'a']
    expect(result).to eq(expected_result)
  end
end