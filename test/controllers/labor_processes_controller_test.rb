require 'test_helper'

class LaborProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @labor_process = labor_processes(:one)
  end

  test "should get index" do
    get labor_processes_url
    assert_response :success
  end

  test "should get new" do
    get new_labor_process_url
    assert_response :success
  end

  test "should create labor_process" do
    assert_difference('LaborProcess.count') do
      post labor_processes_url, params: { labor_process: { court: @labor_process.court, distribution_date: @labor_process.distribution_date, movements: @labor_process.movements, process_category: @labor_process.process_category, process_number: @labor_process.process_number, status: @labor_process.status, stick: @labor_process.stick } }
    end

    assert_redirected_to labor_process_url(LaborProcess.last)
  end

  test "should show labor_process" do
    get labor_process_url(@labor_process)
    assert_response :success
  end

  test "should get edit" do
    get edit_labor_process_url(@labor_process)
    assert_response :success
  end

  test "should update labor_process" do
    patch labor_process_url(@labor_process), params: { labor_process: { court: @labor_process.court, distribution_date: @labor_process.distribution_date, movements: @labor_process.movements, process_category: @labor_process.process_category, process_number: @labor_process.process_number, status: @labor_process.status, stick: @labor_process.stick } }
    assert_redirected_to labor_process_url(@labor_process)
  end

  test "should destroy labor_process" do
    assert_difference('LaborProcess.count', -1) do
      delete labor_process_url(@labor_process)
    end

    assert_redirected_to labor_processes_url
  end
end
