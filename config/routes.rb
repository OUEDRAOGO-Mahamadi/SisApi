Rails.application.routes.draw do
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
  resources :formats
  resources :langues
  resources :mot_cles
  resources :specialites
  resources :categories
  resources :structures
  resources :produits
  get 'product/trie', to: 'produits#trie'
  get 'langue/recherche/{:code,:nom}', to: 'langues#recherche'
  get 'ressource/recherche/simple/:nom',  to: 'ressources#rechercheSimple'
  get 'ressource/recherche/avance/:langue_id,:thematique_id,:type_systeme_irrigue_id', to: 'ressources#rechercheAvance'
  resources :types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
