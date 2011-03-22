class Prova < ActiveRecord::Base
	belongs_to :turma
	has_many :questoes
	
end
