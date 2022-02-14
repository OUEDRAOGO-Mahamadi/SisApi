class DroitExpertsController < InheritedResources::Base

  private

    def droit_expert_params
      params.require(:droit_expert).permit(:libelle, :creer, :lire, :modifier, :supprimer)
    end

end
