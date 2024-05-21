import profesionales.*

class Personas{
	var property provincia
	 method puedeSerAtendidaPor(unProfesional){
	 	return unProfesional.provinciasDondePuedeTrabajar().contains(provincia)
	 }
}

class Institucion{
	const property universidades = #{}
	
	method puedeSerAtendidaPor(unProfesional){
		return universidades.contains(unProfesional.universidad())
	}
}

class Club{
	const property provincias = #{}
	
	method puedeSerAtendidaPor(unProfesional){
		return provincias.any({p=>unProfesional.provinciasDondePuedeTrabajar().contains(p)})
	}
}