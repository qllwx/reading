require 'test_helper'

class ClassnamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classname = classnames(:one)
  end

  test "should get index" do
    get classnames_url
    assert_response :success
  end

  test "should get new" do
    get new_classname_url
    assert_response :success
  end

  test "should create classname" do
    assert_difference('Classname.count') do
      post classnames_url, params: { classname: { classname: @classname.classname } }
    end

    assert_redirected_to classname_url(Classname.last)
  end

  test "should show classname" do
    get classname_url(@classname)
    assert_response :success
  end

  test "should get edit" do
    get edit_classname_url(@classname)
    assert_response :success
  end

  test "should update classname" do
    patch classname_url(@classname), params: { classname: { classname: @classname.classname } }
    assert_redirected_to classname_url(@classname)
  end

  test "should destroy classname" do
    assert_difference('Classname.count', -1) do
      delete classname_url(@classname)
    end

    assert_redirected_to classnames_url
  end
end
