class Page < ActiveRecord::Base

	has_many :documents, :as => :attachable, :dependent => :destroy

end
