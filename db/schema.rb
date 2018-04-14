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

ActiveRecord::Schema.define(version: 20180414220942) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "comisioneventos", force: :cascade do |t|
    t.integer  "evento_id"
    t.date     "vigencia"
    t.string   "tipo"
    t.integer  "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evento_id"], name: "index_comisioneventos_on_evento_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventoinstancia", force: :cascade do |t|
    t.integer  "evento_id"
    t.date     "fecha"
    t.time     "hora"
    t.string   "ciudad"
    t.string   "zona"
    t.integer  "precioinstancia"
    t.integer  "cocinero_id"
    t.integer  "cupominimo"
    t.integer  "cupomaximo"
    t.string   "estadoinstancia"
    t.string   "estadorazon"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["cocinero_id"], name: "index_eventoinstancia_on_cocinero_id"
    t.index ["evento_id"], name: "index_eventoinstancia_on_evento_id"
  end

  create_table "eventos", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "empresa_id"
    t.integer  "precio"
    t.date     "fechafinal"
    t.string   "estadoinstancia"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["empresa_id"], name: "index_eventos_on_empresa_id"
  end

  create_table "organizadors", force: :cascade do |t|
    t.string   "nombre1"
    t.string   "nombre2"
    t.string   "apellido1"
    t.string   "apellido2"
    t.integer  "empresa_id"
    t.integer  "evento_id"
    t.string   "email"
    t.string   "telefono"
    t.text     "descripcion"
    t.string   "estadoinicialeventos"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["empresa_id"], name: "index_organizadors_on_empresa_id"
    t.index ["evento_id"], name: "index_organizadors_on_evento_id"
  end

  create_table "personasreservas", force: :cascade do |t|
    t.integer  "reserva_id"
    t.string   "email"
    t.string   "telefono"
    t.string   "celular"
    t.string   "nombre1"
    t.string   "nombre2"
    t.string   "apellido1"
    t.string   "apellido2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reserva_id"], name: "index_personasreservas_on_reserva_id"
  end

  create_table "reservas", force: :cascade do |t|
    t.integer  "usuario_id"
    t.integer  "empresa_id"
    t.integer  "evento_id"
    t.integer  "eventoinstancia_id"
    t.integer  "precio"
    t.integer  "cantidadpersonas"
    t.string   "codigo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["empresa_id"], name: "index_reservas_on_empresa_id"
    t.index ["evento_id"], name: "index_reservas_on_evento_id"
    t.index ["eventoinstancia_id"], name: "index_reservas_on_eventoinstancia_id"
    t.index ["usuario_id"], name: "index_reservas_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "tipo"
    t.integer  "permission_level",       default: 1
    t.string   "telefono"
    t.string   "celular"
    t.string   "nombre1"
    t.string   "nombre2"
    t.string   "apellido1"
    t.string   "apellido2"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
