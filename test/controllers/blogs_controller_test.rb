require 'test_helper'

describe BlogsController do
  setup do
    @blog = blogs(:one)
  end

  it 'is subclass of ActionDispatch::IntegrationTest' do
    self.class.superclass.must_equal ActionDispatch::IntegrationTest
  end

  it "should get index" do
    get blogs_url
    response.must_be :success?
  end

  it "should get new" do
    get new_blog_url
    response.must_be :success?
  end

  it "should create blog" do
    assert_difference('Blog.count') do
      post blogs_url, params: { blog: { title: @blog.title } }
    end

    response.must_be :redirect?
  end

  it "should show blog" do
    get blog_url(@blog)
    response.must_be :success?
  end

  it "should get edit" do
    get edit_blog_url(@blog)
    response.must_be :success?
  end

  it "should update blog" do
    patch blog_url(@blog), params: { blog: { title: @blog.title } }
    response.must_be :redirect?
  end

  it "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete blog_url(@blog)
    end

    response.must_be :redirect?
  end
end
