require "test_helper"

class Evaluations::SetpTwoControllerTest < ActionDispatch::IntegrationTest
  setup { @instrument_id = applied_instruments(:one).signed_id }

  test "should update user" do
    get evaluations_step_two_url(@instrument_id)
    assert_response :success

    patch evaluations_step_two_url(@instrument_id), params: { applied_instrument: { answer_1: 1, answer_2: 2, answer_3: 3, answer_4: 4, answer_5: 4, } }, headers: @headers
    assert_redirected_to evaluations_step_two_url(@instrument_id)
  end
end