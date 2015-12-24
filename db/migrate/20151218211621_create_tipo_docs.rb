class CreateTipoDocs < ActiveRecord::Migration
  def change
    create_table :tipo_docs do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
