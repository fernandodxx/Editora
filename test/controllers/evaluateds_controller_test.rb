require "test_helper"

class EvaluatedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluated = evaluateds(:one)
  end

  test "should get index" do
    get evaluateds_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluated_url
    assert_response :success
  end

  test "should create evaluated" do
    assert_difference("Evaluated.count") do
      post evaluateds_url, params: { evaluated: { birthdate: @evaluated.birthdate, cpf: @evaluated.cpf, email: @evaluated.email, name: @evaluated.name, psychologist_id: @evaluated.psychologist_id } }
    end

    assert_redirected_to evaluated_url(Evaluated.last)
  end

  test "should show evaluated" do
    get evaluated_url(@evaluated)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluated_url(@evaluated)
    assert_response :success
  end

  test "should update evaluated" do
    patch evaluated_url(@evaluated), params: { evaluated: { birthdate: @evaluated.birthdate, cpf: @evaluated.cpf, email: @evaluated.email, name: @evaluated.name, psychologist_id: @evaluated.psychologist_id } }
    assert_redirected_to evaluated_url(@evaluated)
  end

  test "should destroy evaluated" do
    assert_difference("Evaluated.count", -1) do
      delete evaluated_url(@evaluated)
    end

    assert_redirected_to evaluateds_url
  end
end
