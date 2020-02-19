require 'test_helper'

class CreateEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_event = create_events(:one)
  end

  test "should get index" do
    get create_events_url, as: :json
    assert_response :success
  end

  test "should create create_event" do
    assert_difference('CreateEvent.count') do
      post create_events_url, params: { create_event: { allDay: @create_event.allDay, end: @create_event.end, postId: @create_event.postId, start: @create_event.start, title: @create_event.title } }, as: :json
    end

    assert_response 201
  end

  test "should show create_event" do
    get create_event_url(@create_event), as: :json
    assert_response :success
  end

  test "should update create_event" do
    patch create_event_url(@create_event), params: { create_event: { allDay: @create_event.allDay, end: @create_event.end, postId: @create_event.postId, start: @create_event.start, title: @create_event.title } }, as: :json
    assert_response 200
  end

  test "should destroy create_event" do
    assert_difference('CreateEvent.count', -1) do
      delete create_event_url(@create_event), as: :json
    end

    assert_response 204
  end
end
