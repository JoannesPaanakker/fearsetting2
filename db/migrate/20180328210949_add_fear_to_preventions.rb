class AddFearToPreventions < ActiveRecord::Migration[5.1]
  def change
    add_column :preventions, :prevention, :string
    add_reference :preventions, :fear, foreign_key: true
  end
end
