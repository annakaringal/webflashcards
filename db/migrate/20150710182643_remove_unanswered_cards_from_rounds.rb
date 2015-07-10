class RemoveUnansweredCardsFromRounds < ActiveRecord::Migration
  def change
    remove_column :rounds, :unanswered_cards
  end
end
