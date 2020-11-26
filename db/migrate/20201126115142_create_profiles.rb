class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string  :image
      t.string  :name
      t.integer :age
      t.string  :sex
      t.string  :school
      t.string  :major
      t.integer :graduate
      t.string  :student
      t.references :user
      t.timestamps
    end
  end
end
