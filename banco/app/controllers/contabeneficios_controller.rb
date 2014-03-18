class ContabeneficiosController < InheritedResources::Base

	def build_resource_params
        		[params.fetch(:contabeneficio, {}).permit(:conta, :saldo, :pessoafisica_id)]
    	end

end
