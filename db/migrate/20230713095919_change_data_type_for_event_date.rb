class ChangeDataTypeForEventDate < ActiveRecord::Migration[7.0]
  def change
  end
  change_table :events do |t|
    t.change :date, :date
  end
end
