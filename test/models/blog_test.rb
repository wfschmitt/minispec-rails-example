require 'test_helper'

describe Blog do

  it 'is subclass of ActiveSupport::TestCase' do
    self.class.superclass.must_equal ActiveSupport::TestCase
  end

  it 'works' do
    Blog.count.must_equal 2
  end

end
