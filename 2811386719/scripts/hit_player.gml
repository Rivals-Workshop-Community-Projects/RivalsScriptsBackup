if (my_hitboxID.attack == AT_NSPECIAL or (my_hitboxID.attack == AT_USPECIAL_GROUND and ( my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2))
	or (my_hitboxID.attack == AT_USPECIAL and my_hitboxID.hbox_num == 1) or (my_hitboxID.attack == AT_FSPECIAL and my_hitboxID.hbox_num == 1)) {
	
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
		attack_end();
		switch(attack){
			case AT_NSPECIAL:
				permanent_static = false;
				set_attack(AT_NTHROW);
				hurtboxID.sprite_index = get_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE);
				sound_play(asset_get("sfx_forsburn_spew_end"))
				break;
			case AT_USPECIAL_GROUND:
				// if(hit_player_obj.static_pull) StaticConsume(hit_player_obj);
				switch_to_uthrow = true;
				break;
			
		}
		
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

if(my_hitboxID.attack == AT_JAB and my_hitboxID.hbox_num == 5){
	if(hit_player_obj.static_pull) StaticConsume(hit_player_obj)
}

if(my_hitboxID.attack == AT_USPECIAL and my_hitboxID.hbox_num == 2){
	// permanent_static = true;
	static = 100;
	var spawned = false;
	//with oPlayer if !spawned and id != other { spawn_dust_fx(x, y, other.lightningfx_uspecial_spr, 20); spawned = true}
}

if(attack == AT_EXTRA_1 and my_hitboxID.hbox_num == 1){
	set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 0);
	set_window_value(AT_EXTRA_1, 3, AG_WINDOW_GOTO, 4);
}

if(my_hitboxID.attack == AT_FSPECIAL and my_hitboxID.hbox_num == 2){
	shake_camera(10, 8);
}

static_cooldown = static_cooldown > 60 ? static_cooldown : 60;

if(my_hitboxID.attack == AT_NTHROW and (my_hitboxID.hbox_num == 2 or my_hitboxID.hbox_num == 3)){
	sound_play(asset_get("sfx_forsburn_spew_smoke"))
	if(my_hitboxID.hbox_num == 3){
		var t = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, nspecial_water_miss_ground_hitfx_hfx)
		t.depth = depth - 1
	}
}

if(my_hitboxID.attack == AT_DATTACK){
	sound_play(asset_get("sfx_waterhit_weak"))
}

if("bubble" in my_hitboxID and my_hitboxID.bubble){
	var dir = point_direction(hit_player_obj.x, hit_player_obj.y, my_hitboxID.x, my_hitboxID.y);
	my_hitboxID.hsp *= sign(my_hitboxID.hsp*sign(lengthdir_x(1, dir)));
	// my_hitboxID.last_attack = 0; 
	my_hitboxID.volley_cooldown = 10; //Resetting the ability to be hit again after X frames
	my_hitboxID.hitbox_timer = max(my_hitboxID.hitbox_timer - 90, 0);
}

if(my_hitboxID.attack == AT_DSPECIAL and (my_hitboxID.hbox_num == 3 or my_hitboxID.hbox_num == 4) ){
	hit_player_obj.should_make_shockwave = false;
}

if(my_hitboxID.attack == AT_FSTRONG and my_hitboxID.hbox_num == 2){
	StaticMark()
}

if(attack == AT_NTHROW and (my_hitboxID.hbox_num >= 2)){
	grab_special_consume()
}
if(attack == AT_UTHROW and (my_hitboxID.hbox_num >= 2)){
	grab_special_consume()
}

if(static >= 100 and !hit_player_obj.static_pull){
	if(my_hitboxID.attack == AT_NSPECIAL or my_hitboxID.attack == AT_USPECIAL_GROUND){
		do_not_consume = true
	}
	StaticMark()
}

//AI
n_times_got_hit--;
// print(n_times_got_hit)
#define grab_special_consume()

if(!do_not_consume and hit_player_obj.static_pull){
	StaticConsume(hit_player_obj);
}
if(do_not_consume) do_not_consume = false

#define StaticMark()

hit_player_obj.static_pull = 450;
sound_play(asset_get("sfx_absa_singlezap2"))
static = 0;

#define StaticConsume(sp)

sound_play(asset_get("sfx_absa_new_whip2"));
sp.static_pull = 0;