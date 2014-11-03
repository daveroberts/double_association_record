require 'test_helper'

class MagazineTest < ActiveSupport::TestCase
  test "creates only one subscription" do
    m = Magazine.create(name: 'Vanity Fair')
    m.save
    assert m.subscriptions.count == 1
  end
end
