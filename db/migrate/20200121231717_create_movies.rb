class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :url
      t.date :function_from
      t.date :function_to

      t.timestamps
    end
  end
end
