require 'test_helper'

class EventSignInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_sign_in = event_sign_ins(:one)
  end

  test "should get index" do
    get event_sign_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_event_sign_in_url
    assert_response :success
  end

  test "should create event_sign_in" do
    assert_difference('EventSignIn.count') do
      post event_sign_ins_url, params: { event_sign_in: { event_date: @event_sign_in.event_date, event_email: @event_sign_in.event_email, event_password: @event_sign_in.event_password } }
    end

    assert_redirected_to event_sign_in_url(EventSignIn.last)
  end

  test "should show event_sign_in" do
    get event_sign_in_url(@event_sign_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_sign_in_url(@event_sign_in)
    assert_response :success
  end

  test "should update event_sign_in" do
    patch event_sign_in_url(@event_sign_in), params: { event_sign_in: { event_date: @event_sign_in.event_date, event_email: @event_sign_in.event_email, event_password: @event_sign_in.event_password } }
    assert_redirected_to event_sign_in_url(@event_sign_in)
  end

  test "should destroy event_sign_in" do
    assert_difference('EventSignIn.count', -1) do
      delete event_sign_in_url(@event_sign_in)
    end

    assert_redirected_to event_sign_ins_url
  end
end
