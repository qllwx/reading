require 'test_helper'

class CshesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @csh = cshes(:one)
  end

  test "should get index" do
    get cshes_url
    assert_response :success
  end

  test "should get new" do
    get new_csh_url
    assert_response :success
  end

  test "should create csh" do
    assert_difference('Csh.count') do
      post cshes_url, params: { csh: { area: @csh.area, c_name: @csh.c_name, grade: @csh.grade, name: @csh.name, period: @csh.period, pj: @csh.pj, s_no: @csh.s_no, school: @csh.school, score: @csh.score, sex: @csh.sex, sit_no: @csh.sit_no } }
    end

    assert_redirected_to csh_url(Csh.last)
  end

  test "should show csh" do
    get csh_url(@csh)
    assert_response :success
  end

  test "should get edit" do
    get edit_csh_url(@csh)
    assert_response :success
  end

  test "should update csh" do
    patch csh_url(@csh), params: { csh: { area: @csh.area, c_name: @csh.c_name, grade: @csh.grade, name: @csh.name, period: @csh.period, pj: @csh.pj, s_no: @csh.s_no, school: @csh.school, score: @csh.score, sex: @csh.sex, sit_no: @csh.sit_no } }
    assert_redirected_to csh_url(@csh)
  end

  test "should destroy csh" do
    assert_difference('Csh.count', -1) do
      delete csh_url(@csh)
    end

    assert_redirected_to cshes_url
  end
end
