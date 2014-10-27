class Ambiente < ActiveRecord::Base
  belongs_to :sistema_domotico
  has_many :elementos
  attr_accessor :plano
  has_attached_file :plano,
  					:storage => :dropbox,
  					dropbox_credentials: Rails.root.join("config/dropbox_config.yml"),
					:dropbox_options => {:path =>proc { |style| "ambiente_plano/#{id}-#{plano.original_filename}" } , :unique_filename => true}
	
	#validates_attachment :plano, :presence => true, :content_type => { :content_type => "image/jpg" }, :size => { :in => 0..10000.kilobytes }
	validates_attachment :plano, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]}
	#do_not_validate_attachment_file_type :plano
	#validates_attachment_content_type :plano, :content_type => /\Aimage\/.*\Z/
	#validates_attachment_content_type :plano, :content_type => /\Aimage\/.*\Z/
	#validates_attachment_file_name :plano, :matches => [/png\Z/, /jpe?g\Z/]
end
