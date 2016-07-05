class Dish < ActiveRecord::Base
    belongs_to :user
    before_save :remove_blanks_from_arrays

    private
    def remove_blanks_from_arrays
        self.ingredients.delete_if &:empty?
        self.category.delete_if {|category| category == ""}
        self.tags.delete_if {|tag| tag == ""}
    end

end
