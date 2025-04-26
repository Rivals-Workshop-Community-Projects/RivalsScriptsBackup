//Balloon
//state_timer++;
if(y <= -1200){
    instance_destroy();
    exit;
}

if(goingup == true){
	hsp -= 0.02;
	if(image_index > 0.5){
	    image_index-=0.45
	}
}
if(goingup == false){
	hsp += 0.02;
	if(image_index < 2.5){
	    image_index+=0.45
	}
}
if(hsp < -0.5){
	goingup = false;
}
if(hsp > 2.5){
	goingup = true;
}