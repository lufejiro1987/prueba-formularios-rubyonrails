class CreateEmpanadas < ActiveRecord::Migration[6.0]
  def change
    create_table :empanadas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
