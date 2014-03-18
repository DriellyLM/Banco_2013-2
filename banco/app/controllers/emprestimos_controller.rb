class EmprestimosController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:emprestimo, {}).permit(:datacontrato, :valorcontratado, :numeroparcelas, :contacorrente_id)]
    end

end
