class AddColumnToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :finalized?, :boolean, default: false
  end
end
