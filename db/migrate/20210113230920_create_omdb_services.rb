class CreateOmdbServices < ActiveRecord::Migration[6.1]
  def change
    create_table :omdb_services do |t|

      t.timestamps
    end
  end
end
