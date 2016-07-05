class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :dishes
    before_save :remove_blanks_from_arrays

    private
    def remove_blanks_from_arrays
        self.ethnicities.delete_if &:empty?
    end

    # enum ethnicities: [ :Mexican, :Italian, :Chinese, :Thai, :American, :French, :Spanish, :Indian, :Japanese ]
end
