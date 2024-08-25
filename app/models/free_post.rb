class FreePost < ApplicationRecord
    validates :title, presence: true, length: { maximum: 100 }
    validates :body, presence: true, length: { maximum: 10}

    belongs_to :user, optional: true
    has_many :comments
      def icon
        super.force_encoding('UTF-8') rescue super
      end
end
