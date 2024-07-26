class Job
  attr_accessor :id, :deadline, :profit

  def initialize(id, deadline, profit)
    @id = id
    @deadline = deadline
    @profit = profit
  end
end

def job_sequencing(jobs)
  jobs.sort_by! { |job| -job.profit }
  max_deadline = jobs.map(&:deadline).max
  slots = Array.new(max_deadline, nil)
  result = []
  jobs.each do |job|
    (job.deadline - 1).downto(0) do |slot|
      next unless slots[slot].nil?

      slots[slot] = job
      result << job.id
      break
    end
  end

  result
end


