class Localite < ApplicationRecord
    has_many:localite_localites
    has_many :sous_localites, :through => :localite_localites,dependent: :delete_all
    
    has_many:region_localites
    has_many :regions, :through => :region_localites,dependent: :delete_all

    accepts_nested_attributes_for:region_localites,allow_destroy:true
end
