class FixTitleInPost < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :string, :title
  end
end
