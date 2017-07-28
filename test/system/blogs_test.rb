require "application_system_test_case"

describe 'Blogs system' do

  it 'is subclass of ApplicationSystemTestCase' do
    self.class.superclass.must_equal ApplicationSystemTestCase
  end

  it 'works' do
    visit blogs_url
    assert_selector "h1", text: "Blog"
  end

end
