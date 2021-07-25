
//music select test

if (get_gameplay_time() <= 122 && mus_phase == 0){
	with (asset_get("oPlayer")){
		if (right_stick_down){
			other.mus_phase = 1;
			other.mus = 1;
		}
		if (left_stick_down){
			other.mus_phase = 1;
			other.mus = 2;
		}
	}
	if (mus_phase == 1){
		sound_play(sound_get("peace"))
	}
}
if (get_gameplay_time() > 125 && mus_phase == 1){
	switch(mus){
		case 1: //Gears
			music_play_file("music_loop");
			break;
		case 2: //Ultramarine
			music_play_file("music_loop2");
			break;
	}
	mus_phase = 2;
	mus_timer = 0;
}
//take it from here, draw_hud!





if (is_aether_stage()){

if (!e_init){
	instance_create(get_marker_x(12), get_marker_y(5)+22, "obj_stage_article", 3)
	e_init = true;
}

/*

TODO

[v] angle flipper

[v] snow

[v] possibly randomize attack1 spark location?

[ ] clock

*/



if (phasetimer > 0){
	phasetimer --;
}

if (spawntimer > 0){
	spawntimer --;
	randset = 1+random_func( randset, 3, true )
	with (oPlayer){
		if (x == get_marker_y(10) || x == get_marker_y(10)+1 || x == get_marker_y(11) || x == get_marker_y(11)+1){
			other.spawntimer = clamp(other.spawntimer - 40, 0, 400)
			//other.randset = 2;
			other.randset = 1+random_func( other.randset, 3, true )
		}
	}
}

if (spawntimer == 0){
	randset = 1+random_func( randset, 3, true )
	//if (randset == 2){
	//	randset = 1+random_func( 5, 3, true )
	//}
	//if (randset == 2){
	//	randset = 1+random_func( 6, 3, true )
	//}
	margret = instance_create(get_marker_x(randset*2-1), get_marker_y(randset*2-1), "obj_stage_article", 1); //margret
	arry = instance_create(get_marker_x(randset*2), get_marker_y(randset*2), "obj_stage_article", 1); //arry
	margret.spr_dir = 1;
	arry.spr_dir = -1;
	margret.char = 1;
	arry.char = 2;
	phasetimer = 180;
	spawntimer = -1;
	attack = 0;
	attack_phase = 0;
	//print_debug("THRUHERE THRUHERE THRUHERE THRUHERE")
	//print_debug(string(margret))
	//print_debug(string(arry))
	//print_debug(string(get_marker_x(randset*2+1)))
	//print_debug(string(get_marker_x(randset*2)))
}

if (phasetimer == 0){
	if (attack == 0){ //start
		if (attack_phase == 0){
			margret.state = 3;
			margret.state_timer = 0;
			arry.state = 3;
			arry.state_timer = 0;
			attack_phase = 1;
			phasetimer = 190;
			exit;
		}
		if (attack_phase == 1){
			attack = randset; // randset randset
			attack_phase = 0;
			phasetimer = 40;
			sound_play(sound_get("predict"), false, -4, 0.6);
			exit;
		}
	}
	if (attack == 1){ //side
		if (attack_phase == 0){
			margret.state = 4;
			arry.state = 4;
			attack_phase = 1;
			phasetimer = 300;
			sound_play(sound_get("beam"));
			exit;
		}
		if (attack_phase == 1){
			attack_phase = 2;
			phasetimer = 32;
			exit;
		}
		if (attack_phase == 2){
			margret.state = 2;
			margret.state_timer = 0;
			margret.warp_marker = 7;
			margret.warp = true;
			arry.state = 2;
			arry.state_timer = 0;
			arry.warp_marker = 8;
			arry.warp = true;
			attack = 4;
			attack_phase = 0;
			phasetimer = 80;
			exit;
		}
	}
	if (attack == 2){ //upshoot
		if (attack_phase == 0){
			margret.state = 5;
			arry.state = 5;
			attack_phase = 1;
			phasetimer = 200;
			exit;
		}
		if (attack_phase == 1){
			attack_phase = 2;
			phasetimer = 32;
			exit;
		}
		if (attack_phase == 2){
			margret.state = 2;
			margret.state_timer = 0;
			margret.warp_marker = 7;
			margret.warp = true;
			arry.state = 2;
			arry.state_timer = 0;
			arry.warp_marker = 8;
			arry.warp = true;
			attack = 4;
			attack_phase = 0;
			phasetimer = 80;
			exit;
		}
	}
	if (attack == 3){ //star
		if (attack_phase == 0){
			margret.state = 5;
			arry.state = 5;
			attack_phase = 1;
			phasetimer = 500;
			instance_create(get_marker_x(9), get_marker_y(9) - 120, "obj_stage_article", 2);
			sound_play(sound_get("starfall"));
			exit;
		}
		if (attack_phase == 1){
			attack_phase = 2;
			phasetimer = 32;
			exit;
		}
		if (attack_phase == 2){
			margret.state = 2;
			margret.state_timer = 0;
			margret.warp_marker = 7;
			margret.warp = true;
			arry.state = 2;
			arry.state_timer = 0;
			arry.warp_marker = 8;
			arry.warp = true;
			attack = 4;
			attack_phase = 0;
			phasetimer = 80;
			exit;
		}
	}
	
	
	
	if (attack == 4){ //end
		if (attack_phase == 0){
			margret.state = 3;
			margret.state_timer = 0;
			arry.state = 3;
			arry.state_timer = 0;
			attack_phase = 1;
			phasetimer = 100;
			exit;
		}
		if (attack_phase == 1){
			margret.state = 2;
			margret.state_timer = 0;
			margret.warp = false;
			arry.state = 2;
			arry.state_timer = 0;
			arry.warp = false;
			attack_phase = 0;
			spawntimer = 600;
			phasetimer = -1;
			exit;
		}
	}
	
}//phasetimer

if (attack == 1 && attack_phase == 1){
	margret.state_timer = 0;
	arry.state_timer = 0;
	if (phasetimer == 299){
		at1_hb_timer = 0;
	}
		if (at1_hb_timer == 8){
			var temp_x_range = (arry.x+arry.w_off_up_x - margret.x-margret.w_off_up_x);
			
			for (var i = round(temp_x_range/18); i <= temp_x_range-(round(temp_x_range/18)*3); i += round(temp_x_range/18)){
				with (margret){
					create_hitbox( AT_NSPECIAL, 2, x+w_off_up_x+i, y+w_off_up_y+16 )
					var temp_rand_1 = random_func( i%5, 8, true )-4
					var temp_rand_2 = random_func( (y+i)%4, 8, true )-4
					var temp_rand_3 = random_func( i%8, 8, true )
					spawn_hit_fx( x+w_off_up_x+i+temp_rand_1, y+w_off_up_y+16+temp_rand_2, (temp_rand_3<2)?other.sparkfx:(temp_rand_3<4)?other.sparkfx2:other.sparkfx3 );
				}
				//spawn_hit_fx( margret.x+margret.w_off_up_x+i, margret.y+margret.w_off_up_y+16, sparkfx );
				//spawn_hit_fx( margret.x, margret.y+16, sparkfx );
			}
			at1_hb_timer = 0;
		}
		at1_hb_timer++;
}

if (attack == 2 && attack_phase == 1){
	
	if (phasetimer == 199 || phasetimer == 150 || phasetimer == 100){
		with (margret){
			other.hb_1 = create_hitbox( AT_NSPECIAL, 1, x+(w_off_up_x*spr_dir), y+w_off_up_y )
		//print_debug("called_M")
		sound_play(sound_get("ball"));
		}
	} else if (phasetimer == 175 || phasetimer == 125|| phasetimer == 75){
		with (arry){
			other.hb_2 = create_hitbox( AT_NSPECIAL, 1, x+(w_off_up_x*spr_dir), y+w_off_up_y )
		//print_debug("called_A")
		sound_play(sound_get("ball"));
		}
	}else{
		exit;
	}
	
	/*
	create_hitbox( AT_NSPECIAL, 1, (margret.x+w_off_up_x)*margret.spr_dir, margret.y+w_off_up_y )
	create_hitbox( AT_NSPECIAL, 1, (arry.x+w_off_up_x)*arry.spr_dir, arry.y+w_off_up_y )*/
	
		var strength = 5;
		var angle = ((round((
		(phasetimer==199||phasetimer==175)?10:(phasetimer==150||phasetimer==125)?45:(phasetimer==100||phasetimer==75)?87:0) / 11.25)
		* 11.25) / 180 * -3.14);
		
	if (hb_1 != -4){
	hb_1.hsp = (strength * cos(angle)) * margret.spr_dir;
	hb_1.vsp = (strength * sin(angle));
	}
	if (hb_2 != -4){
	hb_2.hsp = (strength * cos(angle)) * arry.spr_dir;
	hb_2.vsp = (strength * sin(angle));
	}
	//print_debug("called")
		hb_1 = -4;
		hb_2 = -4;
	
	}
	/*
if (attack == 3 && attack_phase == 1){
	if (phasetimer == 399){
		instance_create(get_marker_x(9), get_marker_y(9) - 120, "obj_stage_article", 2);
	}
}*/


//print_debug("spawn: "+string(spawntimer))
//print_debug("phase: "+string(phasetimer))
//print_debug("randset: "+string(randset))
//print_debug("attack: "+string(attack))
//print_debug("attackphase: "+string(attack_phase))
if (margret != -4){
	
//print_debug("margx: "+string(margret.x))
//print_debug("arryx: "+string(arry.x))

}


}