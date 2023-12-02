//crash prevention

if attack == AT_FSPECIAL {

	if(hbox_num == 1){
		player_id.move_cooldown[AT_FSPECIAL] = 40;
		//swap
		if(player_id.attack == AT_NSPECIAL && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.state_timer == 1 && swap_cd <= 0 && !was_parried){
			//go to bite
			if(disk_ver = 1){	//disk swap happens a bit before player swap
				hitbox_timer = 0;
				phase = 0;
				grav = player_id.disk_grav;
				hit_priority = 1;
				enemies = 0;
				walls = 2;
				kb_value = 7;
				hitpause = 7;
				sound_effect = asset_get("sfx_blow_medium2");
				hsp *= 1.5;
				vsp *= 1.5;
				bounces = 0;
				image_index = 2;
				disk_ver *= -1;
			//go to scratch
			}else{
				hitbox_timer = 0;
				phase = 1;
				grav = 0;
				hit_priority = 0;
				enemies = 1;
				walls = 0;
				kb_value = 7;
				hitpause = 7;
				sound_effect = asset_get("sfx_blow_medium2");
				hsp *= 0.75;
				vsp *= 0.75;
				original_hsp = hsp;
    			original_vsp = vsp;
    			uspec = 1;
    			image_index = 9;
    			disk_ver *= -1;
			}
			swap_cd = 11;
			//print("yuh");
		}
		swap_cd --;
		
		//motion
		if(disk_ver == 1){
			if(phase == 1 && hitbox_timer >= player_id.disk_timer_start){
			    phase = 2;
			}else if(phase == 2){
				if(uspec != 2){
				    hsp -= original_hsp/(((player_id.disk_timer_turn - player_id.disk_timer_start)/2)*uspec);
				    vsp -= original_vsp/(((player_id.disk_timer_turn - player_id.disk_timer_start)/2)*uspec);
				    if(hitbox_timer >= player_id.disk_timer_turn) phase = 3;
				}else if(uspec == 2){
					hsp = lerp(hsp, 0, 0.8);
					vsp = lerp(hsp, 0, 0.8);
					if(hitbox_timer >= player_id.disk_timer_turn + player_id.disk_extra_scratchtime) phase = 3;
				}
			}else if(phase == 3) && (hitbox_timer >= player_id.disk_timer_back || uspec == 2){
				phase = 4;
				grav = 0.7;
				hit_priority = 1;
				enemies = 1;
				kb_value = 5;
				hitpause = 5;
				sound_effect = asset_get("sfx_blow_weak2");
			}
			
			//hitboxes
			if(phase < 4 && get_gameplay_time() % 7 == 0 && (player_id.disk_lockout <= 0)){ //yeah i used xor //2023 edit: using xor was incorrect
			    with(player_id){
			        var next = create_hitbox(AT_FSPECIAL, 2, other.x, other.y);
			        next.hsp = other.hsp;
			        next.vsp = other.vsp;
			        next.spr_dir = other.spr_dir;
			        next.player = other.player;
			        next.was_parried = other.was_parried;
			    }
			}
		}
		
		//bounces
		if (!free){
			bounces += 1;
			//die about it
			if !(player_id.attack == AT_USPECIAL_2  && player_id.state == PS_ATTACK_AIR) sound_play(asset_get("sfx_kragg_roll_land"));
			if(disk_ver == -1){
				if(vsp < 5) vsp = 5;
				vsp *= -1.0;
				hsp *= 0.9;
				if(bounces >= 3) {
					//spinout
					if(was_parried){
						with(player_id){
							disk_obj = create_hitbox(AT_FSPECIAL, 3, other.x, other.y);
							//var temp_angle = 30;
							var new_hsp, new_vsp;
							new_hsp = other.hsp * 0.8;
							new_vsp = other.vsp * 0.8;
							
							disk_obj.hsp = new_hsp;
							disk_obj.vsp = new_vsp;
						}
					}
                    destroyed = true;
                }

		    }else{
		    	if(vsp == 0) y -= 2;
		    	original_vsp *= -1;
		    	vsp = prev_vsp * -1;
		    	if (phase >= 4){
		    		//spinout
		    		if(was_parried){
						with(player_id){
							disk_obj = create_hitbox(AT_FSPECIAL, 3, other.x, other.y);
							//var temp_angle = 30;
							var new_hsp, new_vsp;
							new_hsp = other.hsp * 0.8;
							new_vsp = other.vsp * 0.5;
							
							disk_obj.hsp = new_hsp;
							disk_obj.vsp = new_vsp;
						}
					}
		    		destroyed = true;
		    	}
		    }
		}else if(collision_line(x - 17, y, x+ 17, y, asset_get("par_block"), false, true)){
			bounces += 1;
			//die about it
			if !(player_id.attack == AT_USPECIAL_2 && player_id.state == PS_ATTACK_AIR) sound_play(asset_get("sfx_kragg_roll_land"));
		    if(disk_ver == -1){
		    	if(abs(hsp) < 3) hsp = sign(hsp) * 3;
				hsp *= -1;
		        if(bounces >= 3) { 
		        	//spinout
		    		if(was_parried){
						with(player_id){
							disk_obj = create_hitbox(AT_FSPECIAL, 3, other.x, other.y);
							//var temp_angle = 30;
							var new_hsp, new_vsp;
							new_hsp = other.hsp * 0.8;
							new_vsp = other.vsp * 0.8;
							
							disk_obj.hsp = new_hsp;
							disk_obj.vsp = new_vsp;
						}
					}
                    destroyed = true;
                }

		    }else{
		    	original_hsp *= -1;
		    	hsp = prev_hsp * -1;
		    	if (phase >= 4){
		    		//spinout
		    		if(was_parried){
						with(player_id){
							disk_obj = create_hitbox(AT_FSPECIAL, 3, other.x, other.y);
							//var temp_angle = 30;
							var new_hsp, new_vsp;
							new_hsp = other.hsp * 0.8;
							new_vsp = other.vsp * 0.5;
							
							disk_obj.hsp = new_hsp;
							disk_obj.vsp = new_vsp;
						}
					}
		    		destroyed = true;
		    	}
		    }
		}
		
		//visuals
		if(hitbox_timer % 3 == 0){
			image_index++;
			switch(image_index){
				case 2:
					if(disk_ver == 1) image_index = 0;
					break;
				
				case 9:
					if(disk_ver == -1) image_index = 7;
					break;
				
			}
		}
		
		//spinout when hit
		//hitbox detection
		var hbox = collision_circle(x, y, 17, pHitBox, true, true);
		if(hbox != noone && hbox.hit_priority > 0 && hbox.proj_break == 0 && hbox.player != player){
			with(player_id){
				disk_obj = create_hitbox(AT_FSPECIAL, 3, other.x, other.y);
			}
			with(hbox.player_id) spawn_hit_fx( other.x, other.y, 301);
			var temp_angle = get_hitbox_angle(hbox);
			var new_hsp, new_vsp;
			new_hsp = lengthdir_x(hbox.kb_value,temp_angle);
			new_vsp = lengthdir_y(hbox.kb_value,temp_angle);
			
			player_id.disk_obj.hsp = new_hsp;
			player_id.disk_obj.vsp = new_vsp;
			if(sign(player_id.disk_obj.hsp) == -1){
				player_id.disk_obj.spr_dir = -1;
			}else{
				player_id.disk_obj.spr_dir = 1;
			}
			if(hbox.type == 1){
				hbox.player_id.old_hsp = hbox.player_id.hsp;
				hbox.player_id.old_vsp = hbox.player_id.vsp;
				hbox.player_id.has_hit = true;
				hbox.player_id.hitpause = true;
				if(hbox.player_id.hitstop < hbox.hitpause) hbox.player_id.hitstop = hbox.hitpause - 2;
			}
			destroy_fx = 1;
			sound_play(asset_get("sfx_shovel_hit_light2"));
			destroyed = true;
		}
		
		//failsafe
		if(x < -200 || x > room_width + 200 || y > room_height + 100) { 
			sound_play(asset_get("sfx_kragg_roll_land"));
            destroyed = true;
        }
        
        prev_vsp = vsp;
        prev_hsp = hsp;
        
	}else if(hbox_num == 3){
		player_id.move_cooldown[AT_FSPECIAL] = 5;
		proj_angle = 90;
		//visuals
		if(hitbox_timer % 2 == 0){
			image_index++;
		}
		hsp *= fric;
		vsp *= fric;
		if(hitbox_timer >= length){
			with(player_id) spawn_hit_fx( other.x, other.y, 14);
			destroyed = true;
		}
	}
	

}


if attack == AT_DSPECIAL {  

    player_id.move_cooldown[AT_NSPECIAL] = 3
    player_id.move_cooldown[AT_DSPECIAL] = 10;
    if(in_hitpause && hitpause_timer > 0) {
		in_hitpause = true;
        hitpause_timer--;
	} else {
        in_hitpause = false;
    }
    if hitpause_timer == 2 {
        if !was_parried {
        with player_id {
            
            if bite() {
            sound_play(sound_get("sfx_record1r"))
            spawn_hit_fx( x, y, poses)
            } else {
            sound_play(sound_get("sfx_record1"))
            spawn_hit_fx( x, y, poseb)
            }
            swap();
        }
        }
    }
    if hitpause_timer == 1 {
        if !was_parried {
        with player_id { 
        attack_end();
        destroy_hitboxes();
        set_state(PS_IDLE_AIR) 
        set_attack(AT_DSPECIAL_2 )
        smash_charging = 0; // I fucking hate you
        window = 1;
        window_timer = 0;
        hsp = 0;
        vsp = -4;
        sound_play(asset_get("sfx_swipe_medium2"))
        spr_dir = other.spr_dir
        x = floor(other.x)
        y = floor(other.y)
        }
    } 
    destroyed = true;
    }


    if hitbox_timer == length {
        //print("asdf")
        with player_id { 
            if bite() {
                spawn_hit_fx( other.x, other.y, deaths)     

            } else {
                spawn_hit_fx( other.x, other.y, deathb) 
            }
        }
        destroyed = true;
    }
    if !free {
        with player_id {
            if bite() {
                spawn_hit_fx( other.x, other.y, deaths)     

            } else {
                spawn_hit_fx( other.x, other.y, deathb) 
            }
        }
        sound_play(asset_get("sfx_zetter_downb"))
        destroyed = true;
    }

  
}

if(type == 2 && attack != AT_DSPECIAL && attack != AT_FSPECIAL &&
	attack != AT_USPECIAL && attack != AT_NSPECIAL){
	
	hsp = owner.hsp;
	vsp = owner.vsp;
	if(owner.state == 3){
		destroyed = true;
	}

}

#define bite()

///Shortcut for get_skin() != -1.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active != -1;
}
return _ssnksprites.skin_active != -1;


#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}


#define swap()
if (bite()) {
    set_skin(-1);
} else {
    set_skin("bite");
}
clear_button_buffer( PC_SPECIAL_PRESSED )


#define set_skin(skin)
///Sets the active skin. You can supply a name or an index.
var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
with obj {
    if (is_string(argument[0])) {
        //_ssnksprites.skin_active = array_find_index(_ssnksprites.skins,skin);
        var sskin = -1;
        if argument[0] in _ssnksprites.skins {
            _ssnksprites.skin_active = variable_instance_get(_ssnksprites.skins, argument[0])[@3];
        }
        else print(`Skin ${skin} not found.`);
    } else if (is_number(argument[0])) {
        
        if (_ssnksprites.skin_active >= array_length(_ssnksprites.skins_n)) print(`${skin} is out of bounds of the skin array. [0..${array_length(_ssnksprites.skins_n)-1}] inclusive. (-1 to disable skin.)`);
        else _ssnksprites.skin_active = skin;
    }
}