if (Deletemy == true){
instance_destroy()
}else{

	if(sph == 1){

	if(image_alpha <= -1){
	Deletemy = true
	}else{
	image_alpha -= 0.02
	}

		if(l == 1){
		}else{
		Wind2 = random_func(15,25,true )//random_func(10,15,true )
		image_xscale = Wind2
		image_yscale = Wind2
		depth =-900000
		l = 1
		}	
		if(Wind == 1){
	
		image_angle += 1
		}else{
	
	
	
		image_angle -= 1
		}


		if(image_alpha == -5){
		
		Deletemy = true
		}

		if(Wind3 == 0){
		
		image_alpha -=1
		}else{
		
		hsp = random_func(32,60,true)
		//vsp -= random_func(2,15,true )
		
		Wind3 -= 1
		}


	}else{

		if(l == 1){
		}else{
		Wind2 = random_func(100,180,true )//random_func(80,100,true )
		image_xscale = Wind2
		image_yscale = Wind2
		depth =-900000
		l = 1
		}	

		if(Wind == 1){
	
		image_angle += 1
		}else{
	
	
	
		image_angle -= 1
		}


		if(image_alpha == -5){
		
		Deletemy = true
		}

		if(Wind3 == 0){
		
		image_alpha -=1
		}else{
		
		
		
		Wind3 -= 1
		}

	}

}