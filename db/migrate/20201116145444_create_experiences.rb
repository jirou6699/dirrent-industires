class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string    :company
      t.string    :position
      t.string    :title
      t.text      :text
      t.integer   :price_id
      t.string    :talk_time
      t.string    :industry_id
      t.string    :occupation
      t.integer   :prefecture_id
      t.timestamps
    end
  end
end
