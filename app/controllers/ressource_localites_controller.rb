class RessourceLocalitesController < InheritedResources::Base

  private

    def ressource_localite_params
      params.require(:ressource_localite).permit(:ressource_id, :sous_localite_id)
    end

end
