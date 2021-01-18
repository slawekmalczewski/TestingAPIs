class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :released_date
      t.integer :runtime
      t.string :genre
      t.string :directors
      t.string :poster
      t.string :actors
      t.string :plot
      t.float :imdbRating

      t.timestamps
    end
  end
end
