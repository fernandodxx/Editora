class CreateAppliedInstruments < ActiveRecord::Migration[7.1]
  def change
    create_table :applied_instruments do |t|
      t.integer :answer_1
      t.integer :answer_2
      t.integer :answer_3
      t.integer :answer_4
      t.integer :answer_5
      
      t.boolean :finished, null: false, default: false
      
      t.references :evaluated, null: false, foreign_key: true
      t.references :instrument, null: false, foreign_key: true

      t.timestamps
    end
  end
end
