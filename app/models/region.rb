class Region < ApplicationRecord
    # has_many:pays_regions
    # has_many :pays, :through => :pays_regions,dependent: :delete_all
    
    has_many:region_localites
    has_many :localites, :through => :region_localites,dependent: :delete_all

    has_many:pays_regions
    has_many :pays, :through => :pays_regions,dependent: :delete_all

    accepts_nested_attributes_for:region_localites,allow_destroy:true
  
end
