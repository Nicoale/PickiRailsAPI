class CreateLogins < ActiveRecord::Migration[6.0]
  def change
    create_table :logins do |t|
      t.string :email
      t.string :password
      t.references :new_riders, null: false, foreign_key: true

      t.timestamps
    end
  end
end
