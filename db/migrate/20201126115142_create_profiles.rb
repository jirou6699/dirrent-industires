class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string  :name
      t.integer :age_id
      t.string  :sex
      t.string  :school
      t.string  :major
      t.integer :graduate_id
      t.string  :student
      t.references :user
      t.timestamps
    end
  end
end
