class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :username, null: false, limit: 150
      t.string :email,    null: false

      t.timestamps
    end

    # En dehors de la création de table, on crée des index
    #       la table  la var   et si c'est unique
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
