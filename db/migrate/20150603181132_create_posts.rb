class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :headline
      t.string :subhead
      t.string :byline
      t.text :main_body
    end
  end
end
