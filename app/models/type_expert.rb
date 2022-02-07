class TypeExpert < ApplicationRecord
    
    has_many:type_sous_experts
    
    
   
    has_many :sous_type_experts, :through => :type_sous_experts,dependent: :delete_all

    accepts_nested_attributes_for:type_sous_experts,allow_destroy:true
   
  
end
