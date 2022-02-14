Rails.application.routes.draw do
  resources :droit_evenements
  resources :droit_experts
  resources :droit_ressources
  resources :type_sous_experts
  resources :expert_sous_types
  resources :sous_type_experts
  resources :type_experts
  resources :evenement_mot_cles
  resources :evenement_pays
  resources :evenement_langues
  resources :utilisateur_type_s_irrigues
  resources :utilisateur_thematiques
  resources :utilisateur_pays
  resources :utilisateur_langues
  resources :ressource_auteurs
  resources :auteurs
  resources :pays_unite_administratives
  resources :ressource_sous_ressources
  resources :type_sous_type_ressources
  resources :sous_type_ressources
  resources :ressource_pays
  resources :ressource_localites
  resources :pays_regions
  resources :region_localites
  resources :localite_localites
  resources :pays
  resources :regions
  resources :localites
  resources :sous_localites
  resources :ressource_pjointes
  resources :ressource_imgs
  resources :pjointes
  resources :images
  resources :thematique_sous_thematiques
  resources :sous_thematiques
  resources :evenement_profiles
  resources :evenement_unite_administratives
  resources :evenement_thematiques
  resources :evenement_systeme_irrigues
  resources :type_systeme_irrigue_cqs
  resources :ressource_thematiques
  resources :utilisateur_specialites
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :evenements
  resources :ressources
  resources :thematiques
  resources :type_systeme_irrigues
  resources :utilisateurs
  resources :profiles
  resources :unite_administratives
  resources :caracteristiques
  resources :type_evenements
  resources :type_ressources
  resources :le_formats
  resources :langues
  resources :mot_cles
  resources :specialites
  resources :categories
  resources :structures
  resources :ressource_profiles
  resources :ressource_langues
  resources :ressource_unite_administratives
  resources :ressource_systeme_irrigues
  resources :ressource_mot_cles
  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all
  post 'utilisateur/login',  to: 'utilisateurs#login'
  post 'ressource_mot_cle/delete',  to: 'ressource_mot_cles#delete'
  post 'ressource_langue/delete',  to: 'ressource_langues#delete'
  post 'ressource_systeme_irrigue/delete',  to: 'ressource_systeme_irrigues#delete'
  post 'ressource_unite_administrative/delete',  to: 'ressource_unite_administratives#delete'
  post 'ressource_pay/delete',  to: 'ressource_pays#delete'  
  post 'ressource_pjointe/delete',  to: 'ressource_pjointes#delete'  
  post 'ressource_img/delete',  to: 'ressource_imgs#delete'  
  post 'ressource_profile/delete',  to: 'ressource_profiles#delete'
  post 'ressource_thematique/delete',  to: 'ressource_thematiques#delete'
  post 'ressource_auteur/delete',  to: 'ressource_auteurs#delete'
  post 'ressource_sous_ressource/delete',  to: 'ressource_sous_ressources#delete'
  post 'evenement_pay/delete',  to: 'evenement_pays#delete'
  post 'evenement_langue/delete',  to: 'evenement_langues#delete'
  post 'evenement_thematique/delete',  to: 'evenement_thematiques#delete'
  post 'evenement_profile/delete',  to: 'evenement_profiles#delete'
  post 'evenement_systeme_irrigue/delete',  to: 'evenement_systeme_irrigues#delete'
  post 'evenement_unite_administrative/delete',  to: 'evenement_unite_administratives#delete'
  post 'evenement_mot_cle/delete',  to: 'evenement_mot_cles#delete'
  post 'utilisateur_langue/delete',  to: 'utilisateur_langues#delete'
  post 'utilisateur_pay/delete',  to: 'utilisateur_pays#delete'
  post 'utilisateur_thematique/delete',  to: 'utilisateur_thematiques#delete'
  post 'utilisateur_type_s_irrigue/delete',  to: 'utilisateur_type_s_irrigues#delete'
  post 'utilisateur_specialite/delete',  to: 'utilisateur_specialites#delete'
  post 'expert_sous_type/delete',  to: 'expert_sous_types#delete'
  get 'langue/recherche/{:code,:nom}', to: 'langues#recherche'
  get 'ressource/recherche/simple/:nom',  to: 'ressources#rechercheSimple'
  get 'ressource/recherche/avance/:langue_id,:thematique_id,:type_systeme_irrigue_id', to: 'ressources#rechercheAvance'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
