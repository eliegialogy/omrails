class Pin < ActiveRecord::Base


	validates :description, presence: true
	validates :user_id, presence: true
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment :image, :presence => true,
  										 :content_type => { :content_type => 'image/jpeg' },
     									 :size => { :in => 0..10.megabytes }

  belongs_to :user

end
	
