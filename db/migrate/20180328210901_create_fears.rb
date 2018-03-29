class CreateFears < ActiveRecord::Migration[5.1]
  def change
    create_table :fears do |t|
      t.string :fear_descr

      t.timestamps
    end
  end
end
