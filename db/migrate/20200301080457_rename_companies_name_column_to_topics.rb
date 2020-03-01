class RenameCompaniesNameColumnToTopics < ActiveRecord::Migration[5.2]
  def change
    rename_column :topics, :companies_id, :company_id
  end
end
