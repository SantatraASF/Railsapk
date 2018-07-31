class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.text :bio

      
    end
  end
end
