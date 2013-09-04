class CreateRpnNotifications < ActiveRecord::Migration
  def change
    create_table :rpn_apns_notifications do |t|
      t.string :device_token
      t.integer :config_id
      t.string :config_type
      t.text :data
      t.integer :error
      t.datetime :sent_at

      t.timestamps
    end
    add_index :rpn_apns_notifications, :config_id

    create_table :rpn_gcm_notifications do |t|
      t.integer :config_id
      t.string :config_type
      t.string :error
      t.text :data
      t.datetime :sent_at

      t.timestamps
    end
    add_index :rpn_gcm_notifications, :config_id

    create_table :rpn_apns_bulk_notifications do |t|
      t.text :device_tokens
      t.integer :config_id
      t.string :config_type
      t.text :data
      t.integer :failed
      t.integer :succeeded
      t.datetime :sent_at

      t.timestamps
    end
    add_index :rpn_apns_bulk_notifications, :config_id

    create_table :rpn_gcm_bulk_notifications do |t|
      t.text :device_tokens
      t.integer :config_id
      t.string :config_type
      t.text :data
      t.integer :failed
      t.integer :succeeded
      t.datetime :sent_at

      t.timestamps
    end
  end
end
