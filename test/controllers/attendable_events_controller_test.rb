require "test_helper"

class AttendableEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attendable_events_index_url
    assert_response :success
  end

  test "should get new" do
    get attendable_events_new_url
    assert_response :success
  end
end
