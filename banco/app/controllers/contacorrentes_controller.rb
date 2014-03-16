class ContacorrentesController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:contacorrente, {}).permit(:conta, :saldo)]
    end

end
