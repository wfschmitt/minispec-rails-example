require 'test_helper'

class RandomClass
end

describe RandomClass do

  it 'is subclass of ActiveSupport::TestCase' do
    self.class.superclass.must_equal ActiveSupport::TestCase
  end

end
