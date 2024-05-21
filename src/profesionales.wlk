class Universidad{
	const property provincia
	var property honorarios
}

class ProfesionalAsociado {
	const property universidad
	var property honorariosPorHora = 3000
	
	method provinciasDondePuedeTrabajar() =	#{"Entre Rios", "Santa Fe", "Corrientes"}
}


class ProfesionalVinculado {
	const property universidad
	
	method provinciasDondePuedeTrabajar() = #{universidad.provincia()} 
	method honorariosPorHora() = universidad.honorarios()
}


class ProfesionalLibre {
	const property universidad
	const property provinciasDondePuedeTrabajar = #{}
	var property honorariosPorHora
	
	method agregarProvincia(unaProvincia) {
		provinciasDondePuedeTrabajar.add(unaProvincia)
	}
	method quitarPronvincia(unaProvincia) {
		provinciasDondePuedeTrabajar.remove(unaProvincia)
	}
}