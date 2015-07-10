class CreateGuesses < ActiveRecord::Migration
  def change

    create_table :guesses do |t|
      t.string :user_answer
      t.boolean :correct, default: false
      t.integer :round_id, null: false
      t.integer :card_id, null: false

      t.timestamps
    end
  end
end
