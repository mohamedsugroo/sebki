class Company < ApplicationRecord

	has_attached_file :logo,
		styles: {
			thumb: '100x100>',
			square: '200x200#',
			medium: '300x300>'
		}

	validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/


	belongs_to :user


	extend FriendlyId
	friendly_id :slug_candidates, use: :slugged

	def slug_candidates
      [
        :name,
        [:name, :date_i],
      ]
    end

	def date_i
		self.created_at.to_i
	end


end
