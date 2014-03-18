class PessoafisicasController < InheritedResources::Base

	def build_resource_params
        		[params.fetch(:pessoafisica, {}).permit(:nome, :datanascimento, :endereco, :numero, :complemento, :bairro, :cidade, :estado, :telefone, :cpf, :contacorrente_id)]
    	end

end
