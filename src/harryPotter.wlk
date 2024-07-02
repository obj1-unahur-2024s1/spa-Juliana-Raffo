class Estudiante{
	var property casa 
	var habilidad
	var salud
	var property sangrePura= true
	
	const materias =[]
	const hechizosAprendidos= []
	
	method hechizosAprendidos()=hechizosAprendidos
	method materias()=materias
	
	method salud()= salud
	method disminuirSalud(unValor){
		salud = salud - unValor
	}
	method aumentarSalud(unValor){
		salud = salud + unValor
	}
	
	method habilidad()= habilidad
	method aumentarHabilidad(unValor){
		habilidad = habilidad + unValor
	}
	method disminuirHabilidad(unValor){
		habilidad = habilidad - unValor
	}

	method esPeligroso()= salud == 0
	
	method inscribirseA(unaMateria){
		materias.add(unaMateria)
	}
	method darseDeBajaDe(unaMateria){
		materias.remove(unaMateria)
	}
	method asistirA(unaMateria){
		hechizosAprendidos.add(unaMateria.hechizo())
		unaMateria.incribirEstudiante(self)
		self.aumentarHabilidad(1)
	}
	
	method lanzarHechizo(unHechizo,unDestinatario){
		unHechizo.realizarHechizo(self, unDestinatario)
	}
	
}

class Gryffindor inherits Estudiante{
}

class Slytherin inherits Estudiante{
}

class Ravenclaw inherits Estudiante{
	override method esPeligroso()= super() && habilidad > 10
}

class Hufflepuff inherits Estudiante{
	override method esPeligroso()= super() && self.sangrePura()
}















