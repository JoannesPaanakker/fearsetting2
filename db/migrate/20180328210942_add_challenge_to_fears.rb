class AddChallengeToFears < ActiveRecord::Migration[5.1]
  def change
    add_column :fears, :fear, :string
    add_reference :fears, :challenge, foreign_key: true
  end
end
