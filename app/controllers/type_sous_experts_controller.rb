class TypeSousExpertsController < InheritedResources::Base

  private

    def type_sous_expert_params
      params.require(:type_sous_expert).permit(:sous_type_expert_id, :type_expert_id)
    end

end
