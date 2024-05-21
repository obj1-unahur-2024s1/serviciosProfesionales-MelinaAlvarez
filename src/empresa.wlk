import profesionales.*
import solicitantes.*

class EmpresaDeServicios{
	const profesionales = []
	var honorarios
	
	method contratarProfesional(profesional){
		profesionales.add(profesional)
	}
	
	method despedirProfesional(profesional){
		profesionales.remove(profesional)
	}
	
	method cuantosEstudiaronEn(universidad){
		return profesionales.count({p=>p.universidad()==universidad})
	}
	
	method profesionalesCaros(){
		return profesionales.filter({p=>p.honorariosPorHora() > honorarios})
	}
	
	method universidadesFormadoras(){
		return profesionales.map({p=>p.universidad()}).asSet()
	}
	
	method profesionalBarato(){
		return profesionales.min({p=>p.honorariosPorHora()})
	}
	
	method genteAcotada(){
		return profesionales.all({p=>p.provinciasDondePuedeTrabajar().size()<=3})
	}
	
	method puedeSatisfacerA(solicitante){
		return profesionales.any({prof=>solicitante.puedeSerAtendidaPor(prof)})
	}
}