class CreateIndustries < ActiveRecord::Migration[6.0]
  def change
    create_table :industries do |t|
      t.string :name
      t.string :ancestry
      t.timestamps
    end
  end
end
