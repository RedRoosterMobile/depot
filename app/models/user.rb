class User < ActiveRecord::Base
	validates :name, presence: true, uniqueness: true
	has_secure_password

	private
		def ensure_an_admin_remains
			if User.count.zero?
				raise "cannot delete4 last user"
			end
		end
end
