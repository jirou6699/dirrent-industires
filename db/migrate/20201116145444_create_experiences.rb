class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string    :company,          null: false
      t.string    :position,         null: false
      t.string    :title,            null: false
      t.text      :text
      t.integer   :price_id,         null: false
      t.string    :talk
      t.string    :talk_time
      t.string    :industry_id
      t.string    :occupation
      t.integer   :prefecture_id
      t.timestamps
    end
  end
end
