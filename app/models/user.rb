class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :dishes

    has_attached_file :photo, styles: { :small => "400x400>", :thumb => "200x200>"}
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

    before_save :remove_blanks_from_arrays

    private
    def remove_blanks_from_arrays
        self.ethnicities.delete_if &:empty?
    end

    # enum ethnicities: [ :Mexican, :Italian, :Chinese, :Thai, :American, :French, :Spanish, :Indian, :Japanese ]
end
