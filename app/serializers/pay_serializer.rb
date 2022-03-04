class PaySerializer < ActiveModel::Serializer
  attributes :id, :code, :nom, :unite_administratives#,:evenements
  #has_many:regions
  #has_many:ressources
  has_many:unite_administratives
  # has_many:utilisateurs
  # has_many :evenements
end
