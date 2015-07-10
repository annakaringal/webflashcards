class AddAttemptsColumnToGuesses < ActiveRecord::Migration
  def change
    add_column :guesses, :attempts, :integer, default: 0
  end
end
