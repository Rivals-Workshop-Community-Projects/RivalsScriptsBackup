
if(l == 2){
	if(time1 == 200){
		if(image_alpha == -1){
		instance_destroy()
			}else{
		image_alpha -= 0.2
		image_yscale +=2
		image_xscale +=2
		time2 += 1
		}
	}else{
		if(df == 0){
		depth =-100000
		}
	image_yscale +=2
	image_xscale +=2
	time1 += 1
	}
}else{
	if(time1 == 20){
		if(image_alpha == -1){
		instance_destroy()
			}else{
		image_alpha -= 0.2
		image_yscale +=2
		image_xscale +=2
		time2 += 1
		}
	}else{
	depth =-100000
	image_yscale +=2
	image_xscale +=2
	time1 += 1
	}

}
	if(image_alpha == -1){
	}else{
		if(l == 0){
		sprite_index = sprite_get("effect");
		}else{
			if(l == 1){
			sprite_index = sprite_get("warp");
			}else{
			sprite_index = sprite_get("effect2");
			}
		}
	}
