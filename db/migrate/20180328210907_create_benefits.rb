class CreateBenefits < ActiveRecord::Migration[5.1]
  def change
    create_table :benefits do |t|
      t.string :benefit_descr

      t.timestamps
    end
  end
end
