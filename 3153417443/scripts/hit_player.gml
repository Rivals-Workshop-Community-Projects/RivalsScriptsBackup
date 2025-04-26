if attack == AT_UAIR {
	sound_play(asset_get("sfx_blow_heavy1"));
}

if attack == AT_FAIR {
	sound_play(asset_get("sfx_blow_medium3"));
}

if attack == AT_DSTRONG && my_hitboxID.hbox_num == 1 {
	sound_play(asset_get("sfx_blow_heavy1"));
}

if attack == AT_FSTRONG && my_hitboxID.hbox_num == 2 {
	sound_play(asset_get("sfx_poison_hit_strong"), false, noone, 0.7, 1);
	grabbed_player_obj = noone;
	fstrongstrongfx = false;
}

if attack == AT_USPECIAL && special_down && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) {
	sound_play(sound_get("catch"), false, noone, 0.4, 1);
}

if attack != AT_USPECIAL && attack != AT_FSPECIAL && attack != AT_FSTRONG && bubbleexists = true {
	if (instance_exists(hitbubble) && hitbubble != 0){

	if hitbubble.grabbed_id != noone && hitbubble.state == 3 {
		//bubbledamage = my_hitboxID.damage;
		hit_break = true;
	}
			}
}

if (my_hitboxID.attack == AT_FSPECIAL_2) {
	switch (window){
		case 1:
		if fspecstrongfx = true{
		var tfx = spawn_hit_fx(hitbubble.x - 20, hitbubble.y - 5, fstrong_hit_vfx);
		tfx.draw_angle = 90
		tfx.depth = depth + 1;
		if(spr_dir = -1){
		tfx.spr_dir = 1;
		}
		}
		break;
		case 2:
		if fspecstrongfx = true{
		var tfx = spawn_hit_fx(hitbubble.x - 20*spr_dir, hitbubble.y + 20, fstrong_hit_vfx);
		tfx.draw_angle = 180
		tfx.depth = depth + 1;
		}
		break;
		case 3:
		if fspecstrongfx = true{
		var tfx = spawn_hit_fx(hitbubble.x + 23, hitbubble.y + 5, fstrong_hit_vfx);
		tfx.draw_angle = 270
		tfx.depth = depth + 1;
		if(spr_dir = -1){
		tfx.spr_dir = 1;
		}
		}
		break;
		case 4:
		if fspecstrongfx = true{
		var tfx = spawn_hit_fx(hitbubble.x + 1*spr_dir, hitbubble.y - 20, fstrong_hit_vfx);
		tfx.depth = depth + 1;
	}
	break;
}
	fspec2hit = true;
	grabbed_player_obj = noone;
	fspecstrongfx = false;
}

if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 5) {
		// tfx = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 304);
		// tfx.depth = depth + 1;
		// if(spr_dir = -1){
		// tfx.spr_dir = 1;
  //  	}
	grabbed_player_obj = noone;
	uspecstrongfx = false;
}

// if (attack = AT_USPECIAL && my_hitboxID.hbox_num == 5) {
// 		var tfx = spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 304);
// 		tfx.depth = -10
// 		if(spr_dir = -1){
// 		tfx.spr_dir = 1;
//     	}
//     	print_debug(tfx.depth)
// }

if (my_hitboxID.attack == AT_FSPECIAL && (my_hitboxID.hbox_num = 1)) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}


//hit_player.gml
if (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num = 1) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}


if (my_hitboxID.attack == AT_USPECIAL && (my_hitboxID.hbox_num = 1 || my_hitboxID.hbox_num == 2)) {
	
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {
		
		//transition to the 'throw' part of the attack.
		destroy_hitboxes();
		attack_end();
		//if this attack hasn't grabbed a player yet, grab the player we just hit.
		if (!instance_exists(grabbed_player_obj)) { grabbed_player_obj = hit_player_obj; }
		
		//if this attack has already grabbed a different opponent, prioritize grabbing the closest opponent.
		else {
			var old_grab_distance = point_distance(x, y, grabbed_player_obj.x, grabbed_player_obj.y);
			var new_grab_distance = point_distance(x, y,     hit_player_obj.x,     hit_player_obj.y);
			if (new_grab_distance < old_grab_distance) { grabbed_player_obj = hit_player_obj; }
		}
	}
}
