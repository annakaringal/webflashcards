class AddColumnUnansweredCardsToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :unanswered_cards, :string
  end
end
