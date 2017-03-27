class CreateGopis < ActiveRecord::Migration
  def change
    create_table :gopis do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
