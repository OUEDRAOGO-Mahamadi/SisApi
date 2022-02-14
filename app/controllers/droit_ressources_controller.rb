class DroitRessourcesController < InheritedResources::Base

  private

    def droit_ressource_params
      params.require(:droit_ressource).permit(:libelle, :creer, :lire, :modifier, :supprimer)
    end

end
