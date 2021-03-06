# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_17_095940) do

  create_table "active_admin_comments", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "auteurs", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "caracteristiques", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "sigle"
    t.string "description"
    t.string "valeur"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "droit_evenements", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.boolean "creer"
    t.boolean "lire"
    t.boolean "modifier"
    t.boolean "supprimer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "droit_experts", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.boolean "creer"
    t.boolean "lire"
    t.boolean "modifier"
    t.boolean "supprimer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "droit_ressources", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.boolean "creer"
    t.boolean "lire"
    t.boolean "modifier"
    t.boolean "supprimer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "evenement_langues", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "langue_id", null: false
    t.bigint "evenement_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evenement_id"], name: "index_evenement_langues_on_evenement_id"
    t.index ["langue_id"], name: "index_evenement_langues_on_langue_id"
  end

  create_table "evenement_mot_cles", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "mot_cle_id", null: false
    t.bigint "evenement_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evenement_id"], name: "index_evenement_mot_cles_on_evenement_id"
    t.index ["mot_cle_id"], name: "index_evenement_mot_cles_on_mot_cle_id"
  end

  create_table "evenement_pays", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "pay_id", null: false
    t.bigint "evenement_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evenement_id"], name: "index_evenement_pays_on_evenement_id"
    t.index ["pay_id"], name: "index_evenement_pays_on_pay_id"
  end

  create_table "evenement_profiles", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "evenement_id", null: false
    t.bigint "profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evenement_id"], name: "index_evenement_profiles_on_evenement_id"
    t.index ["profile_id"], name: "index_evenement_profiles_on_profile_id"
  end

  create_table "evenement_systeme_irrigues", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "evenement_id", null: false
    t.bigint "type_systeme_irrigue_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evenement_id"], name: "index_evenement_systeme_irrigues_on_evenement_id"
    t.index ["type_systeme_irrigue_id"], name: "index_evenement_systeme_irrigues_on_type_systeme_irrigue_id"
  end

  create_table "evenement_thematiques", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "evenement_id", null: false
    t.bigint "thematique_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evenement_id"], name: "index_evenement_thematiques_on_evenement_id"
    t.index ["thematique_id"], name: "index_evenement_thematiques_on_thematique_id"
  end

  create_table "evenement_unite_administratives", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "evenement_id", null: false
    t.bigint "unite_administrative_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["evenement_id"], name: "index_evenement_unite_administratives_on_evenement_id"
    t.index ["unite_administrative_id"], name: "index_evenement_unite_administratives_on_unite_administrative_id"
  end

  create_table "evenements", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.datetime "date_debut", precision: 6, null: false
    t.datetime "date_fin", precision: 6, null: false
    t.string "heure_debut"
    t.string "heure_fin"
    t.string "lieu"
    t.string "organisateur"
    t.string "objectif"
    t.string "cible"
    t.text "description"
    t.string "url"
    t.bigint "type_evenement_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["type_evenement_id"], name: "index_evenements_on_type_evenement_id"
  end

  create_table "expert_sous_types", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "sous_type_expert_id", null: false
    t.bigint "utilisateur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sous_type_expert_id"], name: "index_expert_sous_types_on_sous_type_expert_id"
    t.index ["utilisateur_id"], name: "index_expert_sous_types_on_utilisateur_id"
  end

  create_table "images", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "file"
    t.string "taille"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "langues", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "code"
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "le_formats", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "code"
    t.string "libelle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "localite_localites", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "localite_id", null: false
    t.bigint "sous_localite_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["localite_id"], name: "index_localite_localites_on_localite_id"
    t.index ["sous_localite_id"], name: "index_localite_localites_on_sous_localite_id"
  end

  create_table "localites", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "type_localite"
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mot_cles", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pays", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "code"
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pays_regions", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "pay_id", null: false
    t.bigint "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pay_id"], name: "index_pays_regions_on_pay_id"
    t.index ["region_id"], name: "index_pays_regions_on_region_id"
  end

  create_table "pays_unite_administratives", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "pay_id", null: false
    t.bigint "unite_administrative_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pay_id"], name: "index_pays_unite_administratives_on_pay_id"
    t.index ["unite_administrative_id"], name: "index_pays_unite_administratives_on_unite_administrative_id"
  end

  create_table "pjointes", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "file"
    t.string "taille"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profiles", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "droit_expert_id"
    t.bigint "droit_evenement_id"
    t.bigint "droit_ressource_id"
    t.index ["droit_evenement_id"], name: "fk_droit_evenement_id"
    t.index ["droit_expert_id"], name: "fk_droit_expert_id"
    t.index ["droit_ressource_id"], name: "fk_droit_ressource_id"
  end

  create_table "region_localites", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "localite_id", null: false
    t.bigint "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["localite_id"], name: "index_region_localites_on_localite_id"
    t.index ["region_id"], name: "index_region_localites_on_region_id"
  end

  create_table "regions", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "description"
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ressource_auteurs", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "auteur_id", null: false
    t.bigint "ressource_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["auteur_id"], name: "index_ressource_auteurs_on_auteur_id"
    t.index ["ressource_id"], name: "index_ressource_auteurs_on_ressource_id"
  end

  create_table "ressource_imgs", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "ressource_id", null: false
    t.bigint "image_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["image_id"], name: "index_ressource_imgs_on_image_id"
    t.index ["ressource_id"], name: "index_ressource_imgs_on_ressource_id"
  end

  create_table "ressource_langues", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "langue_id", null: false
    t.bigint "ressource_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["langue_id"], name: "index_ressource_langues_on_langue_id"
    t.index ["ressource_id"], name: "index_ressource_langues_on_ressource_id"
  end

  create_table "ressource_localites", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "ressource_id", null: false
    t.bigint "sous_localite_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ressource_id"], name: "index_ressource_localites_on_ressource_id"
    t.index ["sous_localite_id"], name: "index_ressource_localites_on_sous_localite_id"
  end

  create_table "ressource_mot_cles", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "mot_cle_id"
    t.bigint "ressource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mot_cle_id"], name: "index_ressource_mot_cles_on_mot_cle_id"
    t.index ["ressource_id"], name: "index_ressource_mot_cles_on_ressource_id"
  end

  create_table "ressource_pays", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "ressource_id", null: false
    t.bigint "pay_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pay_id"], name: "index_ressource_pays_on_pay_id"
    t.index ["ressource_id"], name: "index_ressource_pays_on_ressource_id"
  end

  create_table "ressource_pjointes", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "ressource_id", null: false
    t.bigint "pjointe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pjointe_id"], name: "index_ressource_pjointes_on_pjointe_id"
    t.index ["ressource_id"], name: "index_ressource_pjointes_on_ressource_id"
  end

  create_table "ressource_profiles", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "profile_id"
    t.bigint "ressource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_ressource_profiles_on_profile_id"
    t.index ["ressource_id"], name: "index_ressource_profiles_on_ressource_id"
  end

  create_table "ressource_sous_ressources", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "ressource_id", null: false
    t.bigint "sous_type_ressource_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ressource_id"], name: "index_ressource_sous_ressources_on_ressource_id"
    t.index ["sous_type_ressource_id"], name: "index_ressource_sous_ressources_on_sous_type_ressource_id"
  end

  create_table "ressource_systeme_irrigues", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "type_systeme_irrigue_id"
    t.bigint "ressource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ressource_id"], name: "index_ressource_systeme_irrigues_on_ressource_id"
    t.index ["type_systeme_irrigue_id"], name: "index_ressource_systeme_irrigues_on_type_systeme_irrigue_id"
  end

  create_table "ressource_thematiques", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "ressource_id", null: false
    t.bigint "thematique_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ressource_id"], name: "index_ressource_thematiques_on_ressource_id"
    t.index ["thematique_id"], name: "index_ressource_thematiques_on_thematique_id"
  end

  create_table "ressource_unite_administratives", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "unite_administrative_id"
    t.bigint "ressource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ressource_id"], name: "index_ressource_unite_administratives_on_ressource_id"
    t.index ["unite_administrative_id"], name: "index_ressource_unite_administratives_on_unite_administrative_id"
  end

  create_table "ressource_votes", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "ressource_id", null: false
    t.bigint "vote_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ressource_id"], name: "index_ressource_votes_on_ressource_id"
    t.index ["vote_id"], name: "index_ressource_votes_on_vote_id"
  end

  create_table "ressources", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "nom"
    t.datetime "derniere_date_consulte", precision: 6, default: "2021-10-06 12:24:23", null: false
    t.datetime "date_debut_publication", null: false
    t.datetime "date_fin_publication", null: false
    t.string "statut"
    t.string "video"
    t.string "image"
    t.text "description"
    t.string "url"
    t.integer "nombre_vue", default: 0
    t.integer "nombre_telecharge", default: 0
    t.bigint "le_format_id", null: false
    t.bigint "utilisateur_id", null: false
    t.bigint "type_ressource_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "date_edition"
    t.index ["le_format_id"], name: "index_ressources_on_le_format_id"
    t.index ["type_ressource_id"], name: "index_ressources_on_type_ressource_id"
    t.index ["utilisateur_id"], name: "index_ressources_on_utilisateur_id"
  end

  create_table "ses", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.text "condition"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sous_localites", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "type_localite"
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sous_thematiques", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sous_type_experts", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "sigle"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sous_type_ressources", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "description"
    t.string "sigle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialites", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "code"
    t.string "designation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "structures", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "sigle"
    t.string "adresse"
    t.string "telephone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "thematique_sous_thematiques", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "thematique_id", null: false
    t.bigint "sous_thematique_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sous_thematique_id"], name: "index_thematique_sous_thematiques_on_sous_thematique_id"
    t.index ["thematique_id"], name: "index_thematique_sous_thematiques_on_thematique_id"
  end

  create_table "thematiques", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "description"
  end

  create_table "type_evenements", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_expert_sous", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "type_expert_id", null: false
    t.bigint "sous_type_expert_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sous_type_expert_id"], name: "index_type_expert_sous_on_sous_type_expert_id"
    t.index ["type_expert_id"], name: "index_type_expert_sous_on_type_expert_id"
  end

  create_table "type_experts", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "sigle"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_ressources", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "sigle"
    t.string "icon", limit: 15
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_sous_experts", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "sous_type_expert_id", null: false
    t.bigint "type_expert_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sous_type_expert_id"], name: "index_type_sous_experts_on_sous_type_expert_id"
    t.index ["type_expert_id"], name: "index_type_sous_experts_on_type_expert_id"
  end

  create_table "type_sous_type_ressources", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "sous_type_ressource_id", null: false
    t.bigint "type_ressource_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sous_type_ressource_id"], name: "index_type_sous_type_ressources_on_sous_type_ressource_id"
    t.index ["type_ressource_id"], name: "index_type_sous_type_ressources_on_type_ressource_id"
  end

  create_table "type_systeme_irrigue_cqs", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "caracteristique_id", null: false
    t.bigint "type_systeme_irrigue_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["caracteristique_id"], name: "index_type_systeme_irrigue_cqs_on_caracteristique_id"
    t.index ["type_systeme_irrigue_id"], name: "index_type_systeme_irrigue_cqs_on_type_systeme_irrigue_id"
  end

  create_table "type_systeme_irrigues", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "sigle"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "unite_administratives", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "libelle"
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "utilisateur_langues", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "langue_id", null: false
    t.bigint "utilisateur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["langue_id"], name: "index_utilisateur_langues_on_langue_id"
    t.index ["utilisateur_id"], name: "index_utilisateur_langues_on_utilisateur_id"
  end

  create_table "utilisateur_pays", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "pay_id", null: false
    t.bigint "utilisateur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pay_id"], name: "index_utilisateur_pays_on_pay_id"
    t.index ["utilisateur_id"], name: "index_utilisateur_pays_on_utilisateur_id"
  end

  create_table "utilisateur_specialites", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "utilisateur_id", null: false
    t.bigint "specialite_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["specialite_id"], name: "index_utilisateur_specialites_on_specialite_id"
    t.index ["utilisateur_id"], name: "index_utilisateur_specialites_on_utilisateur_id"
  end

  create_table "utilisateur_thematiques", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "thematique_id", null: false
    t.bigint "utilisateur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["thematique_id"], name: "index_utilisateur_thematiques_on_thematique_id"
    t.index ["utilisateur_id"], name: "index_utilisateur_thematiques_on_utilisateur_id"
  end

  create_table "utilisateur_type_s_irrigues", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.bigint "type_systeme_irrigue_id", null: false
    t.bigint "utilisateur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type_systeme_irrigue_id"], name: "index_utilisateur_type_s_irrigues_on_type_systeme_irrigue_id"
    t.index ["utilisateur_id"], name: "index_utilisateur_type_s_irrigues_on_utilisateur_id"
  end

  create_table "utilisateurs", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "telephone"
    t.string "email"
    t.string "nom"
    t.string "prenom"
    t.string "fonction"
    t.string "password"
    t.string "status"
    t.bigint "structure_id"
    t.bigint "categorie_id"
    t.bigint "profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "type_expert_id"
    t.text "adresse"
    t.integer "user_id"
    t.index ["categorie_id"], name: "index_utilisateurs_on_categorie_id"
    t.index ["profile_id"], name: "index_utilisateurs_on_profile_id"
    t.index ["structure_id"], name: "index_utilisateurs_on_structure_id"
    t.index ["type_expert_id"], name: "fk_type_expert_id"
  end

  create_table "votes", charset: "utf8", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.text "description"
    t.integer "user_id"
    t.integer "etoile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
