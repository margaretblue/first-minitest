require "minitest_helper"

describe ProductsHelper do
  it "converts number to currency" do
    #skip "do this later"
    number_to_currency(5).must_equal "$5.00"
  end
end
