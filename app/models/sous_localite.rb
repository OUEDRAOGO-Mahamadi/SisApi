class SousLocalite < ApplicationRecord
    has_many:localite_localites
   
    has_many :localites, :through => :localite_localites,dependent: :delete_all
    accepts_nested_attributes_for:localite_localites,allow_destroy:true
    
end
