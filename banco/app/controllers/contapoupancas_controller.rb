class ContapoupancasController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:contapoupanca, {}).permit(:sequencial, :saldo, :contacorrente_id)]
    end

end
