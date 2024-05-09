//Background colors update

switch(mode) {
	case 0://Inside stage
		if(version = 0){
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}	
		} else {
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}
		}
	break;
	case 1://Fog
		if(version = 0){
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}
		} else {
			if(image_alpha < fog_max){
				image_alpha += 0.005;
			}
		}
	break;
	case 2://Stay for darkness
		if(version = 0){
			if(image_alpha < dark_max){
				image_alpha += 0.005;
			}
		} else {
			if(image_alpha < fog_max){
				image_alpha += 0.005;
			}
		}
	break;
	case 3://Remain in Fog
		if(version = 0){
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}
		} else {
			if(image_alpha < fog_max){
				image_alpha += 0.005;
			}
		}
	break;
	case 4://Go Back Down
		if(version = 0){
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}
		} else {
			if(image_alpha > 0){
				image_alpha -= 0.005;
			}
		}
	break;
}