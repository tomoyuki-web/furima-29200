class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :burden 
  belongs_to_active_hash :delivery_day
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :status

  has_one_attached :image
  belongs_to :user
  has_one :order

  with_options presence: true do
    validates :name
    validates :details
    validates :genre_id
    validates :status_id
    validates :burden_id
    validates :prefecture_id
    validates :delivery_day_id
    validates :image
  end

    with_options numericality: { other_than: 1 } do
      validates :genre_id
      validates :status_id
      validates :burden_id
      validates :prefecture_id
      validates :delivery_day_id
    end

      validates :price, presence: true, format: { with: /\A[0-9]+\z/ }, 
                        numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999}
      
end
