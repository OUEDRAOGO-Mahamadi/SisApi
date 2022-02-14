class DroitEvenementsController < InheritedResources::Base

  private

    def droit_evenement_params
      params.require(:droit_evenement).permit(:libelle, :creer, :lire, :modifier, :supprimer)
    end

end
