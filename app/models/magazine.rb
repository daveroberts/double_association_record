class Magazine < ActiveRecord::Base
  has_many :readers, through: :subscriptions
  has_many :subscriptions
  after_create :reader_create
  def reader_create
    r = Reader.new(name: 'auto_created_reader')
    self.readers << r
  end
end
