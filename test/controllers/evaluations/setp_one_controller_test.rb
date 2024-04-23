require "test_helper"

class Evaluations::SetpOneControllerTest < ActionDispatch::IntegrationTest
  setup { @instrument_id = applied_instruments(:one).signed_id }

  test "should update user" do
    get evaluations_step_one_url(@instrument_id)
    assert_response :success

    patch evaluations_step_one_url(@instrument_id), params: { evaluated: { name: "Testing" } }, headers: @headers
    assert_redirected_to evaluations_step_two_url(@instrument_id)
  end
end