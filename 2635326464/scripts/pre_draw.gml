//Lakitu spawn

var stage_url = get_stage_data(SD_ID);

if (start_lakitu == 1 && !kart_inside){
	if (get_gameplay_time() == 8 || get_gameplay_time() == 16 || get_gameplay_time() == 24|| get_gameplay_time() == 33 || get_gameplay_time() == 40 || get_gameplay_time() == 47 || get_gameplay_time() == 54 || get_gameplay_time() == 64 || get_gameplay_time() == 70 || get_gameplay_time() == 77 || get_gameplay_time() == 84 || get_gameplay_time() == 95 || get_gameplay_time() == 102){
		spawn_index++;
	}

	if(spawn_index == 0){
		spawn_x = x+spr_dir*130;
		spawn_y = y-110;
		lakitu_spr_dir = spr_dir;
	}

	if (get_gameplay_time() > 120 && spawn_index == 13){
		spawn_y = spawn_y - 10;
	}

	if (get_gameplay_time() >= 180){
		start_lakitu = 0;
	}

	draw_sprite_ext(sprite_get("lakitu_spawn"), spawn_index, spawn_x, spawn_y ,lakitu_spr_dir,1,0,-1,1);
} 




//Lakitu respawn
if (state == PS_RESPAWN && !kart_inside){

	if (state_timer == 0){
		if (spr_dir == 1){
			lakitu_spr_dir = 1;
		} else lakitu_spr_dir = 0;
	}

	lakitu_y = y-172;

	if (lakitu_spr_dir == 1){
		lakitu_x = x-14;
		draw_sprite(sprite_get("lakitu_respawn"), 0, lakitu_x, lakitu_y);
	} else {
		lakitu_x = x-84;
		draw_sprite(sprite_get("lakitu_respawn_2"), 0, lakitu_x, lakitu_y);
	}
	
lakitu_ascent = 0;
}

if (lakitu_ascent != 1 && (hsp != 0 || vsp != 0)){
	lakitu_ascent = 1;
	lakitu_ascent_timer = 0;
}

if (state != PS_RESPAWN && lakitu_ascent = 1 && lakitu_ascent_timer < 1000){
	lakitu_ascent_timer = lakitu_ascent_timer + 9;
	if (lakitu_spr_dir == 1){
		draw_sprite(sprite_get("lakitu_respawn"), 0, lakitu_x, lakitu_y-lakitu_ascent_timer);
	} else draw_sprite(sprite_get("lakitu_respawn_2"), 0, lakitu_x, lakitu_y-lakitu_ascent_timer);
}

//Golden shroom

if (attack == AT_NSPECIAL_2){
	if (window > 1) {
		if(spr_dir == 1){
		draw_sprite(sprite_get("golden_mushroom"), golden_index, x, y);
		} else draw_sprite(sprite_get("golden_mushroom"), golden_index, x-2, y);
	} 

}

//Fspecial trail

shader_start();
if (attack == AT_FSPECIAL && window > 1){
for(var m = 0; m < array_length_1d(blur); m++) {
            var _img = blur[m];
            var _percent = 1 - (m / array_length_1d(blur));
            draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
        }
    }
shader_end();

//Nspecial trail

shader_start();
if (attack == AT_EXTRA_1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) ){
for(var m = 0; m < array_length_1d(blur2); m++) {
            var _img = blur2[m];
            var _percent = 1 - (m / array_length_1d(blur2));
            draw_sprite_ext(_img[0], _img[1], _img[2], _img[3], _img[4], _img[5], _img[6], _img[7], _img[8] * _percent);
        }
    }
shader_end();


//Uspecial ramp

if(ramp_start == 1){
	ramp_timer++;
	if((ramp_timer mod 2) == 0){
		ramp_index++
	}


	if (ramp_spr_dir == 1){
		draw_sprite(sprite_get("uspecial_ramp"), ramp_index, uspecial_x, uspecial_y);
	} else draw_sprite(sprite_get("uspecial_ramp2"), ramp_index, uspecial_x, uspecial_y);

	if(ramp_timer == 33){
		ramp_start = 0;
		ramp_timer = 0;
		ramp_index = 0;
	}
}

// Uair lightning

if (attack == AT_UAIR && state == PS_ATTACK_AIR){
	if (window == 2) {
		lightning_index = image_index-7;
		draw_sprite(sprite_get("lightning"), lightning_index, x, y-60);
	}
}


user_event(12);