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
		if(life%2){
			var aft = instance_create(floor(x), floor(y), "obj_article2");
			aft.fx_type = FX.graze_after;
			aft.lifetime = 9;
			aft.image_alpha = .5
			aft.sprite_index = sprite_get("graze_trail")
		}
		if(valid_graze){
			if (life > delay){
				x = round(ease_quartIn(x, tenshi.x, life, lifetime/2 + delay));
				y = round(ease_quartIn(y, tenshi.y-30, life, lifetime/2 + delay));
				if(life < lifetime/3){
					if(seed){
						y += round((y -round(ease_circInOut(y, tenshi.y + 30, life, round(lifetime/2) + delay)))/10);
					} else {
						y += round((y -round(ease_circInOut(y, tenshi.y - 90, life, round(lifetime/2) + delay)))/10);
					}
					x += tenshi.spr_dir*round((x  - ease_circInOut(x, tenshi.x, life, lifetime/2 + delay))/10);
				}
			} else if(life == 0 and blue){
				sprite_index = sprite_get("graze_blue");
			}
			
		} else {
			if(life > delay){
				x += spr_dir*round((x - ease_quartOut(x, tenshi.x, life, lifetime/2 + delay))/10);
				y += round((y-ease_quartOut(y, tenshi.y-30, life, lifetime/2 + delay))/10);
			} else if (life == 0 and blue){
					sprite_index = sprite_get("graze_blue");
			}
		}
		
		life++;
		if(life > lifetime){
			instance_destroy(self);
		} else if(place_meeting(x, y, tenshi) and life > 20){
			tenshi.tenshi_graze = true;
			tenshi.tenshi_graze_outline_timer = 1;
			if(blue){
			tenshi.tenshi_magic+= 20;
			}else{
				tenshi.tenshi_magic+= 10;
			}
			sound_play(sound_get("graze_collect2"));
			instance_destroy(self);
		}

		break;
	case FX.graze_after:
		image_alpha-= .02;
		image_index = floor(life/3);
		life++;
		if(life > lifetime){
			instance_destroy(self);
		}
		break;
		
	case FX.fspecial:
		depth = -20;
		if(tenshi == noone){
			instance_destroy(self);
		} else {
			
			image_alpha = tenshi.tenshi_fsp_charge < 30 ? tenshi.tenshi_fsp_charge/30 : 1;
			anim_frame = anim_frame <= anim_max ? anim_frame + anim_spd : 0.0;
			image_index = floor(anim_frame);
			
			x = tenshi.x + tenshi.hsp;
			y = tenshi.y + tenshi.vsp;
			if(tenshi.attack != AT_FSPECIAL or tenshi.window > 2){
				instance_destroy(self);
			}
		}
		break;
		
	case FX.install:
		y-= 2;
		life++
		sub_alpha = (1-(life/30))/1.5;
		image_alpha = 0;
		image_index = floor(life/6);
		//hsp = tenshi.hsp * (1- life/40);
		if(life >= 30){
			instance_destroy(self);
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
		//print_debug(tenshi.player);
		depth = 8+seed;
		x+= 1+seed;
		if(x > room_width + 200){
			x = -200;
		}
		if(!tenshi.dragon_install){
			//40 frame death buffer
			life++;
			image_alpha = 1-life/40;
			if(life > 40){
				instance_destroy(self);
			}
		}
		break;
	case FX.dstrong_charge:
		x = tenshi.x + spr_dir * (-54);
		y = tenshi.y - 122;
		life++;
		visible = 1;
		image_index = tenshi.charge_level*4 + floor((life%12)/3);
		if(tenshi.state_cat == SC_HITSTUN or tenshi.window == 3){
			instance_destroy(self);
		}
		break;
	case FX.ustrong_charge:
		x = tenshi.x + spr_dir * (-54);
		y = tenshi.y - 122;
		life++;
		visible = 1;
		image_index = tenshi.charge_level*4 + floor((life%12)/3);
		if(tenshi.state_cat == SC_HITSTUN or tenshi.window == 2){
			instance_destroy(self);
		}
		break;
	case FX.dstrong_hitbox:
		life++;
		if(life == 4){
			if(seed == 0){ //little rocks got 0 seed
				if(tenshi.charge_level == seed){
					create_hitbox(AT_DSTRONG, 2, x, y-20);
				}else {
					create_hitbox(AT_DSTRONG, 3, x, y-20);
				}
			} else if (seed == 1){//medium rock
				if(tenshi.charge_level == seed){
					create_hitbox(AT_DSTRONG, 4, x, y-20);
				}else {
					create_hitbox(AT_DSTRONG, 5, x, y-20);
				}
			} else {//large rock
				create_hitbox(AT_DSTRONG, 6, x, y-20);

			}
			if(spr_dir == 1){
				sound_play(asset_get("sfx_kragg_spike"));
			}
		}
		image_index = seed*6 + floor((life%24)/4);
		if(tenshi.charge_level > seed){
			
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
		x = tenshi.x;
		y = tenshi.y;
		life++;
		visible = 1;
		image_index = tenshi.charge_level*4 + floor((life%12)/3);
		if(tenshi.state_cat == SC_HITSTUN or tenshi.window == 2){
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
        spawn_x = x + 38 * spr_dir;
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