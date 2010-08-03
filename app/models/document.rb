class Document < ActiveRecord::Base

	belongs_to :attachable, :polymorphic => true

	has_attachment :content_type => ['application/pdf', 'application/msword', 'text/plain'],
			:storage => :file_system,
			:max_size => 1.megabytes

	validates_as_attachment

end
