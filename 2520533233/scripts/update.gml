//update
//enums-------------------------------------------------------------------------
enum FX{
    graze,
    graze_after,
    fspecial,
    install,
    install_bg,
    install_cloud,
    bad_load
}

enum ROCK{
    INIT,
    MOVE,
    DROP,
    IDLE_1,
    IDLE_2,
    RETURN,
    KABOOM,
    THROW
}
//Muno Phone -------------------------------------------------------------------
user_event(14);

if(phone_cheats[cheat_install] == 1){
	if(!dragon_install){
		tenshi_magic = tenshi_magic_max;
	} else{
		
		if(install_time > 300){
			install_time = 300;
		}
		tenshi_magic = tenshi_magic_max + 300;
	}
}
//-----------------------------------Lightweight Mode---------------------------
if(state == PS_SPAWN){
	if(taunt_down and !lightweight){
		sound_play(sound_get("_pho_open1"))
		lightweight = true;
	}
}

//-----------------------------------ROCK---------------------------------------
if(rock_lockout>0){
	rock_lockout--;
} else {
	can_rock = true;
}

if(state == PS_RESPAWN){
	can_rock = true;
	can_move_rock = true;
	rock_lockout = 0;
}
//---------------------------Walljump cancel dair-------------------------------
if(state == PS_WALL_JUMP and attack == AT_DAIR){
	sound_stop(sound_get("drill_loop"));
    sound_stop(sound_get("drill_long"));
}

//--------------------------------RAINBOWS--------------------------------------
#region RAINBOWS
//Because she has so many different rainbow effects we need all these different
//rainbow colors stored for use all over the kit
init_shader();
var cur_time = get_gameplay_time();
rainbow_color = make_colour_hsv(12*(cur_time%30), 225, 225); //default rainbow
rainbow_color2 = make_colour_hsv(12*((cur_time + 15)%30), 225, 225); //default shifed halfway through cycle
rainbow_dark = make_colour_hsv(12*((cur_time/15)%30), 225, 100); //dark rainbow
rainbow_dark2 = make_colour_hsv(12*((cur_time/15 + 15)%30), 225, 100); //dark shifted halfway through cycle

#endregion
//-----------------------------PEACH INSTALL------------------------------------
#region INSTALL
//INSTALL TIME BABY LES GOOOOOO
//Only run if in install
if(dragon_install){
	rainbow_color_slow = make_colour_hsv(12*((cur_time/4)%30), 255, 255); //ui rainbow only runs in DI
	rainbow_color_ULTRADARK = make_colour_hsv(12*((cur_time/4)%30), 225, 50); //UTLRA dark rainbow used for outline
	rainbow_rgb = [color_get_red(rainbow_color_ULTRADARK), color_get_green(rainbow_color_ULTRADARK), color_get_blue(rainbow_color_ULTRADARK)];
	//increase install time
	install_time++;
	//update install trail vfx, always want to do this so the trail effects
	//can fade independent of if armor is active or not
	for(var i = 0; i < install_trail_size; i++){
		install_trail[i].life--;;
	}
	//set up install armor for walking and attacks
	if(state== PS_WALK or state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND){
			if(state == PS_WALK){
				soft_armor = 2*install_armor
			} else {
				soft_armor = install_armor;
			}
		//create a new trail effect every 10 frames if there isn't a trail effect
		//already drawn to the screen for that slot in the buffer
		var current_trail = install_trail[floor(cur_time/10)%8];
		if(current_trail.life <= 0){
			current_trail.x = x;
			current_trail.y = y;
			current_trail.sprite_index = sprite_index;
			current_trail.image_index = image_index;
			current_trail.color = rainbow_dark;
			current_trail.spr_dir = spr_dir;
			
			//if we walk we make the trail last longer so it looks cooler
			if(state == PS_WALK){
				current_trail.life = 40;
				
			//shorter trail life for attacks so to not clutter the screen
			//shorter life also means more transparent
			} else {
				current_trail.life = 20;
			}
		}
	}
	
	//create an install particle every 8 frames, these the glowy little bits
	if(install_time%8 = 0){
		var temp_part = instance_create(floor(x + random_func(0, 60, true) - 40), floor(y - 10 - random_func(0, 32, true)), "obj_article2");
		temp_part.fx_type = FX.install;
		temp_part.sprite_index = sprite_get("install_part");
		temp_part.depth = -20;
		temp_part.tenshi = self;
		temp_part.seed = random_func(0, 4, true) > 2 ? true : false;
	}
	
	//obviously we need to mute stage music so we can blast the install theme
	suppress_stage_music(0.0, 0.05);
	
	//and we end the install if the time goes on past the limit and the player
	//is standing on the ground
	if(install_time > tenshi_magic and !free){
		end_install();
		set_attack(AT_NSPECIAL_2);
	}
	
	//if another tenshi tells this one to start their music up
	//this is basically a control value to make sure music is always playing when
	//an install is up when multiple of this character are in the same game
	if(play_theme){
		sound_play(sound_get("install" + string(install_theme)), true, 0, 1, 1);
		play_theme = !play_theme;
	}

}

#endregion
//---------------------------------GRAZE----------------------------------------
#region GRAZE_STUFF
//Create the grazebox if it doesn't exist.
if (tenshi_grazebox == noone){
    tenshi_grazebox = instance_create(x, y, "obj_article1");
    tenshi_grazebox.tenshi = self;
}

//Make tenshi flash white when grazing
if(tenshi_graze_outline_timer > 0){
    tenshi_graze = true;
    white_flash_timer_set(6);
    tenshi_graze_outline_timer--;
} else {
    tenshi_graze = false;
}
if(!dragon_install and tenshi_magic > tenshi_magic_max){
	if(can_vo == 0){
		sound_play(sound_get("magical_max"));
		can_vo = 60;
	}
	
	tenshi_magic = tenshi_magic_max;
}
if(can_vo > 0){
	can_vo--;
}

if(tenshi_magic > old_tenshi_magic and can_vo == 0){
	sound_play(sound_get("graze_vo"));
	can_vo = 60;
}

old_tenshi_magic = tenshi_magic;
#endregion
//---------------------------ROCK PLATFORM--------------------------------------
#region ROCK_PLAT
//Dan why do article plats not let me do things
//this is such a hacky solution why can't article plats use hit fx
if(rock_proj != noone and rock_proj.kaboom){
	

	sound_stop(sound_get("drop"));
	if(rock_proj.warm){
		spawn_hit_fx(rock_proj.x, rock_proj.y, 143);
		spawn_hit_fx(rock_proj.x, rock_proj.y, 204);
		sound_play(sound_get("a_not_as_large_kaboom"), false, noone, .6);
		shake_camera(8, 8);
		sound_play(asset_get("sfx_abyss_explosion_big"), false, noone, .7);
		if(instance_exists(rock_proj.hitbox)){
			rock_proj.hitbox.length = 0;
		}
		var temp = create_hitbox(AT_NSPECIAL, 2, rock_proj.x, rock_proj.y);
		if(rock_proj.owner != noone){
			print_debug(rock_proj.owner)
			temp.player = rock_proj.owner;
			temp.can_hit_self = false;
		} else {
			temp.can_hit_self = true;
		}
	} else {
		spawn_hit_fx(rock_proj.x, rock_proj.y, 192);
	}
	instance_destroy(rock_proj);
	rock_proj = noone;
}
if(tenshi_uspecial_rock != noone and tenshi_uspecial_rock.rock_state = ROCK.KABOOM and tenshi_uspecial_rock.hold_timer == 1){
	spawn_hit_fx(tenshi_uspecial_rock.x, tenshi_uspecial_rock.y + 30, 192);
	rock_lockout = 60;
}

if(attack != AT_NSPECIAL or (window != 3 or window != 2)){
	air_accel = base_air_accel;
}
#endregion
//-------------------RESET USPECIAL IF GROUNDED---------------------------------
#region USPEC_RESET
if(!free){
	if(!place_meeting(x, y+4, obj_article_platform) and state != PS_ATTACK_GROUND){
		can_move_rock = true;
	}
}
if(!free and move_cooldown[AT_FSPECIAL] > 0){
    move_cooldown[AT_FSPECIAL] = 0;
}
#endregion
//------------------------EASTEREGG INPUTS--------------------------------------
#region INPUTS

if(di_input == 0){
	start_dir[0] = spr_dir;
}
if(start_dir[0] == 1){
	switch di_input{
		case 0:
			di_input = 1;
			di_input_buffer = 10;
			break;
		case 1:
			if(down_down and !left_down){
				di_input = 2;
				di_input_buffer = 10;
			}
			break;
		case 2:
			if(!down_down and left_down){
				di_input = 3;
				di_input_buffer = 10;
			}
			break;
		case 3:
			if(down_down and !left_down){
				di_input = 4;
				di_input_buffer = 10;
			}
			break;
		case 4:
			if(!down_down and left_down){
				di_input = 5;
				di_input_buffer = 10;
			}
			break;
	}
} else {
	switch di_input{
		case 0:
			di_input = 1;
			di_input_buffer = 10;
			break;
		case 1:
			if(down_down and !right_down){
				di_input = 2;
				di_input_buffer = 10;
			}
			break;
		case 2:
			if(!down_down and right_down){
				di_input = 3;
				di_input_buffer = 10;
			}
			break;
		case 3:
			if(down_down and !right_down){
				di_input = 4;
				di_input_buffer = 10;
			}
			break;
		case 4:
			if(!down_down and right_down){
				di_input = 5;
				di_input_buffer = 10;
			}
			break;
	}
}

di_input_buffer = di_input_buffer > 0 ? di_input_buffer-1: 0;
if(di_input_buffer == 0){
	di_input = 0;
}


#endregion

#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}


//------------------------------------------------------------------------------
#define end_install()
{
    //this passes on ownership of install assets to the tenshi with the most
    //time left in dragon install so we don't bake potatoes
    var other_DI = false;
    var other_tenko = noone;
    var other_tenko_di_time = 9999999999999;
    //look for the tenshi with the most time left in install
	with(oPlayer){
	    if("dragon_install" in self){
	        if(dragon_install and other != self){
	            other_DI = true;
	            if(other_tenko_di_time > install_time){
	                other_tenko_di_time = install_time;
	                other_tenko = self;
	            }
	        }
	    }
	}
	//check if we found another tenshi that is using install, it'll be the most time
	//left in install if we found one
	if(other_tenko != noone and other_DI){
		//pass theme
	    if(other_tenko_di_time > install_time){
	        other_tenko.play_theme = true;
	    }
	    //pass ownership of install assets if we own them
	    with(obj_article2){
	        if ("tenshi" in self){
	            if(tenshi == other and fx_type == FX.install_cloud or fx_type == FX.install_bg){
	                tenshi = other_tenko;
	            }
	        }
	    }
    }
    //reset dragon install values
    dragon_install = false;
    tenshi_magic = 0;
	sound_stop(sound_get("install" + string(install_theme)));
    initial_dash_speed = base_initial_dash_speed;
    dash_speed = base_dash_speed;
    moonwalk_accel = base_moonwalk_accel;
    max_djumps = base_max_djumps;
    fast_fall = base_fast_fall;
    air_max_speed = base_air_max_speed;
	max_jump_hsp = base_max_jump_hsp;
    wave_land_adj = base_wave_land_adj; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
	wave_friction = base_wave_friction;
	end_dragon_install = true;
	soft_armor = 0;
}