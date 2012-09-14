# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120913072727) do

  create_table "designations", :force => true do |t|
    t.string   "name",       :limit => 64, :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "designations", ["name"], :name => "index_designations_on_name"

  create_table "employee_projects", :force => true do |t|
    t.integer  "employee_id", :null => false
    t.integer  "project_id",  :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "employee_projects", ["employee_id", "project_id"], :name => "index_employee_projects_on_employee_id_and_project_id"
  add_index "employee_projects", ["project_id"], :name => "employee_projects_project_id_fk"

  create_table "employees", :force => true do |t|
    t.string   "name",           :limit => 64, :null => false
    t.integer  "age",            :limit => 3,  :null => false
    t.string   "contact_no",     :limit => 11
    t.string   "email",          :limit => 64, :null => false
    t.integer  "designation_id",               :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "employees", ["designation_id"], :name => "employees_designation_id_fk"
  add_index "employees", ["email"], :name => "index_employees_on_email"
  add_index "employees", ["name", "email"], :name => "index_employees_on_name_and_email", :unique => true
  add_index "employees", ["name"], :name => "index_employees_on_name"

  create_table "projects", :force => true do |t|
    t.string   "name",           :limit => 64, :null => false
    t.text     "description"
    t.integer  "estimated_cost", :limit => 8
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "projects", ["end_date"], :name => "index_projects_on_end_date"
  add_index "projects", ["name"], :name => "index_projects_on_name"
  add_index "projects", ["start_date", "end_date"], :name => "index_projects_on_start_date_and_end_date"
  add_index "projects", ["start_date"], :name => "index_projects_on_start_date"

  add_foreign_key "employee_projects", "employees", :name => "employee_projects_employee_id_fk"
  add_foreign_key "employee_projects", "projects", :name => "employee_projects_project_id_fk"

  add_foreign_key "employees", "designations", :name => "employees_designation_id_fk"

end
