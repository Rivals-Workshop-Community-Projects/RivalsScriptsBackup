
		if(image_angle <= 0){
		instance_destroy()
		}else{
		image_angle -=10
			var tuy = instance_place(x, y, oPlayer);
			if tuy != noone {
			image_alpha -= 1
			}
		}
	