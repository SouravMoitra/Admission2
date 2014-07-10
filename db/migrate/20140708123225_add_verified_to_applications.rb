class AddVerifiedToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :verified, :boolean, default: false
  end
end
