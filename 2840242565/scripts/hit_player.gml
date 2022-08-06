//hit_player.gml

if (my_hitboxID.attack == AT_UTILT){
	if ((y - hit_player_obj.y)>87){
		hit_player_obj.y += 12
	}
	if (my_hitboxID.hbox_num == 1){
		hit_player_obj.x += 6*(spr_dir);
		if (hit_player_obj.free == false){
			hit_player_obj.y -= 12;
		}
	}
	if (my_hitboxID.hbox_num == 2){
		hit_player_obj.x = x + 16*spr_dir;
		if (hit_player_obj.free == false){
			hit_player_obj.y -= 16;
		}
	}
	if (my_hitboxID.hbox_num > 5){
		hit_player_obj.y += 2;
	}
}

if (my_hitboxID.attack == AT_NAIR){
	if (my_hitboxID.hbox_num == 1
	|| my_hitboxID.hbox_num == 2
	|| my_hitboxID.hbox_num == 3){
		sound_play(asset_get("sfx_waterhit_heavy2"), false, noone, 0.8, 1.15);
	}
	if (my_hitboxID.hbox_num == 4){
		sound_play(asset_get("sfx_waterhit_heavy2"), false, noone, 1, 1);
	}
}

if (my_hitboxID.attack == AT_UAIR){
	if (my_hitboxID.hbox_num == 1){
		hit_player_obj.x -= 12*spr_dir;
		hit_player_obj.y -= 4
	}
	if (my_hitboxID.hbox_num > 1 && my_hitboxID.hbox_num < 5){
		hit_player_obj.y += 4
	}
}

if (my_hitboxID.attack == AT_BAIR){
	sound_play(sfx_krdl_sword_blow1, false, noone, 1.2, 1);
}

if (my_hitboxID.attack == AT_DAIR){
	old_vsp = -7;
}

if (my_hitboxID.attack == AT_FSTRONG){
	if (my_hitboxID.hbox_num == 3){
		sound_play(sfx_krdl_ice_hit);
	}
}

if (my_hitboxID.attack == AT_USTRONG){
	if (my_hitboxID.hbox_num == 1){
		hit_player_obj.x -= 14*spr_dir
		if (hit_player_obj.free == false){
			hit_player_obj.y += 12;
		}
	}
	if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 2){
		hit_player_obj.y += 6;
	}
	if (my_hitboxID.hbox_num == 4){
		sound_play(sfx_krdl_spark_hit);
	}
}
		
if (my_hitboxID.attack == AT_DSTRONG){
	if (my_hitboxID.hbox_num == 1){
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), gooey_dstrong_hit_fall);
    	fx.depth = hit_player_obj.depth - 1;
	}
	if (my_hitboxID.hbox_num == 2){
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), gooey_dstrong_hit_strong);
    	fx.depth = hit_player_obj.depth - 1;
	}
}

if (my_hitboxID.attack == AT_NSPECIAL) {
	if my_hitboxID.hbox_num == 2 {
		sound_play(sound_get("sfx_hit_sharp2"));
	}
}


if (my_hitboxID.attack == AT_NSPECIAL) {
	my_hitboxID.hittimer = 24;
	if (my_hitboxID.hbox_num == 1) {
		spawn_hit_fx(hit_player_obj.x+2*spr_dir,hit_player_obj.y,301);
			
		if my_hitboxID.has_hit && !my_hitboxID.was_parried {
			my_hitboxID.damage = 1;
			my_hitboxID.kb_value = 4;
			my_hitboxID.kb_scale = .25;
			my_hitboxID.kb_angle = 50;
			
			if !my_hitboxID.boomerstop {
				//my_hitboxID.hit_flipper = 4;
			}
		}
	}
	if (my_hitboxID.hbox_num == 2) {
		my_hitboxID.damage = 2;		
		spawn_hit_fx(hit_player_obj.x+2*spr_dir,hit_player_obj.y,304);
	}
	
	if (my_hitboxID.hbox_num == 4) {
		spawn_hit_fx(hit_player_obj.x+2*spr_dir,hit_player_obj.y,304);
		sound_play(sfx_krdl_sword_blow1);
		//sound_play(sound_get("sfx_hit_sharp1"));
	}
}

		
if (my_hitboxID.attack == AT_FSPECIAL){
	//print(my_hitboxID.hbox_num);
	if (my_hitboxID.hbox_num == 1){
		spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), 304);
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), gooey_fspec_fire_lrg);
		fx.depth = hit_player_obj.depth - 1;
		sound_play(sfx_krdl_fire_hit);
		sound_play(asset_get("sfx_burn_consume"), false, noone, 0.6, 0.6);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
	}
	if (my_hitboxID.hbox_num == 2){
		spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), 301);
		var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), gooey_fspec_fire_med);
    	fx.depth = hit_player_obj.depth - 1;
		sound_stop(asset_get("sfx_blow_heavy1"));
		sound_stop(asset_get("sfx_blow_heavy2"));
		sound_play(asset_get("sfx_blow_medium2"));
		sound_play(asset_get("sfx_burnapplied"));
		sound_play(asset_get("sfx_zetter_fireball_fire"));
	}
}


if (my_hitboxID.attack == AT_USPECIAL){
	if (my_hitboxID.hbox_num == 1){
		sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.7, 0.45);
		sound_play(asset_get("sfx_waterhit_heavy2"), false, noone, 1, 1);
	}
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_waterhit_heavy2"), false, noone, 0.8, 1.15);
	}
}


if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1) {

	sound_play(sfx_krdl_inhale_grab);
	
	var fx = spawn_hit_fx(lerp(my_hitboxID.x,hit_player_obj.x, 0.5), lerp(my_hitboxID.y,hit_player_obj.y - (hit_player_obj.char_height/2), 0.5), 301);
    fx.depth = hit_player_obj.depth - 1;

	hit_player_obj.gooeyOpponentShouldBeVisisbleTimer = 0;

	gooeyPPLHit++;
	print(gooeyPPLHit);

	if(hit_player_obj.url != url){
		hit_player_obj.gooeyOpponentShouldBeVisisbleTimer = 15*gooeyPPLHit;
	}

	if (!free){
		hsp = 0;
		old_hsp = 0;
	}
	//Before grabbing the opponent, first make sure that:
	//-The player is in an attack animation
	//-The opponent is in hitstun
	//-The player did not get parried, and
	//-The opponent is not a Forsburn clone.

	if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
	  && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND)
    	  && was_parried == false
	  && hit_player_obj.clone == false) {

		//transition to the 'swallowed' part of the attack.
		destroy_hitboxes();
		attack_end();
		window = 4;
		window_timer = 0;
        hit_player_obj.visible = false;

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

if (my_hitboxID.attack == AT_DSPECIAL){
	if (my_hitboxID.hbox_num == 2){
		sound_play(sfx_krdl_spit);
		grabbed_player_obj.gooeyOpponentShouldBeVisisbleTimer = 0;
		if (grabbed_player_obj.visible = false){
			grabbed_player_obj.visible = true;
		}
		grabbed_player_obj = noone;
	}
}