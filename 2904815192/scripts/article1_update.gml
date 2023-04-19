//article1_update

//Used for Mr. Monopoly Properties

spr_dir = 1;

hud_color = get_player_hud_color(player_id.player);

Pocketable = false;

/*STATE LIST

- 0: Deed Card, Spawned in Air
- 1: Idle
- 2: Attack Startup
- 3: Attack Active
- 4: Attack Endlag
- 5: Die

*/

//more states can go here

//State 0: Deed Card
if (state == 0){
	sprite_index = sprite_get("property_deed"); 
	//vsp = 12;
	
	//Hitting the Ground
	if (!free){
		setState(1);
		sound_play(player_id.sfx_monopoly_pc_property_buy);
		spawn_hit_fx( x, y - 32, 304 );
		vsp = 0;
	}
}

// Moving away from other Properties, regardless of which Mr. Monopoly owns it
incWidthDetection = (player_id.propertyWidthRune * 46);
if (state != 0){
	with (asset_get("obj_article1")){
		if (player_id.player == other.player_id.player){
			if (collision_rectangle(x-(62+other.incWidthDetection), y-6, x+(62+other.incWidthDetection), y+60, other, 0, 1)){
				if (x != other.x){
					if (x < other.x){
						x -= 1;
					}
					if (x > other.x){
						x += 1;
					}
				} else {
					if (propertyNumber < other.propertyNumber){
						if (x < other.x){//>
							x -= 1;
						}
						if (x >= other.x){
							x += 1;
						}
					}
				}
			}
		}
		if (player_id.player != other.player_id.player){
			if (mask_index == other.mask_index){
				//print("hi");
				if (collision_rectangle(x-62, y-6, x+(62), y+60, other, 0, 1)){
					if (x != other.x){
						if (x < other.x){
							x -= 1;
							other.x += 1;
						}
						if (x > other.x){
							x += 1;
							other.x -= 1;
						}
					} else {
						if (propertyNumber < other.propertyNumber){
							if (x < other.x){//>
								x -= 1;
							}
							if (x >= other.x){
								x += 1;
							}
						} else {
							if (propertyNumber == other.propertyNumber){
								if (player_id < other.player_id){//>
									x -= 1;
									other.x += 1;
								}
								if (player_id >= other.player_id){
									x += 1;
									other.x -= 1;
								}
							}
						}
					}
				}
			}
		}
	}
}

//Fspecial Interaction
if (state != 0){
	with (asset_get("pHitBox")){
		var MaxAreaVar = 2;
		if ((place_meeting(x,y,other.id) && effect == 69420 && attack == AT_FSPECIAL && player_id == other.player_id)
		|| ((collision_rectangle(x - 30, y, x + 30,  y + 26, other.id, true, true)) && effect == 69420 && attack == AT_FSPECIAL && player_id == other.player_id)){
			if (other.numberOfHouses != 5 && other.player_id.totalPropertiesExist == other.player_id.maxPropertiesAllowed){
				spawn_hit_fx(x, y, player_id.money_hit_fx_sml);
				destroyed = true;
				other.numberOfHouses++;
				sound_play(player_id.sfx_monopoly_pc_property_improve);
			} else if (other.numberOfHouses != 5 && other.player_id.totalPropertiesExist != other.player_id.maxPropertiesAllowed){
				spawn_hit_fx(x, y, player_id.money_hit_fx_sml);
				destroyed = true;
				other.player_id.currCash += 40;
				sound_play(asset_get("mfx_star"));
			}
		}
		/*
		if (collision_rectangle(x - 100, y, x + 100,  y + 100, other.id, true, true) && effect == 69420 && attack == AT_FSPECIAL && player_id == other.player_id){
			print("mario");
		}
		*/
	}
}

//if (state != 0){
	if (free){
		vsp = vsp + 0.45;
	}
//}

if (state == 0){
	hsp *= 0.95;
} else {
	hsp *= 0.4;
}
if (vsp > 15){
	vsp = 15;
}

if (player_id.propertyWidthRune){
	offsetBoostRune = 32;
} else {
	offsetBoostRune = 0;
}

// decay stuff
if (numberOfHouses == 0){
	decayTimer = 600;
} else {
	if (decayTimer != 0){
		decayTimer--;
		if (decayTimer == 60
		|| decayTimer == 120
		|| decayTimer == 180){
			decayWhiteVisual = 20;
			sound_play(asset_get("mfx_timertick_holy"), false, noone, 1, 1.35);
		}
	} else {
		numberOfHouses -= 1;
		sound_play(asset_get("sfx_shop_close"));
		spawn_hit_fx( x, y - 32, player_id.money_hit_fx_sml );
		decayTimer = 240;
		player_id.currCash += player_id.fspecialCashRequired / 2;
	}
}

if (decayWhiteVisual != 0){
	decayWhiteVisual -= 1;
}

//State 1: Idle
if (state == 1){
	sprite_index = spr_idle; 
	//Interaction with players
	if (attackCooldown == 0){
		with (asset_get("oPlayer")){//
			//if (place_meeting(x, y, other)){
			if (player != other.player_id.player){
				if ((collision_rectangle(x-(72+other.offsetBoostRune), y-6, x+(72+other.offsetBoostRune), y+60000000000000, other, 0, 1)) && other.attackCooldown == 0 && other.player_id.propertyMagnetRune){
					if !(state == PS_HITSTUN
							|| state == PS_HITSTUN_LAND
							|| state == PS_TUMBLE
							|| state == PS_PARRY_START){
						vsp += 0.7;
						if (x > other.x){
							hsp -= 0.2*(free+2);
						}
						if (x < other.x){//
							hsp += 0.2*(free+2);
						}
						if (x == other.x){
							hsp = 0;
						}
						print("mario")
					} else {
						print("luigi");
					}
				}
				if (collision_rectangle(x-(36+other.offsetBoostRune), y-6, x+(36+other.offsetBoostRune), y+60, other, 0, 1)){
					if (player != other.player_id.player){//im too lazy to remove this part
						if (other.player_id.propertyAutoAttackRune == true){//rune
							other.opponentIsTouching = true;
						} else if (other.player_id.propertyAutoAttackRune == false){//not rune
							if ((state == PS_HITSTUN
							|| state == PS_HITSTUN_LAND
							|| state == PS_TUMBLE
							|| state == PS_PARRY_START)
							||
							(hsp > -1.5 && hsp < 1.5)){//>
								other.opponentIsTouching = true;
							}
						}
					}
				}
				
			} else {
				//
			}
		}
	}
	//Transition into Attack Startup
	if (opponentIsTouching == true){
		setState(2);
		opponentIsTouching = false;
	}
	//Instantly Die
	if (shouldDieInstantly == true){
		shouldDieInstantly = false;
		setState(5);
	}
}

//State 2: Attack Startup
if (state == 2){
	sprite_index = spr_attack;
	image_index = 0;
	
	if (state_timer == 3){
		
		sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.9, .9);
		attackCooldown = 120;
		
		var YSpawnOffset = -40
		if (numberOfHouses == 0){
			propertyHitbox = create_hitbox(AT_DSPECIAL, 1, x, y - 42);
		} else if (numberOfHouses == 1){
			propertyHitbox = create_hitbox(AT_DSPECIAL, 2, x, y - 42);
		} else if (numberOfHouses == 2){
			propertyHitbox = create_hitbox(AT_DSPECIAL, 3, x, y - 42);
		} else if (numberOfHouses == 3){
			propertyHitbox = create_hitbox(AT_DSPECIAL, 4, x, y - 42);
		} else if (numberOfHouses == 4){
			propertyHitbox = create_hitbox(AT_DSPECIAL, 5, x, y - 42);
		} else if (numberOfHouses == 5){ //Hotel
			propertyHitbox = create_hitbox(AT_DSPECIAL, 6, x, y - 42);
		}
		propertyHitbox.propertyNumber = propertyNumber;
		setState(3);
	}
}

//State 3: Attack Active
if (state == 3){
	sprite_index = spr_attack;
	image_index = 1;
	if (state_timer == 0){
		
	}
	
	if (state_timer == 3){
		setState(4);
	}
}


//State 4: Attack Endlag
if (state == 4){
	sprite_index = spr_attack;
	image_index += .25
	
	
	if (state_timer == 18){
		setState(1);
	}
}

//State 5: Die
if (state == 5){
	if(propertyNumber == 1){
		player_id.property1 = noone;
	} else if(propertyNumber == 2){
		player_id.property2 = noone;
	} else if(propertyNumber == 3){
		player_id.property3 = noone;
	}
	with(player_id){
		currCash += 25 + (other.numberOfHouses*20);
	}
	spawn_hit_fx( x, y - 32, player_id.money_hit_fx_sml );
	instance_destroy();
	exit;
}

//attack cooldown count
if (state == 1){
	if (attackCooldown != 0){
		attackCooldown--;
	}
}

//blastzone stuff
if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t){
		spawn_hit_fx( x, y - 32, player_id.money_hit_fx_sml );
		player_id.currCash += 100 + (numberOfHouses*40);
		instance_destroy();
		exit;
	}

//Make time progress
if !hitstop{
    state_timer++;
}

exist_timer++;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;

//--------------------------------------------

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