class SousTypeExpert < ApplicationRecord
    #has_many:type_expert_sous
    has_many:expert_sous_types
    has_many:type_sous_experts
   
    has_many :type_experts, :through => :type_sous_experts,dependent: :delete_all
    has_many :utilisateurs, :through => :expert_sous_types,dependent: :delete_all
    
    accepts_nested_attributes_for:type_sous_experts,allow_destroy:true
    accepts_nested_attributes_for:expert_sous_types,allow_destroy:true
end
