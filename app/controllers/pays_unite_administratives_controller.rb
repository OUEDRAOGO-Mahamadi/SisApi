class PaysUniteAdministrativesController < InheritedResources::Base

  private

    def pays_unite_administrative_params
      params.require(:pays_unite_administrative).permit(:pay_id, :unite_administrative_id)
    end

end
