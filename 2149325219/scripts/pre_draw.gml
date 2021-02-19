shader_start()

//minibomb
if(fuseshow % 2 = 1){
	

	if((fuse < fuse_max && (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_USPECIAL) || (attack == AT_USPECIAL && window == 1)){
    	if(fuse < fuse_max){
    		if(blinkT % 2 == 1){
    	    	draw_sprite_ext(sprite_get("minibomb"), 1, x- 10, y+20, 1, 1, 270, -1, 1 )
    		}
    		if(blinkT % 2 == 0){
    	    draw_sprite_ext(sprite_get("minibombr"), 1, x - 10, y+20, 1, 1, 270, -1, 1 )
    		}
    	}
	}

        
        
//miniwick
if(attack == AT_USPECIAL && window == 1){
	msparkspot = 1;
}
else{
	msparkspot = ceil((fuse*10)/fuse_max);
}


	switch (msparkspot){
		case 10:
			msparkx = 32;
			msparky = 17;
			msparka = 270;
			break;
		case 9:
			msparkx = 29;
			msparky = 17;
			msparka = 270;
			break;
		case 8:
			msparkx = 26;
			msparky = 15;
			msparka = 270;
			break;
		case 7:
			msparkx = 23;
			msparky = 15;
			msparka = 270;
			break;
		case 6:
			msparkx = 19;
			msparky = 18;
			msparka = 270;
			break;
		case 5:
			msparkx = 16;
			msparky = 17;
			msparka = 270;
			break;
		case 4:
			msparkx = 13;
			msparky = 15;
			msparka = 270;
			break;
		case 3:
			msparkx = 10;
			msparky = 15;
			msparka = 270;
			break;
		case 2:
			msparkx = 7;
			msparky = 17;
			msparka = 270;
			break;
		case 1:
			msparkx = 3;
			msparky = 18;
			msparka = 270;
			break;
			
			
	}


	if((fuse < fuse_max && ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_USPECIAL))
	|| (attack == AT_USPECIAL && window == 1)){
    	draw_sprite_part(sprite_get("miniwick"), 1, 0 ,0, ((34/10)*msparkspot)-3, 12, x - 13, y +20 );
    	draw_sprite_ext(sprite_get("lights"), fuse / 5, x + msparkx, y+msparky, 1, 1, msparka,-1,10);
	}
}
shader_end()

if(get_gameplay_time() < 300 && get_training_cpu_action() != CPU_FIGHT){
draw_debug_text(x - 80, y + 40, "Press Down+Taunt to");
draw_debug_text(x - 80, y + 60, "show/hide Kaboom Fuse");
}


if(get_gameplay_time() < 300 && get_training_cpu_action() != CPU_FIGHT){
draw_debug_text(x - 80, y - 110, "Press UP+Taunt to");
draw_debug_text(x - 80, y - 90, "change bomb limit");
}

if(attack == AT_EXTRA_1){
	if(hitpause){
		draw_sprite_ext(sprite_get("kaboom"), 0 , x + handsx*spr_dir, y - handsy, 0.5, 0.5, 0, -1, 1 )
	}
}