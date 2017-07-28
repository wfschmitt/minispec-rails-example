require 'test_helper'

describe HardWorkingJob do

  it 'is subclass of ActiveJob::TestCase' do
    self.class.superclass.must_equal ActiveJob::TestCase
  end

  it 'works' do
    HardWorkingJob.perform_later
    enqueued_jobs.wont_be_empty
  end

end
