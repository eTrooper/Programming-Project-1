require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get transaction_params" do
    get transaction_params
    assert_response :success
  end
end
