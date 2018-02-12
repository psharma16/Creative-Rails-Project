class Item < ApplicationRecord
	def completed?
		status == 1
	end

end
