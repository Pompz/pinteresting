class Pin < ActiveRecord::Base
	belongs_to :user

has_attached_file :image, :styles => { thumb: "100x100#",
                                       medium: "500x500>"
                                       },
                          :convert_options => { all: "-background black -compose Copy -gravity center"}


	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates :description, presence: true
	validates :image, presence: true

end
