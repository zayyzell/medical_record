require 'test_helper'

class MedicalEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_event = medical_events(:one)
  end

  test "should get index" do
    get medical_events_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_event_url
    assert_response :success
  end

  test "should create medical_event" do
    assert_difference('MedicalEvent.count') do
      post medical_events_url, params: { medical_event: { date: @medical_event.date, description: @medical_event.description, medical_record_id: @medical_event.medical_record_id, provider: @medical_event.provider } }
    end

    assert_redirected_to medical_event_url(MedicalEvent.last)
  end

  test "should show medical_event" do
    get medical_event_url(@medical_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_event_url(@medical_event)
    assert_response :success
  end

  test "should update medical_event" do
    patch medical_event_url(@medical_event), params: { medical_event: { date: @medical_event.date, description: @medical_event.description, medical_record_id: @medical_event.medical_record_id, provider: @medical_event.provider } }
    assert_redirected_to medical_event_url(@medical_event)
  end

  test "should destroy medical_event" do
    assert_difference('MedicalEvent.count', -1) do
      delete medical_event_url(@medical_event)
    end

    assert_redirected_to medical_events_url
  end
end
