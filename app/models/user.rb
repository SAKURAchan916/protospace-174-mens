class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :user_name
    validates :profile
    validates :affiliation
    validates :post
  end
end
