
class MateriaMagica{
	var property materia 
	const property profesor
	var property hechizo
	
	const estudiantesPresentes=[]
	
	method inscribirEstudiante(unEstudiante){
		estudiantesPresentes.add(unEstudiante)
	}
	method practicarHechizoEn(unaCriatura){
		estudiantesPresentes.forEach({estudiante => estudiante.lanzarHechizo(hechizo ,unaCriatura)})
	}
}

class HechizoComun{
	var property nivelDeDificultad
	
	method puedeRealizarsePor(unEstudiante)=
		unEstudiante.hechizosAprendidos().contains(self)
		&& unEstudiante.habilidad() > nivelDeDificultad
		
	method realizarHechizo(unEstudiante,unDestinatario){
		if (self.puedeRealizarsePor(unEstudiante))
		unDestinatario.disminuirSalud(nivelDeDificultad + 10)
	}
}

class HechizoImperdonable inherits HechizoComun{
	override method realizarHechizo(unEstudiante, unDestinatario){
		super(unEstudiante,unDestinatario)*2
		unEstudiante.disminuirSalud(nivelDeDificultad) // inventado xq en el enunciado no especifica
	}
}

class HechizoEspecial inherits HechizoComun{
	override method realizarHechizo(unEstudiante, unDestinatario){
		if (not unEstudiante.esPeligroso())
		unDestinatario.disminuirSalud(nivelDeDificultad +10)
		unEstudiante.disminuirHabilidad(1)		
		
	}
}


