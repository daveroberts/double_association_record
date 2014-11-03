class Magazine < ActiveRecord::Base
  after_create :reader_create
  has_many :readers, through: :subscriptions
  has_many :subscriptions
  def reader_create
    r = Reader.new(name: 'auto_created_reader')
    self.readers << r
  end
end
