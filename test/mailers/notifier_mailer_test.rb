require 'test_helper'

describe NotifierMailer do

  it 'is a subclass of ActionMailer::TestCase' do
    self.class.superclass.must_equal ActionMailer::TestCase
  end

  it 'works' do
    NotifierMailer.announcement('we are live').deliver
    ActionMailer::Base.deliveries.wont_be_empty
  end

end
