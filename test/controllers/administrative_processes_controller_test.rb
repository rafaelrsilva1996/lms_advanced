require 'test_helper'

class AdministrativeProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administrative_process = administrative_processes(:one)
  end

  test "should get index" do
    get administrative_processes_url
    assert_response :success
  end

  test "should get new" do
    get new_administrative_process_url
    assert_response :success
  end

  test "should create administrative_process" do
    assert_difference('AdministrativeProcess.count') do
      post administrative_processes_url, params: { administrative_process: { age: @administrative_process.age, benefit_type: @administrative_process.benefit_type, contribution_time: @administrative_process.contribution_time, der: @administrative_process.der, movements: @administrative_process.movements, status: @administrative_process.status } }
    end

    assert_redirected_to administrative_process_url(AdministrativeProcess.last)
  end

  test "should show administrative_process" do
    get administrative_process_url(@administrative_process)
    assert_response :success
  end

  test "should get edit" do
    get edit_administrative_process_url(@administrative_process)
    assert_response :success
  end

  test "should update administrative_process" do
    patch administrative_process_url(@administrative_process), params: { administrative_process: { age: @administrative_process.age, benefit_type: @administrative_process.benefit_type, contribution_time: @administrative_process.contribution_time, der: @administrative_process.der, movements: @administrative_process.movements, status: @administrative_process.status } }
    assert_redirected_to administrative_process_url(@administrative_process)
  end

  test "should destroy administrative_process" do
    assert_difference('AdministrativeProcess.count', -1) do
      delete administrative_process_url(@administrative_process)
    end

    assert_redirected_to administrative_processes_url
  end
end
