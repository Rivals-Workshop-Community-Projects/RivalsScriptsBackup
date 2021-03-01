//print_debug("Hit player!!!!!!!!!!!!!!!!!!!!")

if my_hitboxID.attack == AT_DTILT {
	has_hit_player = true;
}

if my_hitboxID.attack == AT_DTHROW {
	vsp = min(vsp, 0)
	old_vsp = vsp;
}

if hit_player_obj.mycolich_sporetime > 0 {
	hit_player_obj.mycolich_sporetime = hit_player_obj.mycolich_sporemax;

}

if hit_player_obj.mycolich_player == player && hit_player_obj.mycolich_sporetime > 0 && hit_player_obj.mycolich_sporetime <= fspecial_mintime  {
	hit_player_obj.mycolich_sporetime = 0;
	sound_play(asset_get("sfx_poison_hit_weak"))
}

if my_hitboxID.effect == 999 && my_hitboxID.orig_player = player && hit_player_obj.state_cat == SC_HITSTUN { //Grabbing
	hit_player_obj.mycolich_grabbed = my_hitboxID
}
if my_hitboxID.attack == AT_NSPECIAL {
				var d =  get_player_damage(player) - selfstab_damage
				set_player_damage(player, max(d, 0))

				if instance_exists(mushins) {
					mushins.damage = max(mushins.damage - max(-d, 0), 0)
				}
				
				selfstab = 0;
				selfstab_target = noone;
				selfstab_speed = 0;
				
				if runeN reflects_left = min(reflects_left+1, 3)
				sound_play(asset_get("sfx_crunch_water"));
				sound_play(asset_get("sfx_may_wrap1"));
				selfstab_mode = 0;
				
				
				if instance_exists(mushins) && mushins.state == 0 {
					mushins.damage = max(mushins.damage-floor(my_hitboxID.damage/healdiv), 0)
				}
				
}

if my_hitboxID.attack == AT_NSPECIAL_2 {
	selfstab = 0;
	
		var s = 10
		var ins = instance_create(hit_player_obj.x,floor(hit_player_obj.y-(hit_player_obj.char_height/2)),"obj_article2")
		ins.timer = 30
		ins.image_xscale = 0
		ins.hsp = s
		ins.vsp = s
		ins = instance_create(ins.x,ins.y,"obj_article2")
		ins.timer = 30
		ins.image_xscale = 0
		ins.hsp = -s
		ins.vsp = s
		ins = instance_create(ins.x,ins.y,"obj_article2")
		ins.timer = 30
		ins.image_xscale = 0
		ins.hsp = s
		ins.vsp = -s
		ins = instance_create(ins.x,ins.y,"obj_article2")
		ins.timer = 30
		ins.image_xscale = 0
		ins.hsp = -s
		ins.vsp = -s
	var d =  get_player_damage(player) - selfstab_damage
	set_player_damage(player, max(d, 0))
	if instance_exists(mushins) {
		mushins.damage = max(mushins.damage - max(-d, 0), 0)
	}
	if runeN reflects_left = min(reflects_left+1, 3)
	//Add reflects
	//reflects_left = max_reflects;
	
	//Temp-heal
	//{
	/*
	set_player_damage(player, max(get_player_damage(player) - 20, 0))
	if hit_player_obj.mycolich_type == 0 &&  hit_player_obj.mycolich_sporetime > 0 {
		hit_player_obj.mycolich_player = player;
		hit_player_obj.mycolich_type = 2;
	}
		//Temp-heal
		if hit_player_obj.mycolich_type == 0 {
			hit_player_obj.mycolich_type = 1;
			hit_player_obj.mycolich_sporetime = 60+get_player_damage(hit_player_obj.player)/2
			hit_player_obj.mycolich_player = player
			
			var curheal = hit_player_obj.mycolich_healed 
			hit_player_obj.mycolich_healed = get_player_damage(hit_player_obj.player);
			set_player_damage(hit_player_obj.player, curheal)
			set_player_damage(player, get_player_damage(player) + hit_player_obj.mycolich_healed )
			
			
			if instance_exists(mushins) with (mushins) {
			if player_id != other.id continue;
			ignored_damage += other.hit_player_obj.mycolich_healed;
			}	
		}
		
		*/
	//}
}
if my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num < 4 {
	old_vsp = min(old_vsp, 0)
}
if my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 {
		my_hitboxID.hsp *= -1;
		my_hitboxID.vsp = -2;
}

if my_hitboxID.attack == AT_UAIR {
		

		sound_play(asset_get("sfx_frog_dspecial_hit"));
		window = 4;
		window_timer = 0;
		old_vsp = get_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED)
		hit_player_obj.free = true;
}
if my_hitboxID.attack == AT_BAIR {
		sound_play(asset_get("sfx_frog_dspecial_hit"));
		window = 4;
		window_timer = 0;
		old_vsp = get_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED)
		old_hsp = get_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED)*spr_dir
}

if my_hitboxID.attack == AT_FSPECIAL {
	set_attack(AT_FSPECIAL_2)
	state_timer = 0;
	sound_play(asset_get("sfx_frog_dspecial_hit"))
	fspecial_target = hit_player_obj;
	if fspecial_target.from_crouch with fspecial_target {
//		set_state(PS_HITSTUN);
//		old_vsp = -1;

	}
}

if selfstab && my_hitboxID.type == 1 && !selfstab_target && !instance_exists(selfstab_hbox) && !hit_player_obj.clone {
	//sound_play(sound_get("towerclimb_hunter"));
	selfstab_target = hit_player_obj;


	//hitstop += 5;
	//hit_player_obj.hitstop += 5;
}
if runeL && my_hitboxID.type == 1 && instance_exists(mushins) && mushins.state == 0 {
	//mushins.damage = max(mushins.damage-floor(my_hitboxID.damage/healdiv), 0)
	mushins.damage = max(mushins.damage-1, 0)
}