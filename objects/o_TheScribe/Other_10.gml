if(!instance_exists(o_dialog)){
if(timesInteracted ==0)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("eres tu un caballero de valiente corazon?")
		addText("con tu armadura y tu arma te hare una cancion")
		addText("pero solo si tu bajas...")
		addText("Y LOS MATAS, MATALOS A TODOS")
	}
	
}
if(timesInteracted == 1)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("...")
		addText("A este punto normalmente ya se van a matar mounstros")
		addText("ya no tengo nada que decirte")
	}
}
if(timesInteracted == 2)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("por que sigues hablandome?")
		addText("vete de una vez")
	}
}
if(timesInteracted == 3)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("en serio, estas perdiendo tu tiempo")
		addText("ya no hay mas dialogo...")
	}
}

if(timesInteracted == 4)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("vamos que otros quieren ver el juego, no a un raton poeta")
	}
}

if(timesInteracted == 5)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("ya te estas volviendo molesto")
		addText("ademas, esta es mi ultimo dialogo, no habra mas")
		addText("asi que deja de responder")
	}
}

if(timesInteracted == 6)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("eres tu un caballero con armadura plateada?")
	}
}

if(timesInteracted == 7)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("te la creiste?")
		addText("es verdad, que antes dije mas cosas")
		addText("da igual, vete de una vez")
		addText("ya se me cansaron las piernas")
	}
}

if(timesInteracted == 8)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("ya esta, te lo ganaste, te hare un poema por lo molesto que eres")
	}
}

if(timesInteracted == 9)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("tu nariz es grande, tus orjas tambien")
		addText("tienes dientes horribles de comer tanta miel")
		addText("y reseca esta tu piel")
		addText("y en tu cabeza solo piensas 'eso no rimo pinche rata infiel'")
	}
}

if(timesInteracted == 10)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("su voz hace eco, sus pasos retumban")
		addText("no por sus logros, no por su lealtad")
		addText("si no por que el hombre")
		addText("no sabe cuando dejar de comer")
	}
}

if(timesInteracted == 11)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("Ratuscristo, conseguite un hobby!")
		addText("no tienes nada mejor que hacer que joder a un raton")
		addText("es tu vida tan triste, que no tienes opcion")
		addText("mejor vete de la mazmorra a comerte una tobby")
	}
}

if(timesInteracted == 12)
{
	with(instance_create_layer(x,y,"GUI",o_dialog))
	{
		addText("LARGATE")
	}
	timesInteracted = 11;
}


timesInteracted++;

}
	
	




