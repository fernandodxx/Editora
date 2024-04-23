class CreatePsychologists < ActiveRecord::Migration[7.1]
  def change
    create_table :psychologists do |t|
      t.string :user_name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
