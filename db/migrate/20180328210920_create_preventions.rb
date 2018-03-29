class CreatePreventions < ActiveRecord::Migration[5.1]
  def change
    create_table :preventions do |t|
      t.string :prevention_descr

      t.timestamps
    end
  end
end
