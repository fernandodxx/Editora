class CreateEvaluateds < ActiveRecord::Migration[7.1]
  def change
    create_table :evaluateds do |t|
      t.string :name,    null: false
      t.string :cpf,     null: false
      t.string :email,   null: false
      t.date :birthdate, null: false
      t.references :psychologist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
