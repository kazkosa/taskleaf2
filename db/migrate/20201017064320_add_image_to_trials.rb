class AddImageToTrials < ActiveRecord::Migration[6.0]
  def change
    add_column :trials, :image, :string
  end
end
