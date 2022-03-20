//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/



//Are there too many articles? If so, I should die




//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj"))/* && !(state == 3 || state == 2)*/) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	with player_id{
		if !has_rune("O"){
			move_cooldown[AT_DSPECIAL] = 0;
		}
	}
    instance_destroy();
    exit;
}

if (x > room_width or y > room_height + 200){
	with player_id{
		if !has_rune("O"){
			move_cooldown[AT_DSPECIAL] = 0;
		}
	}
    instance_destroy();
    exit;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
		state = 1;
		state_timer = 0;
}

if (state < 5){
	image_angle -= hsp * 2;
	if (free == true){
		create_hitbox( AT_DSPECIAL, 4, x, y).player = owner;
	if (vsp < 13){
	vsp += .7;
	}
	}
	if (free == true){
		if (hit_wall == true){
			hsp -= 4*spr_dir;
			hit_wall = false;
		}
	}
	/*
	if (instance_exists(player_id.portal1) && player_id.portal1.portal_cooldown == 0 
	&& player_id.portal1.state_timer > 90){
			if (hsp > 0){
				apple_hsp = hsp;
			}
			else {
				apple_hsp = -hsp;
			}
			if (vsp > 0){
				apple_vsp = vsp;
			}
			else {
				apple_vsp = -vsp;
			}
				if (apple_hsp != 0 && apple_vsp != 0){
					apple_speed = apple_hsp + apple_vsp;
					apple_speed = apple_speed/1.1;
					apple_speed_less = apple_speed/1.25;
				}
				if (apple_hsp == 0 && apple_vsp != 0){
					apple_speed = apple_vsp;
					apple_speed_less = apple_vsp;
				}
				if (apple_hsp != 0 && apple_vsp == 0){
					apple_speed = apple_hsp;
					apple_speed_less = apple_hsp;
				}
				
		}
		*/
	
}
	/*
if (place_meeting(x, y, player_id.portal1) && player_id.portal1.portal_cooldown == 0){
	x = player_id.portal2.x;
	y = player_id.portal2.y;
	player_id.portal1.portal_cooldown = 50;
	player_id.portal2.portal_cooldown = 50;
	charge += 40;
	var portal_2 = player_id.portal2;
	switch (portal_2.portal_direction){
					case 1:
					hsp = 0;
					vsp = apple_speed*-1;
				    break;
				    case 2:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less*-1;
				    break;
				    case 3:
				    hsp = apple_speed;
				    vsp = 0;
				    break;
				    case 4:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less;
				    break;
				    case 5:
					hsp = 0;
					vsp = apple_speed;
				    break;
				    case 6:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less;
				    break;
				    case 7:
				    hsp = apple_speed*-1;
				    vsp = 0;
				    break;
				    case 8:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less*-1;
				    break;
				}
}

if (place_meeting(x, y, player_id.portal2) && player_id.portal2.portal_cooldown == 0){
	x = player_id.portal1.x;
	y = player_id.portal1.y;
	player_id.portal1.portal_cooldown = 50;
	player_id.portal2.portal_cooldown = 50;
	charge += 40;
	var portal_1 = player_id.portal1;
	switch (portal_1.portal_direction){
					case 1:
					hsp = 0;
					vsp = apple_speed;
				    break;
				    case 2:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less;
				    break;
				    case 3:
				    hsp = apple_speed*-1;
				    vsp = 0;
				    break;
				    case 4:
				    hsp = apple_speed_less*-1;
				    vsp = apple_speed_less*-1;
				    break;
				    case 5:
					hsp = 0;
					vsp = apple_speed*-1;
				    break;
				    case 6:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less*-1;
				    break;
				    case 7:
				    hsp = apple_speed;
				    vsp = 0;
				    break;
				    case 8:
				    hsp = apple_speed_less;
				    vsp = apple_speed_less;
				    break;
				}
} */
if (glow_radius == 0){
	glow_alpha = 0;
}
//State 1: Idle

if (state == 1){
	image_index = 0;
	if (hit_cooldown > 0){
		hit_cooldown --;
	}
	if (charge >= 80 && level == 1){
			charges = 1;
			state = 2;
			state_timer = 0;
			level = 2;
			charge = 0;
		}
		if (charge == 60 && level == 2){
			charges = 2;
			state = 3;
			state_timer = 0;
			charge = 61;
		}
		if (charge >= 120 && level == 2){
			charges = 3;
			level = 3;
			state = 4;
			state_timer = 0;
			charge = 0;
		}
		if (charge >= 180 && level == 3){
			charges = 4;
		}
		if (charge >= 300 && level == 3){
			glow_radius = 0;
			state = 7;
			state_timer = 0;
			player_id.move_cooldown[AT_DSPECIAL] = 0;
		}
	if (free == false){
		//vsp = 6;
	if (hsp < 0){
		hsp += .5;
	}
	if (hsp < .25 && hsp > -.25){
		hsp = 0;
	}
	if (hsp > 0){
		hsp -= .5;
	}
	}
	charge ++;
	//hitbox shit
}

if (state < 5){
	with (asset_get("pHitBox")){
    if (place_meeting(x,y,other.id)){
		if (throws_rock != 2 && other.hit_cooldown == 0){
			if (type == 2 && !transcendent){
				//destroyed = true;
			}
			other.desired_hitstop = clamp(hitpause + damage * hitpause_growth * 0.05, 0, 20);
			if (type == 1){
		        if (player_id.hitpause == false) {
		            player_id.old_vsp = player_id.vsp;
		            player_id.old_hsp = player_id.hsp;
		        }
		        player_id.hitpause = true;
		        player_id.has_hit = true;
		        if (player_id.hitstop < other.desired_hitstop) {
		            player_id.hitstop = other.desired_hitstop;
		            player_id.hitstop_full = other.desired_hitstop;
		        }
			}
	        other.hsp = 0;
			other.vsp = 0;
			other.hit_delay = 4 + hitpause + extra_hitpause;
			other.hit_cooldown = hitpause + extra_hitpause + 10;
			other.owner = player;
			other.apple_health -= damage;
			other.kb_scaling = kb_scale;
			other.bkb = kb_value;
			with (other) {kb_angle = get_hitbox_angle(other.id)}
			other.hitpause = true;
			other.hitstop = hitpause + extra_hitpause;
			other.le_hit_effect = hit_effect;
			sound_play(pHitBox.sound_effect);
			with (other){spawn_hit_fx(x, y, le_hit_effect).pause = 7;}
			other.got_hit = true;
			has_hit = true;
//			other.apple_hit = true;
		}
        }
    }
    
//    if (apple_hit == true){
//    	spawn_hit_fx(x, y, le_hit_effect).pause = 8.58;
//    	apple_hit = false;
//    }
    
    kb_speed = ((bkb + 1 * kb_scaling * fancynum * kb_adj)); // calculates knockback speed
    if (kb_speed < 10){
        kb_speed *= 2;
    }
    
    if (hit_delay == 4){
    	vsp = lengthdir_y(kb_speed, kb_angle);
    	hsp = lengthdir_x(kb_speed, kb_angle);
    	//dingodile leftovers
        /*if (kb_angle >= 40 && kb_angle < 140){
            vsp = lengthdir_y(kb_speed , kb_angle);
    		hsp = lengthdir_x(kb_speed , kb_angle);
        }
		if (kb_angle >= 0 && kb_angle < 40 or kb_angle >= 300 && kb_angle <= 360){
		    hsp = (kb_speed*.75);
		    vsp = (-kb_speed*.25);
		}
		if (kb_angle >= 240 && kb_angle < 300){
		    hsp = (kb_speed*0);
		    vsp = (-kb_speed);
		}*/
	}
	if (hit_delay > -10){
		hit_delay--;
	}
}

if (state == 2){
	image_index += .16;
	sprite_index = (sprite_get("gem_apple_grow"));
	if (state_timer == 6){
		sound_play(sound_get("sfx_apple_1"));
		vsp -= 1;
		mask_index = (sprite_get("apple_mask2"));
	}
	if (state_timer >= 24){
	state = 1;
	state_timer = 0;
	sprite_index = (sprite_get("gem_apple2"));
	image_index = 0;
	}
}



//State 2: Dying

if (state == 9){
        instance_destroy();
        exit;
}



//State 3

if (state == 3){
	image_index += .16;
	sprite_index = (sprite_get("gem_apple2_beat"));
	if (state_timer == 6){
		sound_play(sound_get("sfx_apple_2"));
	}
	if (state_timer >= 24){
	state = 1;
	state_timer = 0;
	sprite_index = (sprite_get("gem_apple2"));
	image_index = 0;
	}
	//Put something here if you want
}



//State 4

if (state == 4){
	image_index += .16;
	sprite_index = (sprite_get("gem_apple_grow2"));
	if (state_timer == 6){
		vsp -= 1;
		mask_index = (sprite_get("apple_mask3"));
		sound_play(sound_get("sfx_apple_3"));
	}
	if (state_timer >= 24){
	state = 1;
	state_timer = 0;
	sprite_index = (sprite_get("gem_apple3"));
	image_index = 0;
	}
	//Put something here if you want
}



//State 5

if (state == 5){
	//explosion 1
	if (state_timer == 0){
		create_hitbox( AT_DSPECIAL, 1, x, y).can_hit_self = true;
		sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
	}
	if (state_timer == 5){
		spawn_hit_fx(x, y, player_id.firework_y).depth = depth + 3;
	}
	
	sprite_index = sprite_get(("gem_explosion"));
	image_angle = 0;
	image_index += .24;
	vsp = 0;
	hsp = 0;
	if (state_timer == 20){
        instance_destroy();
        exit;
	}
}



//State 6

if (state == 6){
	if (state_timer == 0){
		if (charges == 1){
		create_hitbox( AT_DSPECIAL, 2, x, y).can_hit_self = true;
		}
		if (charges == 2){
		create_hitbox( AT_DSPECIAL, 5, x, y).can_hit_self = true;
		}
		sound_play(sound_get("sfx_apple_boom"));
	}
	if (state_timer == 5){
		spawn_hit_fx(x - 12, y, player_id.firework_y).depth = depth + 3;
	}
	sprite_index = sprite_get(("gem_explosion2"));
	image_angle = 0;
	image_index += .24;
	vsp = 0;
	hsp = 0;
	if (state_timer == 15){
		spawn_hit_fx(x + 12, y - 16, player_id.firework_r).depth = depth + 3;
	}
	if (state_timer == 20){
        instance_destroy();
        exit;
	}
	//Put something here if you want
}



//State 7

if (state == 7){
	if (state_timer == 0){
		if (charges == 3){
		create_hitbox( AT_DSPECIAL, 3, x, y).can_hit_self = true;
		}
		if (charges == 4){
		create_hitbox( AT_DSPECIAL, 6, x, y).can_hit_self = true;
		}
		sound_play(asset_get("sfx_abyss_explosion_big"));
	}
	if (state_timer == 5){
		spawn_hit_fx(x - 12, y, player_id.firework_y).depth = depth + 3;
	}
	sprite_index = sprite_get(("gem_explosion3"));
	image_angle = 0;
	image_index += .24;
	vsp = 0;
	hsp = 0;
	if (state_timer == 10){
		spawn_hit_fx(x + 12, y - 16, player_id.firework_r).depth = depth + 3;
	}
	if (state_timer == 15){
		spawn_hit_fx(x, y + 16, player_id.firework_b).depth = depth + 3;
	}
	if (state_timer == 20){
        instance_destroy();
        exit;
	}
	//Put something here if you want
}



//State 8
if (state < 4){
	if level == 3{
		glow_timer ++;
		if (charges == 3){
		glow_radius = 30;
		}
		if (charges == 4){
			glow_radius = 40;
		}
		if (glow_timer <= 20){
			if (glow_alpha < .6){
				glow_alpha += .03;
			}
		}
		if (glow_timer >= 30){
			if (glow_alpha > 0){
				glow_alpha -= .03;
			}
		}
		if (glow_timer >= 60){
			glow_timer = 0;
		}
	}
}
/*
if (state == 5 or state == 6 or state == 7){
	var max_radius;
	if (state == 5){
		max_radius = 40;
	}
	if (state == 6){
		max_radius = 60;
	}
	if (state == 7){
		max_radius = 80;
	}
	if (state_timer <= 8){
		if (glow_alpha < .6){
			glow_alpha += .08;
		}
		if (glow_radius != max_radius){
			glow_radius += 10;
		}
	}
	if (state_timer > 10){
		glow_alpha -= .08;
	}
}
*/


//State 9: Attack



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
/*switch(state){
    case 0:
        new_sprite = sprite_get("your_sprite");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("your_sprite2");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("your_sprite3");
        animation_type = 2;
        break;
    case 3:
    case 4: //Since all of these guys are just kinda
    case 5: //in a row, without any "break;" lines to
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8: //switch-case statements, y'all, they're handy
    case 9:
    	new_sprite = sprite_get("your_sprite4")
    	animation_type = 1;
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}*/



//Make time progress
state_timer++;