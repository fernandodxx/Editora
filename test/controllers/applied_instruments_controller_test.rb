require "test_helper"

class AppliedInstrumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headers = sign_in(:fernando)
    @evaluated_user = evaluated_users(:sebastiao)
  end

  test "should get index" do
    get evaluated_user_applied_instruments_url(@evaluated_user), headers: @headers
    assert_response :success
  end

  test "should get show" do
    get evaluated_user_applied_instrument_url(@evaluated_user, applied_instruments(:one)), headers: @headers
    assert_response :success
    assert_select "p", /6 pontos/
  end

  test "should not get show when unfinished" do
    get evaluated_user_applied_instrument_url(@evaluated_user, applied_instruments(:two)), headers: @headers
    assert_response :not_found
  end

  test "should apply instrument" do
    get evaluated_user_applied_instruments_url(@evaluated_user), headers: @headers
    assert_response :success

    assert_difference("AppliedInstrument.count") do
      post evaluated_user_applied_instruments_url(@evaluated_user), params: { applied_instrument: { instrument_id: instruments(:one).id } }, headers: @headers
    end

    assert_enqueued_email_with AppliedInstrumentMailer.with(applied_instrument: AppliedInstrument.last), :invitation
    assert_redirected_to evaluated_user_applied_instruments_url(@evaluated_user)
  end
end