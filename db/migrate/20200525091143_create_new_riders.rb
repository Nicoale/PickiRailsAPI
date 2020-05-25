class CreateNewRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :new_riders do |t|
      t.string :email, null:false
      t.string :password_digest, null:false

      t.timestamps
    end
  end
end
