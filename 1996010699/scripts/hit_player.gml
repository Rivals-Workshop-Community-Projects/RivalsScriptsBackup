if (GAUGE_EXP_CURRENT < gaugeToCheck && hit_player_obj.player != player){
	if(item[13, 3] == 1){
		GAUGE_EXP_CURRENT = GAUGE_EXP_CURRENT + (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE) * 1.2);
	} else {
		GAUGE_EXP_CURRENT = GAUGE_EXP_CURRENT + get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE);
	}
}

if(item[15, 3] == 1 && crouchCounter < 100 && hit_player_obj.player != player){
	crouchCounter = crouchCounter + (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE));
}

if (my_hitboxID.attack==AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	if(carbounceRestoredJumps == false && djumps > 0){
		djumps = 0;
		carbounceRestoredJumps = true;
	}
	attack_end();
	window = 6;
	window_timer = 0;
}

if (my_hitboxID.attack==AT_BAIR && item[25, 3] == 1){
	old_vsp--;
}

if(item[14, 7] == false && item[14, 3] == 0 && my_hitboxID.attack==AT_DSPECIAL){
	achieveUnlock(14);
}

//absa
if(item[7, 7] == false && item[7, 3] == 0 && item[25, 3] == 0 && my_hitboxID.attack==AT_BAIR && my_hitboxID.hbox_num == 2){
	achieveUnlock(7);
}

/*
if(my_hitboxID.attack==AT_NAIR){
	if(item[2, 3] == 0 && item[2, 7] == false){
		nairbounceTryUnlock = true;
		if(nairbounceTryUnlock && nairbounceUnlockTimer > 0 && nairbounceUnlockTimer < 60){
			achieveUnlock(2);
		}
	}
}
*/


if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
	crysProj_timer = crysProj_tickDelay;
	crysProj_id = my_hitboxID;
	canCrystalBounce = false;
}

//toothpaste unlock
if(has_rune("I") && item[16, 3] == 0 && item[16, 7] == false && my_hitboxID.attack == AT_UTILT && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3) && (get_player_damage(hit_player_obj.player) - (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_DAMAGE)) <= 32)){
	achieveUnlock(16);
}

if(my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 4){
	if(y == hit_player_obj.y){
		can_hit = false;
	}
}


if(item[11,3] == 1){
	if(my_hitboxID.attack==AT_UTILT && (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3)){
		create_deathbox(has_hit_id.x, has_hit_id.y, 1000, 1000, has_hit_id.player, true, 1, 20, 2);
		//create_deathbox(has_hit_id.x, has_hit_id.y, 400, 400, has_hit_id.player, false, 1, 20, 2);
	}
}


if(my_hitboxID.attack==AT_DAIR){
	if(my_hitboxID.hbox_num < 3){
		old_hsp = old_hsp / 1.5;
		if(vsp > -5){
			old_vsp -= 1;
		} else {
			old_vsp += 1;
		}
	}
	
	if(my_hitboxID.hbox_num == 3 && (attack_down || strong_down || down_stick_down)){
		old_vsp = dairBounce;	
	}
}


// XP shard

var article_times = my_hitboxID.damage + xp_mod;
var spawnsShards = false;
xp_test = 0;

if(my_hitboxID.attack==AT_NSPECIAL){
	spawnsShards = true;
} else {
	spawnsShards = false;
}

if (spawnsShards){
	if (my_hitboxID.kb_angle >= 70 || my_hitboxID.kb_angle <= 110){
		xp_angle = 1;
	}
	else if (my_hitboxID.kb_angle >= 240 || my_hitboxID.kb_angle <= 300){
		xp_angle = 2;
	}
	else{
		xp_angle = 0;
	}

	if (hit_player_obj != self){   
		repeat (article_times){
			instance_create(hit_player_obj.x, hit_player_obj.y - 12,"obj_article1");
			xp_test++;
		}
	}
}

//Credit to Mawral (Epinel) for original suplex code
if(my_hitboxID.attack==AT_FSTRONG){
	vsp = 0;
	suit_grab_connected = true;

	suit_grabbed_player_object_id = hit_player_obj;
	suit_grabbed_player_x_offset = round(x - hit_player_obj.x);
	suit_grabbed_player_y_offset = round(y - hit_player_obj.y);

	suit_grabbed_player_suplex_distance = ceil( getPlayerWidth(hit_player_obj) / 2) + 4;
}

#define achieveUnlock(i)
{
	item[i, 7] = true;
	var trophyFX = spawn_hit_fx( x + (spr_dir * 16) , y - 48 , achTrophy );
	trophyFX.depth = -10;
	sound_play( asset_get("sfx_shovel_knight_fanfare"));
	itempoolUpdated = false;
	setNextItem();
}

#define getPlayerWidth
return (argument[0].hurtboxID.bbox_right - argument[0].hurtboxID.bbox_left);

#define setNextItem
{
	r = random_func(0, numItemsAvailable, true);
	if(ID_chosen == 6 && IDs_available[0] != 6){
		IDLockedIn = false;
		ID_chosen = IDs_available[r];
		IDLockedIn = true;
	}
	if(IDLockedIn == false){
		ID_chosen = IDs_available[r];
		IDLockedIn = true;
	}
	itempoolUpdated = false;
	newItemHUDRefresh = true;
}