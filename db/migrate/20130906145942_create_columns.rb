class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      t.belongs_to :channel
      t.string :name
      t.timestamps
    end

    create_table :articles do |t|
      t.string :title
      t.string :status
      t.text :summary
      t.text :content
      t.timestamps
    end

    create_table :columns_articles do |t|
      t.belongs_to :column
      t.belongs_to :article
    end
  end
end
