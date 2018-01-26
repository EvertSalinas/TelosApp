require 'test_helper'

class ActivityInstancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_instance = activity_instances(:one)
  end

  test "should get index" do
    get activity_instances_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_instance_url
    assert_response :success
  end

  test "should create activity_instance" do
    assert_difference('ActivityInstance.count') do
      post activity_instances_url, params: { activity_instance: { activity_id: @activity_instance.activity_id, amount: @activity_instance.amount, date: @activity_instance.date, description: @activity_instance.description } }
    end

    assert_redirected_to activity_instance_url(ActivityInstance.last)
  end

  test "should show activity_instance" do
    get activity_instance_url(@activity_instance)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_instance_url(@activity_instance)
    assert_response :success
  end

  test "should update activity_instance" do
    patch activity_instance_url(@activity_instance), params: { activity_instance: { activity_id: @activity_instance.activity_id, amount: @activity_instance.amount, date: @activity_instance.date, description: @activity_instance.description } }
    assert_redirected_to activity_instance_url(@activity_instance)
  end

  test "should destroy activity_instance" do
    assert_difference('ActivityInstance.count', -1) do
      delete activity_instance_url(@activity_instance)
    end

    assert_redirected_to activity_instances_url
  end
end
