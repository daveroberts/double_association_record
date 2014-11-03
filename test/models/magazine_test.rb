require 'test_helper'

class MagazineTest < ActiveSupport::TestCase
  test "creates only one subscription" do
    m = Magazine.create(name: 'Vanity Fair')
    m.save
    assert m.subscriptions.count == 1
    r2 = Reader.new(name: 'r2d2')
    m.readers << r2
    binding.pry
    assert m.subscriptions.count == 2
  end
end
