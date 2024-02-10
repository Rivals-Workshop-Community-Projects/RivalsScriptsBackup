if mailboxID != 0 {
	if(((my_hitboxID.attack != AT_DSPECIAL) || (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num == 2)) && mailboxID.letters != 0){
		if(my_hitboxID.type == 1){
		dspec_cancel = true;
		}
	}
}

//Dair Grab
if (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num = 1) {
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		destroy_hitboxes();
		attack_end();
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

//Fspecial Grab
if (my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num = 1 || my_hitboxID.hbox_num == 2)) {
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		destroy_hitboxes();
		attack_end();
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

if (my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.id = lvl2projID) {
	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		destroy_hitboxes();
		attack_end();
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}

//Bair Lerp
if (my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num >= 2) {
	var lerpam
	lerpam = [0.5, 0.5]
	

	hit_player_obj.x = lerp(floor(hit_player_obj.x), x + hsp - 50*my_hitboxID.player_id.spr_dir, lerpam[0])
	hit_player_obj.y = lerp(floor(hit_player_obj.y), y + 10 + vsp, lerpam[1])
	
}


//LETTER SMALL
if letter1ID != 0 {
	if letter1ID.has_hit {
		letter1ID = 0;
		sound_play(sound_get("paperhith"));
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 15), my_hitboxID.y - 25, letter_small_vfx);
		k.depth = depth + 1;
	}
}
if letter2ID != 0 {
	if letter2ID.has_hit {
		letter2ID = 0;
		sound_play(sound_get("paperhith"));
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 15), my_hitboxID.y - 25, letter_small_vfx);
		k.depth = depth + 1;
	}
}
if letter3ID != 0 {
	if letter3ID.has_hit {
		letter3ID = 0;
		sound_play(sound_get("paperhith"));
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 15), my_hitboxID.y - 25, letter_small_vfx);
		k.depth = depth + 1;
	}
}
if airletter1ID != 0 {
	if airletter1ID.has_hit {
		airletter1ID = 0;
		sound_play(sound_get("paperhith"));
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 15), my_hitboxID.y - 25, letter_small_vfx);
		k.depth = depth + 1;
	}
}
if airletter2ID != 0 {
	if airletter2ID.has_hit {
		airletter2ID = 0;
		sound_play(sound_get("paperhith"));
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 15), my_hitboxID.y - 25, letter_small_vfx);
		k.depth = depth + 1;
	}
}
if airletter3ID != 0 {
	if airletter3ID.has_hit {
		airletter3ID = 0;
		sound_play(sound_get("paperhith"));
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 15), my_hitboxID.y - 25, letter_small_vfx);
		k.depth = depth + 1;
	}
}

 if (attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 3) { 
	if (lvl1projID.has_hit && !hitpause) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 30), my_hitboxID.y - 30, letter_small_vfx);
		k.depth = depth + 1;
	}
}
 if (attack == AT_DSPECIAL_2) { 
	if (my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 7) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 30), my_hitboxID.y - 60, letter_small_vfx);
		k.depth = depth + 1;
	}
}
 if (attack == AT_HAMMER) { 
	if (my_hitboxID.hbox_num == 2) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 30), my_hitboxID.y - 40, letter_small_vfx);
		k.depth = depth + 1;
	}
}

//FEATHER SMALL
if (attack == AT_UTILT) {
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4) && has_hit {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 20), my_hitboxID.y - 50, feather_small_vfx);
		k.depth = depth - 1;
	}
} 
if (attack == AT_JAB) {
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && has_hit {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 20), my_hitboxID.y - 20, feather_small_vfx);
		k.depth = depth - 1;
	}
} 
if (attack == AT_FTILT ) {
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && has_hit {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 14), my_hitboxID.y - 28, feather_small_vfx);
		k.depth = depth - 1;
	}
} 
if (attack == AT_DTILT ) {
	if (my_hitboxID.hbox_num == 1) && has_hit {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 6), my_hitboxID.y - 28, feather_small_vfx);
		k.depth = depth - 1;
	}
} 
if (attack == AT_DATTACK) {
	if (my_hitboxID.hbox_num == 1) && has_hit {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 16), my_hitboxID.y - 28, feather_small_vfx);
		k.depth = depth - 1;
	}
} 
if (attack == AT_BAIR ) {
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && has_hit {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 40), my_hitboxID.y - 30, feather_small_vfx);
		k.depth = depth - 1;
	}
} 
if (attack == AT_FAIR) {
	if (my_hitboxID.hbox_num == 1) && has_hit {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 6), my_hitboxID.y - 26, feather_small_vfx);
		k.depth = depth - 1;
	}
} 
if (attack == AT_DAIR) {
	if (my_hitboxID.hbox_num == 1) && has_hit {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 6), my_hitboxID.y - 18, feather_small_vfx);
		k.depth = depth - 1;
	}
} 

//BAG SMALL
/*
 if (attack == AT_DSPECIAL_2) { 
	if (packageID.has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 15), my_hitboxID.y - 25, bag_big_vfx);
		k.depth = depth + 1;
	}
}
*/

//BAG BIG
 if (attack == AT_NAIR && state == PS_ATTACK_AIR) { 
	if (my_hitboxID.hbox_num == 1 && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 0), my_hitboxID.y - 30, bag_big_vfx);
		k.depth = depth + 1;
	} else if (my_hitboxID.hbox_num == 2 && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 40), my_hitboxID.y - 30, bag_big_vfx);
		k.depth = depth + 1;
	} 
}
 if (attack == AT_UAIR && state == PS_ATTACK_AIR) { 
	if (my_hitboxID.hbox_num == 1 && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 30), my_hitboxID.y - 40, bag_big_vfx);
		k.depth = depth + 1;
	} else if (my_hitboxID.hbox_num == 2 && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 16), my_hitboxID.y - 15, bag_big_vfx);
		k.depth = depth + 1;
	} 
}
if (attack == AT_FSTRONG && state == PS_ATTACK_GROUND) {
	if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 16), my_hitboxID.y - 40, bag_big_vfx);
		k.depth = depth + 1;
	}
}
if ((attack == AT_USPECIAL || attack == AT_USPECIAL_2) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) {
	if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 16), my_hitboxID.y - 40, bag_big_vfx);
		k.depth = depth + 1;
	}
}
if packageID != 0 {
	if (packageID.has_hit) { 
        var k = spawn_hit_fx(packageID.x - (spr_dir * 20), packageID.y - 30, bag_big_vfx);
	    k.depth = depth + 1;
	}
}

//LETTER BIG
if (attack == AT_FSPECIAL && state == PS_ATTACK_GROUND) { 
	if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 25), my_hitboxID.y - 30, letter_big_vfx);
		k.depth = depth + 1;
	}
}
if (attack == AT_FSPECIAL_AIR && state == PS_ATTACK_AIR) { 
	if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4 || my_hitboxID.hbox_num == 5 ||  my_hitboxID.hbox_num == 6) && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 25), my_hitboxID.y - 30, letter_big_vfx);
		k.depth = depth + 1;
	}
}
 if (attack == AT_FSPECIAL_2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) { 
	if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 25), my_hitboxID.y - 30, letter_big_vfx);
		k.depth = depth + 1;
	}
}
 if ((attack == AT_USPECIAL_2 || attack == AT_USPECIAL) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) { 
	if ((my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4) && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 25), my_hitboxID.y - 80, letter_big_vfx);
		k.depth = depth + 1;
	}
}
if (attack == AT_HAMMER) { 
	if (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 30), my_hitboxID.y - 30, letter_big_vfx);
		k.depth = depth - 1;
	}
}


//FEATHER BIG
if (attack == AT_DSTRONG && state == PS_ATTACK_GROUND) {
	if ((my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && has_hit) {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 30), my_hitboxID.y - 50, feather_big_vfx);
		k.depth = depth + 1;
	}
}
if (attack == AT_USTRONG) {
	if (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) && has_hit {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 0), my_hitboxID.y - 50, feather_big_vfx);
		k.depth = depth + 1;
	}
}
if (attack == AT_DAIR) {
	if (my_hitboxID.hbox_num == 2) && has_hit {
		var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 0), my_hitboxID.y - 80, feather_big_vfx);
		k.depth = depth + 1;
	}
} 	
if (attack == AT_FSPECIAL) {
	if ((my_hitboxID.hbox_num == 3) && has_hit) {
	var k = spawn_hit_fx(my_hitboxID.x - (spr_dir * 0), my_hitboxID.y - 70, feather_big_vfx);
	k.depth = depth + 1;
	}
}	
if (attack == AT_UAIR && (my_hitboxID.hbox_num = 1 || my_hitboxID.hbox_num = 2)) ||
(attack == AT_NAIR && (my_hitboxID.hbox_num = 1 || my_hitboxID.hbox_num = 2)) ||
(attack == AT_FSTRONG && (my_hitboxID.hbox_num = 1)){
	sound_play(sound_get("baghit"));
}
