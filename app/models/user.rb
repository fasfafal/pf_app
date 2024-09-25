class User < ApplicationRecord
  has_many :free_posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :events, dependent: :destroy
  mount_uploader :avatar , AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[line]
  enum blood_type: { A: 0, B: 1, AB: 2, O: 3 }
  def own?(object)
    id == object&.current_user.id
  end

  def social_profile(provider)
    social_profiles.select { |sp| sp.provider  == provider.to_s }.first
  end

  def set_values(omniauth)
    return if provider.to_s != omniauth["provider"].to_s || uid != omniauth["uid"]
    credentials = omniauth["credentials"]
    info = omniauth["info"]
    access_token = credentials["refresh_token"]
    access_secret = credential.to_json
    credentials = credentials.to_json
    name = info["name"]
  end

  def set_values_by_raw_info(raw_info)
    self.raw_info = raw_info.to_json
    self.save!
  end
end
