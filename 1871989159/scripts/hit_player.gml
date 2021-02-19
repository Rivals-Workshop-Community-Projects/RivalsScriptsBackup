//hit_player - called when one of your hitboxes hits a player
if my_hitboxID.attack == AT_DAIR {
old_vsp = -7;
old_hsp = 0;
}
if my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 1 && special_cancel == DIR_NONE {
old_vsp -= 1;
special_cancel = DIR_UP;
}
if (my_hitboxID.attack == AT_DSPECIAL) && my_hitboxID.hbox_num == 4 {
	sound_play(sound_get("mollo_ping"));
}
if (my_hitboxID.attack == AT_DSPECIAL_2) && my_hitboxID.hbox_num == 4 {
	sound_play(asset_get("sfx_obstacle_hit"));
}

if my_hitboxID.attack == AT_EXTRA_1 && my_hitboxID.hbox_num == 3 {

with (hit_player_obj) {
/*
	attack_end();
	set_state(PS_HITSTUN);
	hitpause = 1;
	hitstop = 60;
	hitstop_full = 60;
*/
	//molloflashbang = 55;
	//other.pause_joke++;
	if molloflashbang > -15 or state_cat != SC_HITSTUN continue;
	molloflashbang = 45;
	molloflashplayer = other.player;
	hitstop = hitstop_full-2
}


}
var hhh = fx_sprites[2];
if my_hitboxID.attack == AT_EXTRA_1 && (my_hitboxID.hbox_num == 20 or my_hitboxID.hbox_num == 21) && my_hitboxID.bombowner != noone && instance_exists(my_hitboxID.bombowner) with (my_hitboxID.bombowner) {
		if pop_on_land fuse = 1; else {
		if !(hitboxed & 2) {
		hitboxed += 2;
		sound_play(sound_get("mollo_pap"));
		sound_play(bounce_sound)
		if fuse > 0 fuse = max(fuse-poptime_enemy, 0); //was 30 previously

			var hfx = spawn_hit_fx(floor(x),floor(y),hhh);
			hfx.depth = depth-1;
		}
		
		

			{ //Bonk
					
					if !batted {vsp = -4;
					hsp = sign(hsp)*1
					} else {
					vsp = -4;
					hsp = sign(hsp)*1
					}
					projectile = 0;					
			}
		}
}

if my_hitboxID.player == 0 && hit_player_obj.clone == 0 {hit_player_obj.can_be_hit[0] = my_hitboxID.no_other_hit + hit_player_obj.hitstop;
//sound_play(asset_get("mfx_player_ready"));
hit_player_obj.mollosmoke = 120;
if hit_player_obj != id {
	//take_damage(hit_player_obj.player,0,-my_hitboxID.damage);
	take_damage(0,player,my_hitboxID.damage);
	hit_player_obj.hit_player_obj = id;
//	sound_play(asset_get("mfx_player_ready"));
}


}