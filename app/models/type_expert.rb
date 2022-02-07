class TypeExpert < ApplicationRecord
    
    has_many:type_expert_sous
    
    
   
    has_many :sous_type_experts, :through => :type_expert_sous,dependent: :delete_all

    accepts_nested_attributes_for:type_expert_sous,allow_destroy:true
   
  
end
