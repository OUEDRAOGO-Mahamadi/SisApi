class RessourcePaysController < InheritedResources::Base

  private

    def ressource_pay_params
      params.require(:ressource_pay).permit(:ressource_id, :pay_id)
    end

end
