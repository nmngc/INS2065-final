class Resetdb < ActiveRecord::Migration[7.0]
  def change
    drop_table :books, if_exists: true
    drop_table :subjects, if_exists: true
  end
end
