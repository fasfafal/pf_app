class User < ApplicationRecord
  has_many :free_posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :events, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum blood_type: { A: 0, B: 1, AB: 2, O: 3 }
  def own?(object)
    id == object&.current_user.id
  end
end
