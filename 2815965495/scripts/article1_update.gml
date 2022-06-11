//article1_update

state_timer++;



//Logica de animación
if (state_timer % 2 == 0){
	image_index += 1;
}

//Destruccion
if (state_timer>50){
	instance_destroy();
	}