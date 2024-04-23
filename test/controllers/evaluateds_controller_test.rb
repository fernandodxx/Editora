require "test_helper"

class EvaluatedsControllerTest < ActionDispatch::IntegrationTest
  setup { @headers = sign_in(:fernando) }

  test "should get index" do
    get evaluateds_url, headers: @headers
    assert_response :success
  end

  test "should create evaluated" do
    get new_evaluated_url, headers: @headers
    assert_response :success

    assert_difference("Evaluated.count") do
      post evaluated_url, params: { evaluated: { name: "Nicolas", cpf: "123.123.123-12", email: "nicolasalmeida123@gmail.com", birthdate: "2004-01-01" } }, headers: @headers
    end

    follow_redirect! headers: @headers
    assert_select "p", /Nicolas/
  end

  test "should update evaluated " do
    get edit_evaluated_url(evaluateds(:sebastiao)), headers: @headers
    assert_response :success

    patch evaluated_url(evaluateds(:sebastiao)), params: { evaluated: { name: "Testing" } }, headers: @headers

    follow_redirect! headers: @headers
    assert_select "p", /Testing/
  end

  test "should destroy evaluated " do
    assert_difference("Evaluated.count", -1) do
      delete evaluated_path(evaluateds(:sebastiao)), headers: @headers
    end

    assert_redirected_to evaluateds_url
  end
end
