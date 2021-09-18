//update
enum FX{
    graze,
    graze_after,
    fspecial,
    install,
    install_bg,
    install_cloud,
    dstrong_charge,
    ustrong_charge,
    dstrong_hitbox,
    iku,
    fstrong_charge,
    bad_load
}


switch(fx_type){
	case FX.graze:
		if(life == 1){
			trail_pos[0] = {x:x, y:y, life:0}
			for(var i = 0; i < 4; i++){
				trail_pos[i] = {x:x, y:y, life:0}  
			}
		}
		if(life > 1){
			for(var i = 0; i < 4; i++){
				trail_pos[i].life--;  
			}
			var pos = life/2%4;
			if(trail_pos[pos].life <= 0){
				trail_pos[pos].x = x;
				trail_pos[pos].y = y;
				trail_pos[pos].life = 6;
			}
			
		}
		if(valid_graze){
			if (life > delay){
				x = round(ease_quartIn(x, player_id.x, life, lifetime/2 + delay));
				y = round(ease_quartIn(y, player_id.y-30, life, lifetime/2 + delay));
				if(life < lifetime/3){
					if(seed){
						y += round((y -round(ease_circInOut(y, player_id.y + 30, life, round(lifetime/2) + delay)))/10);
					} else {
						y += round((y -round(ease_circInOut(y, player_id.y - 90, life, round(lifetime/2) + delay)))/10);
					}
					x += player_id.spr_dir*round((x  - ease_circInOut(x, player_id.x, life, lifetime/2 + delay))/10);
				}
			} else if(life == 0 and blue){
				sprite_index = sprite_get("graze_blue");
			}
			
		} else {
			if(life > delay){
				x += spr_dir*round((x - ease_quartOut(x, player_id.x, life, lifetime/2 + delay))/10);
				y += round((y-ease_quartOut(y, player_id.y-30, life, lifetime/2 + delay))/10);
			} else if (life == 0 and blue){
					sprite_index = sprite_get("graze_blue");
			}
		}
		
		life++;
		if(life > lifetime){
			instance_destroy(self);
		} else if(place_meeting(x, y, player_id) and life > 20){
			player_id.tenshi_graze = true;
			player_id.tenshi_graze_outline_timer = 1;
			if(blue){
			player_id.tenshi_magic+= 24;
				if(super_blue){
					player_id.tenshi_magic+= 48;
				}
			}else{
				player_id.tenshi_magic+= 12;
			}
			sound_play(sound_get("graze_collect2"));
			instance_destroy(self);
		}

		break;
	case FX.fspecial:
		depth = -20;
		if(tenshi == noone){
			instance_destroy(self);
		} else {
			
			image_alpha = player_id.tenshi_fsp_charge < 30 ? player_id.tenshi_fsp_charge/30 : 1;
			anim_frame = anim_frame <= anim_max ? anim_frame + anim_spd : 0.0;
			image_index = floor(anim_frame);
			
			x = player_id.x + player_id.hsp;
			y = player_id.y + player_id.vsp;
			if(player_id.attack != AT_FSPECIAL or player_id.window > 2 or player_id.state == PS_PRATFALL){
				instance_destroy(self);
			}
		}
		break;
	case FX.install_bg:
		depth = 10;
		if(tenshi.dragon_install or (tenshi.attack == AT_NSPECIAL_2 and tenshi.window < 6 and tenshi.state_cat != SC_HITSTUN)){
			life++;
			image_alpha = life < 15? life/30 : .5;
		} else {
			image_alpha -= .01;
			if(image_alpha == .01){
				instance_destroy(self);
			}
		}
		
		break;
	case FX.install_cloud:
		//print_debug(player_id.player);
		life++;
		depth = 8+seed;
		if(!tenshi.dragon_install){
			if(life > 41){
				life = 0;
			}
			//40 frame death buffer
			life++;
			image_alpha = 1-life/40;
			if(life > 40){
				instance_destroy(self);
			}
		}
		break;
	case FX.dstrong_charge:
		x = player_id.x + spr_dir * (-54);
		y = player_id.y - 122;
		life++;
		visible = 1;
		image_index = player_id.charge_level*4 + floor((life%12)/3);
		if(player_id.state_cat == SC_HITSTUN or player_id.window == 3){
			instance_destroy(self);
		}
		break;
	case FX.ustrong_charge:
		x = player_id.x + spr_dir * (-54);
		y = player_id.y - 122;
		life++;
		visible = 1;
		image_index = player_id.charge_level*4 + floor((life%12)/3);
		if(player_id.state_cat == SC_HITSTUN or player_id.window == 2){
			instance_destroy(self);
		}
		break;
	case FX.dstrong_hitbox:
		if(player_id.state_cat != SC_HITSTUN){
			life++;
			if(life == 1){
				xoffset = player_id.x - x;
				yoffset = player_id.y - y;
			}
			if(seed == 0){
				y = player_id.y;
			}
			if(collision_point(x, y, asset_get("par_jumpthrough"), false, true)){
				x = player_id.x - xoffset;
	
			}
			if(life == 4){
				if(seed == 0){ //little rocks got 0 seed
					if(player_id.charge_level == seed){
						dstrong_hbox = create_hitbox(AT_DSTRONG, 2, x, y-20);
					}else {
						dstrong_hbox = create_hitbox(AT_DSTRONG, 3, x, y-20);
					}
				} else if (seed == 1){//medium rock
					if(player_id.charge_level == seed){
						dstrong_hbox = create_hitbox(AT_DSTRONG, 4, x, y-20);
					}else {
						dstrong_hbox = create_hitbox(AT_DSTRONG, 5, x, y-20);
					}
				} else {//large rock
					dstrong_hbox = create_hitbox(AT_DSTRONG, 6, x, y-20);
	
				}
				if(spr_dir == 1){
					sound_play(asset_get("sfx_kragg_spike"));
				}
			}
			image_index = seed*6 + floor((life%24)/4);
			if(player_id.charge_level > seed){
				
				if(life==5){
					check_spawn_rock();
				} else if (life == 6){
					check_spawn_rock2();
				}else if (life == 7){
					check_spawn_rock3();
				}else if (life == 8){
					spawn_rock();
				}
			}
			if(life > 23){
				instance_destroy(self);
			}
		} else {
			if(instance_exists(dstrong_hbox)){
				dstrong_hbox.destroyed = true;
			}
			instance_destroy(self);
		}
		break;
	case FX.iku:
		life++;
		if(life < 9){
			image_index = round(life/3);
		} else if (life < 45){
			image_index = 3+round((life-9)/6);
		} else if (life < 63){
			image_index = 9 + round((life-45)/3);
		} else if (life < 87){
			image_index = 15 + round((life-63)/6);
		} else if (life < 99){
			image_index = 19 + round((life-87)/3);
		} else {
			instance_destroy(self);
		}
		break;
	case FX.fstrong_charge:
		x = player_id.x;
		y = player_id.y;
		life++;
		visible = 1;
		image_index = player_id.charge_level*4 + floor((life%12)/3);
		if(player_id.state_cat == SC_HITSTUN or player_id.window == 2){
			instance_destroy(self);
		}
		break;
	default:
		instance_destroy(self); //kill self if not tagged
		break;
}


#define check_spawn_rock()
{
		spawn_y = y;
        spawn_x = x + 45 * spr_dir;
        if(seed == 1){
        	spawn_x += 10*spr_dir;
        }
        can_spawn = true;
        can_spawn_side = false;
	    while ((!(position_meeting(spawn_x, spawn_y, asset_get("par_block")) || position_meeting(spawn_x, spawn_y, asset_get("par_jumpthrough")))) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_block")) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_jumpthrough")))
        {
            spawn_y += 1;
            if (spawn_y > room_height)
            {
                break;
            }
        }
        if (!collision_point(spawn_x, spawn_y + 2, asset_get("par_block"), 0, 0) && !position_meeting(spawn_x, (spawn_y), asset_get("par_jumpthrough")))
                can_spawn_side = true;

        
}

#define check_spawn_rock2()
{
	    if (can_spawn_side) {
            while (!position_meeting(spawn_x, spawn_y, asset_get("par_block")))
            {
                spawn_x -= spr_dir*4;
                if (spawn_x < 0 || spawn_x > room_width)
                {
                    can_spawn = false;
                    break;
                }
            }
	    }
}

#define check_spawn_rock3()
{
			if (can_spawn_side) {
	            while ((!(position_meeting(spawn_x, spawn_y, asset_get("par_block")) || position_meeting(spawn_x, spawn_y, asset_get("par_jumpthrough")))) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_block")) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_jumpthrough")))
            {
                spawn_y -= 16;
                if (spawn_y < 0)
                {
                    break;
                }
            }
        }
}

#define spawn_rock()
{
        if (can_spawn) {
           
            if (can_spawn_side) {
                spawn_y += 40*seed + 30;
                spawn_x += 2*spr_dir;
			    var h = instance_create(round(spawn_x), round(spawn_y), "obj_article2");
    			h.fx_type = FX.dstrong_hitbox;
    			h.sprite_index = sprite_get("dstrong_rock");
    			h.spr_dir = spr_dir;
    			h.seed = 0;
    			h.tenshi = tenshi;
    			h.depth = depth-1;
    			h.seed = seed+1;
    			h.image_angle = -90 * spr_dir;
            }
            else {
                var h = instance_create(round(spawn_x), round(spawn_y), "obj_article2");
    			h.fx_type = FX.dstrong_hitbox;
    			h.sprite_index = sprite_get("dstrong_rock");
    			h.spr_dir = spr_dir;
    			h.seed = 0;
    			h.tenshi = tenshi;
    			h.depth = depth-1;
    			h.seed = seed+1;
            }
        }
}