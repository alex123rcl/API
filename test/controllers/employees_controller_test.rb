require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url, as: :json
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { birthday: @employee.birthday, deparment: @employee.deparment, id: @employee.id, name: @employee.name, phone: @employee.phone, work_time: @employee.work_time } }, as: :json
    end

    assert_response 201
  end

  test "should show employee" do
    get employee_url(@employee), as: :json
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { birthday: @employee.birthday, deparment: @employee.deparment, id: @employee.id, name: @employee.name, phone: @employee.phone, work_time: @employee.work_time } }, as: :json
    assert_response 200
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee), as: :json
    end

    assert_response 204
  end
end
