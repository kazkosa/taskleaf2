class CreateTrials < ActiveRecord::Migration[6.0]
  def change
    create_table :trials do |t|
      t.string :name

      t.timestamps
    end
  end
end
