class AddDocTitleToDocuments < ActiveRecord::Migration
  def self.up
	add_column :documents, :doc_title, :string
  end

  def self.down
	remove_column :documents, :doc_title
  end
end
