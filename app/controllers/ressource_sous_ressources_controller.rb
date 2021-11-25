class RessourceSousRessourcesController < InheritedResources::Base

  private

    def ressource_sous_ressource_params
      params.require(:ressource_sous_ressource).permit(:ressource_id, :sous_type_ressource_id)
    end

end
