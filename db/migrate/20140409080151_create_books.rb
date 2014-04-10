class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :Title
      t.string :Author
      t.string :Description

      t.timestamps
    end
  end
end
