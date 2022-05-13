
if(!runeL || runeL && (state > 2 || state == 2 && timer >= 110)){
	timer += 1;
}else{
	if(state <= 2 && player_id.down_down && player_id.special_pressed){
		state = 2;timer = 110;
	}
}

if(player_id.time_rift_dmg >= 25 && state != 5){
	state = 5;timer = 0;
}

if(state == 0){ //waiting
    if(timer % 2 == 0 && image_index < 5){
		image_index += 1;
	}
    if(timer >= 300 || instant){
        state = 1;timer = 0;image_index = 5;
    }
}else if(state == 1){ //opening
    if(timer % 3 == 0 && image_index < 12){
		image_index += 1;
	}
    if(timer >= 20){
        state = 2;timer = 0;shake_camera(5,5);
    }
}else if(state == 2){ //waiting for laser
    if(/*timer > 120 && (timer < 150 && timer % 30 == 0 ||*/ timer >= 150 && timer % 10 == 0){
        anim += 1;
    }
    if(timer >= 180){
        state = 3;timer = 0;anim = 5;lasersound = sound_play(sound_get("laser"));sound_play(sound_get("laserboom"));
    }
}else if(state == 3){ //laser
    if((timer % 3 == 0 || timer == 0) && timer < 60){
        hitbox = create_hitbox(AT_DSPECIAL,1,x-50*spr_dir,y-50);
        if(anim == 5){
            anim += 1;
        }else{
            anim -= 1;
        }shake_camera(7,5);
    }
    /*if(get_gameplay_time() % 10 == 0){
        create_hitbox(AT_DSPECIAL,5,x-15+random_func(0,30,true),y-15+random_func(0,30,true));
    }*/
    if(timer >= 60){
        state = 4;timer = 0;image_index = 12;anim = 5;shake_camera(20,20);sound_play(sound_get("laserboom2"));
        create_hitbox(AT_DSPECIAL,2,x-50*spr_dir,y-50);
    }
}else if(state == 4){ //waiting after laser
    if(timer % 4 == 0){
        anim -= 1;
    }
    if(timer >= 60 || anim == -1){
        state = 5;timer = 0;
    }
}else if(state == 5){ //closing
    if(timer % 3 == 0){
        if(image_index < 13){
		    image_index -= 1;
		    if(image_index < 5){
		        image_index = 13;
		    }
        }else if(image_index >= 13){
		    image_index += 1;
        }
	}
    if(timer >= 60 || image_index >= 16){
    	sound_stop(lasersound);
        instance_destroy();
        exit;
    }
}