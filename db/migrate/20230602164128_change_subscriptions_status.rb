class ChangeSubscriptionsStatus < ActiveRecord::Migration[7.0]
  def change
    change_column :subscriptions, :status, :integer
  end
end
