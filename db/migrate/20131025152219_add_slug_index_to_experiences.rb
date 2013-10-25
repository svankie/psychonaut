class AddSlugIndexToExperiences < ActiveRecord::Migration
  def change
    add_index :experiences, :slug
  end
end
