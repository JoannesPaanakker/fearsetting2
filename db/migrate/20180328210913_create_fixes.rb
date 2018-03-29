class CreateFixes < ActiveRecord::Migration[5.1]
  def change
    create_table :fixes do |t|
      t.string :fix_descr

      t.timestamps
    end
  end
end
