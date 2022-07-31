//article1_update - runs every frame the article exists

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

//if (place_meeting(x, y, asset_get("plasma_field_obj"))/* && !(state == 3 || state == 2)*/) {

/*
if (x > room_width or y > room_height + 200){
	sound_play(asset_get("sfx_ell_cooldown"));
	player_id.move_cooldown[AT_DSPECIAL] = 60;
    instance_destroy();
    exit;
}
*/

//print("Article HSP: " + string(hsp));
//print("Article VSP: " + string(vsp));

// State List
//
// 0: Figuring out where the Root goes
// 1: Spawning
// 2: Idle
// 3: Traveling
// 4: Attack Startup (It's quick.)
// 5: Attack
// 6: Despawn
// 7: Save Root Position
// 8: Transition into Moving Root
// 9: die

//Despawning if hits a blastzone
if (y > blastzone_b - 5
|| (state == 0 && state_timer > 19)){
	//print("Root hit bottom blastzone!!!")
	with(player_id){
		if (sprite_index == sprite_get("fspecial")){
			window = 4;
			window_timer = 0;
		}
	}
	sound_play(asset_get("sfx_pillar_crumble"));
	instance_destroy();
	exit;
}
if (player_id.root_grounded_type == 1){
	var typeOfColl = asset_get("par_block")
	can_be_grounded = false; 
} else if (player_id.root_grounded_type == 2){
	var typeOfColl = asset_get("par_jumpthrough")
	can_be_grounded = true; 
}

//print(can_be_grounded);

if (collision_rectangle(x-1, y-4, x+(1), y+20, typeOfColl, 0, 1)){
	//print("TOUCHING GROUND");
	if (free){
		//print("Shouldnt I be grounded?");
		if (state == 0){
			//print("TOUCHED GROUND");
			setState(8);
			sound_play(asset_get("sfx_syl_nspecial_plantgrowth"));
			//sound_play(asset_get("sfx_plant_ready"));
			sound_play(asset_get("sfx_may_root"));
			vsp = 0;
		}
	}
	
}

//print(state)

//State 0: Figuring out where the Root goes
if (state == 0){
	should_instantly_die_because_of_death = false;
	sprite_index = asset_get("empty_sprite");
	if (state_timer < 2){
		xREAL = x;
	}
	//print(xREAL);
	if (!free){
		//print("hi");
		if (player_id.root_grounded_type == 1){
			var typeOfColl = asset_get("par_block")
		} else if (player_id.root_grounded_type == 2){
			var typeOfColl = asset_get("par_jumpthrough")
		}
		if (collision_rectangle(x, y, x+(2*spr_dir), y+10, typeOfColl, 0, 1)){
			//print("TOUCHING GROUND");
			setState(8);
			sound_play(asset_get("sfx_syl_nspecial_plantgrowth"));
			//sound_play(asset_get("sfx_plant_ready"));
			sound_play(asset_get("sfx_may_root"));
			vsp = 10;
		} else if (!collision_rectangle(x-(-1*spr_dir), y, x, y+1000000000000, typeOfColl, 0, 1)){
				//
		}		
	} else if (free){
		if (player_id.root_grounded_type == 1){
			var typeOfColl = asset_get("par_block")
		} else if (player_id.root_grounded_type == 2){
			var typeOfColl = asset_get("par_jumpthrough")
		}
		//print(root_travel_spawn_stop_moving);
		if (collision_rectangle(x, y, x+(2*spr_dir), y+10000, typeOfColl, 0, 1)){
			//spawn_hit_fx(x,y,304);
			//print("ok");
			if (collision_rectangle(x, y, x+(4*spr_dir), y+10000, typeOfColl, 0, 1)){
				//print("HEDUIHUEDEHD")
				//spawn_hit_fx(x,y,304);
			}
			if (root_travel_spawn_stop_moving == false){
				//vsp = 50;
			}
			//x = xREAL + (20*spr_dir);
		} else if (!collision_rectangle(x, y, x+(100*spr_dir), y+10000, typeOfColl, 0, 1)){
			//print("so where am i");
			//print(x)
			//spawn_hit_fx(x,y,304);
			if (root_travel_spawn_stop_moving == false){
				//vsp = 50;
			} else if (root_travel_spawn_stop_moving == true){
				if (player_id.free == true){
					root_travel_air_thing_timer++;
					if (root_travel_air_thing_timer == 1){
						root_travel_air_thing = 1;
					}
				} else if (player_id.free == false){
					root_travel_air_thing_timer++;
					if (root_travel_air_thing_timer == 1){
						root_travel_air_thing = 2;
					}
				}
				
				if (root_travel_air_thing == 1){
					//print("i would love if this wasnt so complicated");
					//x = player_id.x - (80*spr_dir)
					//y = player_id.y
					//vsp = 25;
					//hsp = 0;
				} else if (root_travel_air_thing == 2){
					//x = player_id.x - (20*spr_dir)
					//y = player_id.y
				}
			}
		}
	}
}

//print("Free: " + string(free));

if (state != 0){
	root_travel_air_thing = 0;
	root_travel_air_thing_timer = 0;
}
print(vsp);
//State 1: Spawning
if (state == 1){
	sprite_index = sprite_get("fspecial_root_rise");
	image_index += 0.5;
	if (state_timer == 10){
		setState(2);
	}
}

//State 2: Idle
if (state == 2){
	sprite_index = sprite_get("fspecial_root_idle");
}

//State 3: Traveling
if (state == 3){
	sprite_index = sprite_get("fspecial_root_travel");
	image_index += 0.3333;
	
	var maxHorizSpeed = 8.5; //Adjust this to change the maximum speed value that the root can travel up to.
	
	if (spr_dir == 1){
		if (hsp < maxHorizSpeed){
			hsp += .5
		}
	} else if (spr_dir == -1){
		if (hsp > -maxHorizSpeed){
			hsp -= .5
		}
	}
	
	if(root_grounded_type == 1){//Ground
		if !(collision_line(x+16*spr_dir, y-16, x+16*spr_dir, y+16, asset_get("par_block"), 0, 1)){
			//print("Welp.");
			sound_play(asset_get("sfx_may_root"),false,noone,1,1.4);
			hsp = 0;
			setState(4);
		}
	} else if(root_grounded_type == 2){//Platform
		if !(collision_line(x+16*spr_dir, y-16, x+16*spr_dir, y+16, asset_get("par_jumpthrough"), 0, 1)){
			//print("Welp.");
			hsp = 0;
			sound_play(asset_get("sfx_may_root"),false,noone,0.9,1.4);
			setState(4);
		}
	}
	travel_timer++;
	if (travel_timer == 3){
		sound_play(asset_get("sfx_may_root"),false,noone,0.4,0.95);
		spawn_base_dust( x - (6 * spr_dir), y, "dash", spr_dir);
	}
	if (travel_timer == 7){
		sound_play(asset_get("sfx_syl_dstrong"),false,noone,0.8,0.5);
		travel_timer = 0;
		spawn_base_dust( x - (6 * spr_dir), y, "dash", spr_dir);
	}
} else {
	travel_timer = 0;
}

//State 4: Attack Startup (It's quick.)
if (state == 4){
	//sound_stop(asset_get("sfx_syl_dstrong"));
	hsp = 0;
	sprite_index = sprite_get("fspecial_root_attack");
	image_index = 0;
	if (state_timer == 0){
		sound_play(asset_get("sfx_syl_ustrong"),false,noone,0.8,1.4);
	}
	if (state_timer == 3){
		setState(5);
		sound_play(asset_get("sfx_swipe_heavy2"));
		attack_hitbox = create_hitbox(AT_FSPECIAL, 1, x, y-68);
		spawn_base_dust( x - 22, y, "dash_start", 1);
		spawn_base_dust( x + 22, y, "dash_start", -1);
		image_index = 1;
		//forcing player to window 3 if not already at window 3
		with(player_id){
			if (sprite_index == sprite_get("fspecial")){
				//print("true?");
				if (window < 3){//>
					window = 3;
					window_timer = 0;
				}
			}
		}
		
	}
}

//State 5: Attack
if (state == 5){
	sprite_index = sprite_get("fspecial_root_attack");
	image_index += 0.25;
	if (state_timer == 31){
		//print("Bye bye!");
		with(player_id){
			move_cooldown[AT_FSPECIAL] = 45;
		}
		instance_destroy();
    	exit;
	}
}

//State 6: Despawn
if (state == 6){
	//
	sprite_index = sprite_get("fspecial_root_lower");
	image_index += 0.5;
	if (state_timer > 6){
		player_id.move_cooldown[AT_FSPECIAL] = 45;
		instance_destroy();
    	exit;
	}
}

//State 7: Save Root Position
if (state == 7){
	hsp = 0;
	sprite_index = sprite_get("fspecial_root_rise");
	image_index += 0.25;
	if (state_timer == 18){
		setState(2);
	}
}

//State 8: Transition into Moving Root
if (state == 8){
	if (free){
		print("MARIO");
		y += 10;
	} else {
		print("fuck");
	}
	spr_dir = player_id.spr_dir;
	sprite_index = sprite_get("fspecial_root_lower");
	image_index += 0.4;
	if (state_timer == 6){
		setState(3);
	}
}

//State 9: Die
if (state == 9){
	//yes.
	sprite_index = sprite_get("fspecial_root_lower");
	image_index += 0.25;
	hsp = 0;
	vsp = 0;
	if (image_index > 3.95){
		player_id.move_cooldown[AT_FSPECIAL] = 45;
		instance_destroy();
    	exit;
	}
}

//Make time progress
state_timer++;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;