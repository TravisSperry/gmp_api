# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_180_707_192_537) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_storage_attachments', force: :cascade do |t|
    t.string 'name', null: false
    t.string 'record_type', null: false
    t.bigint 'record_id', null: false
    t.bigint 'blob_id', null: false
    t.datetime 'created_at', null: false
    t.index ['blob_id'], name: 'index_active_storage_attachments_on_blob_id'
    t.index %w[record_type record_id name blob_id], name: 'index_active_storage_attachments_uniqueness', unique: true
  end

  create_table 'active_storage_blobs', force: :cascade do |t|
    t.string 'key', null: false
    t.string 'filename', null: false
    t.string 'content_type'
    t.text 'metadata'
    t.bigint 'byte_size', null: false
    t.string 'checksum', null: false
    t.datetime 'created_at', null: false
    t.index ['key'], name: 'index_active_storage_blobs_on_key', unique: true
  end

  create_table 'ambassadors', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'country'
    t.string 'twitter'
    t.string 'email'
    t.text 'gmp_statement'
    t.text 'bio'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.boolean 'approved', default: false
    t.string 'website'
    t.boolean 'email_publishable'
    t.string 'job_title'
    t.text 'source'
    t.text 'additional_details'
    t.string 'profile_photo'
  end

  create_table 'exploding_dots_chapters', force: :cascade do |t|
    t.string 'teaching_guide'
    t.string 'handout'
    t.integer 'number', null: false
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['number'], name: 'index_exploding_dots_chapters_on_number', unique: true
  end

  create_table 'exploding_dots_translations', force: :cascade do |t|
    t.bigint 'chapter_id'
    t.string 'language'
    t.string 'resource'
    t.index ['chapter_id'], name: 'index_exploding_dots_translations_on_chapter_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.inet 'current_sign_in_ip'
    t.inet 'last_sign_in_ip'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.boolean 'admin', default: false
    t.string 'first_name'
    t.string 'last_name'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  create_table 'website_option_types', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'website_options', force: :cascade do |t|
    t.bigint 'website_option_type_id', null: false
    t.boolean 'active', default: false
    t.string 'value'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'key', null: false
    t.index ['website_option_type_id'], name: 'index_website_options_on_website_option_type_id'
  end

  add_foreign_key 'exploding_dots_translations', 'exploding_dots_chapters', column: 'chapter_id'
  add_foreign_key 'website_options', 'website_option_types'
end
