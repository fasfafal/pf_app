class FreePost < ApplicationRecord
      def icon
        super.force_encoding('UTF-8') rescue super
      end
end
