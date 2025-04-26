//SLENDERMAN HIT PLAYER


//sound area
/*
if (my_hitboxID.attack == AT_FAIR) { if (my_hitboxID.hbox_num == 1){
	sound_play(sound_get("tta_9"));
}  }*/

if (my_hitboxID.attack == AT_DATTACK) {
	sound_play(sound_get("hit3"),false,noone,0.6);
	sound_play(sound_get("hit2"),false,noone,0.6);
}

if (my_hitboxID.attack == AT_DTILT) {
	sound_play(sound_get("distort_1"),false,noone,0.7);
}
if (my_hitboxID.attack == AT_FTILT) {
	sound_play(sound_get("distort_4"),false,noone,0.4);
	sound_play(sound_get("hit1"),false,noone,0.65,1.5);
	//if (hit_player_obj.slender_haunt == -4){hit_player_obj.slender_buildup+=25;}
}
if (my_hitboxID.attack == AT_UTILT) {
	sound_play(sound_get("tta_19"),false,noone,0.9); sound_play(sound_get("tta_23"),false,noone,0.7);
	sound_play(sound_get("tta_7"),false,noone,0.2);
	sound_play(sound_get("hit1"),false,noone,0.65,1.1);
}

if (my_hitboxID.attack == AT_BAIR){ if (my_hitboxID.hbox_num == 1) {
	sound_play(sound_get("hit4"),false,noone,0.7,0.9);
	//if (hit_player_obj.slender_haunt == -4){hit_player_obj.slender_buildup+=20;}
}if (my_hitboxID.hbox_num == 2) {
	//if (hit_player_obj.slender_haunt == -4){hit_player_obj.slender_buildup+=20;}
} }
if (my_hitboxID.attack == AT_NAIR){ if (my_hitboxID.hbox_num == 1) {
	sound_play(sound_get("distort_10"),false,noone,0.7);
	sound_play(sound_get("distort_11"),false,noone,0.7);
	sound_play(sound_get("tta_3"),false,noone,0.4);
	//if (hit_player_obj.slender_haunt == -4){hit_player_obj.slender_buildup+=20;}
}if (my_hitboxID.hbox_num == 2) {
	//if (hit_player_obj.slender_haunt == -4){hit_player_obj.slender_buildup+=20;}
} }
if (my_hitboxID.attack == AT_FAIR) {
	sound_play(sound_get("tta_9"),false,noone,0.75); sound_play(sound_get("tta_17"),false,noone,0.75);
	sound_play(sound_get("distort_5"),false,noone,0.4);
	sound_play(sound_get("claw"));
}
if (my_hitboxID.attack == AT_UAIR){ //if (my_hitboxID.hbox_num == 1) {
	sound_play(sound_get("nisae_hit6"),false,noone,1);
	sound_play(sound_get("distort_10"),false,noone,0.85);
	sound_play(sound_get("tta_20"),false,noone,0.4);
//}  if (my_hitboxID.hbox_num == 2) {
//	sound_play(sound_get("nisae_hit4"),false,noone,1);
//	sound_play(sound_get("hit2"),false,noone,0.6);
//	sound_play(sound_get("tta_20"),false,noone,0.4);
}  //}
if (my_hitboxID.attack == AT_DAIR){ if (my_hitboxID.hbox_num == 1) {//sour
	sound_play(sound_get("nisae_metallic1"),false,noone,1);
	sound_play(sound_get("tta_1"),false,noone,1);
}  if (my_hitboxID.hbox_num >= 3) {//late
	sound_play(sound_get("nisae_metallic1"),false,noone,0.75,0.9);
	sound_play(sound_get("tta_1"),false,noone,0.75,0.9);
}  if (my_hitboxID.hbox_num == 2) {//sweet
	sound_play(sound_get("nisae_metallic1"),false,noone,1);
	sound_play(sound_get("hit1"),false,noone,0.7,1.3);
	sound_play(sound_get("tta_17"),false,noone,0.8);
	sound_play(sound_get("tta_10"),false,noone,0.35);
}  }

if (my_hitboxID.attack == AT_FSTRONG){ if (my_hitboxID.hbox_num == 1) {
	sound_play(sound_get("nisae_hit6"),false,noone,0.8); sound_play(sound_get("hit2"),false,noone,0.8);
	sound_play(sound_get("tta_13"),false,noone,0.7);
	sound_play(sound_get("distort_9"),false,noone,0.5);
}  if (my_hitboxID.hbox_num == 2) {
	//if (hit_player_obj.slender_haunt == -4){hit_player_obj.slender_buildup+=25;}
	hitstop = 0;
	shake_camera(20, 8);
}  }
if (my_hitboxID.attack == AT_USTRONG) {
	sound_play(sound_get("hit1"),false,noone,0.8);
	sound_play(sound_get("tta_20"),false,noone,0.5);
}
if (my_hitboxID.attack == AT_DSTRONG) {
	sound_play(sound_get("hit5_t_b"),false,noone,0.8); sound_play(sound_get("hit2"),false,noone,0.6);
	sound_play(sound_get("nisae_hit2"),false,noone,0.8); sound_play(sound_get("distort_6"),false,noone,0.6);
	sound_play(sound_get("tta_11"),false,noone,0.4);
}

if (my_hitboxID.attack == AT_USPECIAL) {
	sound_play(sound_get("tta_19"),false,noone,0.8);
	sound_play(sound_get("tta_4"),false,noone,0.8); sound_play(sound_get("tta_2"),false,noone,0.6);
	sound_play(sound_get("tta_23"),false,noone,0.8); sound_play(sound_get("hit1"),false,noone,0.6,0.8);
	sound_play(sound_get("tta_22"),false,noone,0.4);
}


/*
if (my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num == 1||my_hitboxID.hbox_num == 2)) {
	//print("it should do")
	hit_player_obj.slender_haunt = id;
	hit_player_obj.slender_haunt_timer = 400;
}*/



//mawralgrab
if (my_hitboxID.attack == AT_FSTRONG) {
	
	if (my_hitboxID.hbox_num == 1){
		//spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, tackle_hfx2 );
		set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 13);
		
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
			  && was_parried == false
		  && hit_player_obj.clone == false) {
			
			destroy_hitboxes();
			if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
			
			else {
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			}
		}
	}
	
}
if (my_hitboxID.attack == AT_NSPECIAL) {
	
	if (my_hitboxID.hbox_num == 1||my_hitboxID.hbox_num == 2){
		//spawn_hit_fx( my_hitboxID.x, my_hitboxID.y, tackle_hfx2 );
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
		
		if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
		  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
			  && was_parried == false
		  && hit_player_obj.clone == false) {
			
			destroy_hitboxes();
			if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
			
			else {
				var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
				var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
				if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
			}
		}
	}
	
}