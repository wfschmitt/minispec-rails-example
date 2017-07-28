require 'test_helper'

describe 'Blogs integration' do

  it 'is a subclass of ActionDispatch::IntegrationTest' do
    self.class.superclass.must_equal ActionDispatch::IntegrationTest
  end

  it 'works' do
    get blogs_url
    response.must_be :success?
  end

end
