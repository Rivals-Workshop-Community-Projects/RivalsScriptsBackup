
	
    	
if(attack == AT_USPECIAL){
	if (hbox_num == 3) {
    	if(instance_exists(player_id.splatbomb) && place_meeting(x, y, player_id.splatbomb)){
    		player_id.splatbomb.hsp = 3 * spr_dir;
    		player_id.splatbomb.vsp = -9;
    		player_id.splatbomb.hitbox_timer = bomb_allert + 20
    		sound_play(sound_get("BombAlert01"))
    	}
	}
	if(hbox_num == 4){
		x = player_id.x
		if(!player_id.free || place_meeting(x, y, player_id) || y < player_id.y || player_id.hitpause){
			destroyed = true;
		}
	}
}




if (attack == AT_DSPECIAL){
	if(hbox_num == 2){
    	if(instance_exists(player_id.splatbomb) && place_meeting(x, y, player_id.splatbomb)){
    		player_id.splatbomb.hsp = 6 * spr_dir;
    		player_id.splatbomb.vsp = -9;
    		player_id.splatbomb.hitbox_timer = bomb_allert + 20
    		sound_play(sound_get("BombAlert01"))
    	}
    	if(instance_exists(player_id.bobblehat) && instance_exists(player_id.bobblehat.InkstrikeBomb) && place_meeting(x, y, player_id.bobblehat.InkstrikeBomb)){
    		player_id.bobblehat.InkstrikeBomb.hsp = 4 * spr_dir;
    		player_id.bobblehat.InkstrikeBomb.vsp = -12;
    		player_id.bobblehat.InkstrikeBomb.spr_dir = player_id.specs.spr_dir
    	}
	}
    if(hbox_num == 3){
    	if(instance_exists(player_id.splatbomb) && place_meeting(x, y, player_id.splatbomb)){
    		player_id.splatbomb.hsp = 9 * spr_dir;
    		player_id.splatbomb.vsp = -9;
    		player_id.splatbomb.hitbox_timer = bomb_allert + 20
    		sound_play(sound_get("BombAlert01"))
    	}
    	damage = damage + .2
    	kb_value = kb_value + .2
    	hitpause = hitpause + .2
    }
	if (hbox_num == 4){
		if(collision_point(x - 0 * spr_dir, y + 0, asset_get("par_block"),false,true) != noone || (has_hit == true && destroyed == false))
		{
			Inkstrike_destroyed = true;
		}else{
			through_platforms = 0;
		}
    	if(Inkstrike_destroyed = true){
    		sound_play(sound_get("BombardmentBurst00"))
    		spawn_hit_fx(x, y, player_id.Inkstrike)
    		create_hitbox(AT_DSPECIAL,5,x - 0 * spr_dir, y - 40);
			shake_camera( 8, 6 );
			destroyed = true
    	}
		proj_angle = radtodeg(arctan(vsp/-hsp));
	}
	if (hbox_num == 5) {
    	if(instance_exists(player_id.splatbomb) && place_meeting(x, y, player_id.splatbomb)){
    		player_id.splatbomb.hsp = 3 * spr_dir;
    		player_id.splatbomb.vsp = -9;
    		player_id.splatbomb.hitbox_timer = bomb_allert + 20
    		sound_play(sound_get("BombAlert01"))
    	}
	}
}

if (attack == AT_NSPECIAL){
	proj_angle = radtodeg(arctan(vsp/-hsp));
    if(instance_exists(player_id.splatbomb)){
    	target = draw_sprite(sprite_get("target"), 0, player_id.splatbomb.x, player_id.splatbomb.y);
    	
    	
    	if(place_meeting(x, y, player_id.splatbomb)){
    	
    		player_id.splatbomb.bomb_explode = true;
    		target.destroyed = true
    	}
   	}
	if (hbox_num == 2) {
		if(!free || collision_point(x + 10 * spr_dir, y + 0, asset_get("par_block"),false,true) != noone){
			destroyed = true
		}
	}
}


if(attack == AT_FSPECIAL){
	if (hbox_num == 1) {
		player_id.bomb_out = true
		if(collision_point(x + 6 * spr_dir, y + 0, asset_get("par_block"),false,true) != noone){
			bomb_land = true;
			if(bomb_land == false){
				hsp = -(hsp + 9)
				spawn_hit_fx(x + 2 * spr_dir, y, player_id.uspecial_proj)
    			sound_play(sound_get("Surprised00"))
			}
			
		}
		if(!free || collision_point(x + 10 * spr_dir, y + 0, asset_get("par_block"),false,true) != noone){
			if(bomb_land == false){
				spawn_hit_fx(x + 2 * spr_dir, y, player_id.uspecial_proj)
    			sound_play(sound_get("Surprised00"))
				bomb_land = true;
				if(bomb_hitbox != noone){
					bomb_hitbox.destroyed = true;
					bomb_hitbox = noone;
				}
			}
			if(collision_point(x + 10 * spr_dir, y + 0, asset_get("par_block"),false,true) != noone){
				proj_angle = 0 * spr_dir
			}else if(hsp > 0){
				proj_angle = -90
			}else if(hsp < 0){
				proj_angle = 90
			
			}
		}else{
			proj_angle = radtodeg(arctan(vsp/-hsp));
			bomb_land = false;
		}
		
		if(bomb_land == true){
			hsp = 0
			vsp = 0
			
		}else{
			if(bomb_hitbox == noone){
				bomb_hitbox = create_hitbox(AT_FSPECIAL, 6,x - 0 * spr_dir, y + 0);
			}else{
				bomb_hitbox.x = x
				bomb_hitbox.y = y
			}
		}
		if(hitbox_timer == bomb_allert){
    		sound_play(sound_get("BombAlert01"))
			
		}
		if(hitbox_timer > bomb_allert/2){
			img_spd = hitbox_timer/500
		}
		if(hitbox_timer == bomb_allert + 50 || was_parried){
    		 bomb_explode = true;
		
		}
    	if(bomb_explode == true){
    		sound_stop(sound_get("BombAlert01"))
    		player_id.bomb_out = false;
    		player_id.splatbomb.destroyed = true;
    		sound_play(sound_get("BombExplosion00"))
			if(player_id.PickledCritz == 7){
    			spawn_hit_fx(x, y + 20, player_id.pickledsplat)
			}else{
    			spawn_hit_fx(x, y + 20, player_id.Inksplode)
			}
			if(bomb_hitbox != noone){
				bomb_hitbox.destroyed = true;
				bomb_hitbox = noone;
			}
    		create_hitbox(AT_FSPECIAL, 2,x - 0 * spr_dir, y + 0);
			shake_camera( 4, 6 );
    		bomb_explode = false;
    	}
	}
}

/*

if (attack == AT_DSPECIAL) {
	if(player_id.hitpause = false && place_meeting(x, y, player_id) && hbox_num == 2) {
		with(player_id) {
			if (!was_parried) {
			if (!invince_time) {
				take_damage(player, player, 4);
			}
			
			
                sound_play(asset_get("sfx_burnconsume"));
                spawn_hit_fx(x,y-25,Inksplode);
			
				hitpause = true;
				hitstop_full = get_hitstop_formula(get_player_damage(player), 4, 6, 0, 0);
				hitstop = hitstop_full;
				
				has_walljump = true;
				
				var dir_to_player = sign(x - other.x);
				
				//orig_knock = get_kb_formula(get_player_damage(player), 0.95, 1, 4, 12, 0.05);
				orig_knock = get_kb_formula(get_player_damage(player), 0.95, 1, 4, 12, 0.00);
				old_hsp = hsp + lengthdir_x(orig_knock, 35);
				old_vsp = lengthdir_y(orig_knock, 35);
				
				djumps = 0;
			}
		}
	}
}

    	if(instance_exists(pHitBox) && place_meeting(x, y, pHitBox)){
    		player_id.splatbomb.hsp = 9 * spr_dir;
    		player_id.splatbomb.vsp = -9;
  //  		player_id.splatbomb.destroyed = true;
    	}
    	
    	
*/