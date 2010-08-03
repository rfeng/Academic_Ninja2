class RemovePageIdFromDocuments < ActiveRecord::Migration
  def self.up
	remove_column :documents, :page_id
  end

  def self.down
	add_column :documents, :page_id, :integer
  end
end
