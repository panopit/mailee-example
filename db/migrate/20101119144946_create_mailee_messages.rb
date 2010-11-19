class CreateMaileeMessages < ActiveRecord::Migration
  def self.up
    create_table :mailee_messages do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :mailee_messages
  end
end
