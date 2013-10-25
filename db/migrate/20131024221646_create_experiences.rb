class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :pseudonym
      t.string :substance
      t.string :dose
      t.integer :votes
      t.date :happened_at
      t.string :email
      t.text :report

      t.timestamps
    end
  end
end
