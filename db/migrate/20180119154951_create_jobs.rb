class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|

      # Syntaxe pas propre pour faire la jointure :
      # t.belongs to :user

      t.references :user, null: false, foreign_key: { name: 'user_on_jobs' }

      t.string :title, null:false, limit: 150
      t.text :description, null: false
      t.integer :salary_average
      t.string :company_name

      t.timestamps
    end
  end
end
