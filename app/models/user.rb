class User < ActiveRecord::Base
  attr_accessible :nickname, :provider, :uid

	def self.find_or_create_by_omniauth(omniauth)
		user = where(omniauth.slice('provider', 'uid')).first
		return user if user

		User.create({
			provider: omniauth['provider'],
			uid: omniauth['uid'],
			nickname: omniauth['info']['nickname']
		})
	end

end