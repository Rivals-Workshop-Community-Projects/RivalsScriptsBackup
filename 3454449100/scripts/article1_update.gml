//article1_update

//Used for Koopa Troopa's Neutral Special

Pocketable = false;

/*STATE LIST

- 0: Idle
- 1: Moving
- 2: Impact
- 3: Spin

*/

playerBounceRectX1Coord = x - 22 + hsp;
playerBounceRectX2Coord = x + 20 + hsp;
playerBounceRectY1Coord = y - 14 + vsp;
playerBounceRectY2Coord = y - 42 + vsp;

//more states can go here

// if should die, then die
if (shouldBeDestroyed || outsideOfBlastzones){
	with (player_id){
		currKoopaShell = noone;
	}
	
	if (!playerGrabbedShell){
		spawn_hit_fx(x, y - 20, 144);
		sound_play(player_id.sfx_sm3dw_pop, false, noone, 0.75, 1.1)
	}

	if (!ownedByOriginalKoopaAndReboundedOffOfEnemy){
		with (player_id){
			move_cooldown[AT_NSPECIAL] += 90;
		}
	}
	
	instance_destroy();
	exit;
}


// flag for if shell belongs to koopa or not
if (whoHitShell == player_id.player || teamOfOriginalKoopa == teamOfPlayerWhoHitShell){
	shellOwnedByOrigKoopa = true;
} else {
	shellOwnedByOrigKoopa = false;
}

// parry interaction
if (shellWasParried){
	if (shellOwnedByOrigKoopa == true){
		// for if koopa's own shell got parried
		whoHitShell = whoParriedShell;
		
		wasShellParriedAtAll = true;
	} else if (shellOwnedByOrigKoopa == false){
		// for if koopa parries his own reflected shell
		whoHitShell = whoParriedShell;
		
		wasShellParriedAtAll = false;
	}
	
	shellWasParried = false;
	
	additionalHitHitpause = 10;
	spr_dir *= -1;
	storedHSP = (baseReboundSpeed + timesParried*2)* spr_dir * 1.35;
	storedVSP = 0;
	
	storedHSP = clamp(storedHSP, -25, 25);
	
	// so stuff doesnt get messy
	initialThrownDirection = "normal";
	
	setState(2);
}

// print(hud_color);
// print(shellOwnedByOrigKoopa);
// print(timesParried);

// regrab, also hitting the shell (both ways)
if (state == 0 || state == 1 || state == 3){

	//
	if (shellWasHitByAttack){
		setState(2);
	}


	// checks if our article is touching a hitbox - important!
	if (place_meeting(x, y, asset_get("pHitBox"))) {
	
		// now, we do a with statement to go inside the hitbox object.
		with (asset_get("pHitBox")){
		
			// check if the hitbox is now touching our article.
			if (place_meeting(x, y, other) && ((other.whoHitShell == player && other.shellHitLockout == 0) || (other.whoHitShell != player))){
			
			
				/*
				&& ((other.whoHitShell != player) || (other.whoHitShell == player && other.shellHitLockout == 0))
				*/
				// this check is for if we're touching the hitboxes of the ORIGINAL player that spawned the shell!
				if (player_id == other.player_id){
					if (type == 1){// yeah
						// 
						// print(other.shellOwnedByOrigKoopa);
						other.teamOfPlayerWhoHitShell = get_player_team( player_id.player );
						if (attack == AT_NSPECIAL && other.shellOwnedByOrigKoopa && other.wasShellParriedAtAll == false){
							// regrab hitbox
							with (other){
								with (player_id){
									grabbedShellFromNSpec = true;
								}
							}
						} else if (attack == AT_NSPECIAL && other.shellOwnedByOrigKoopa == false && other.wasShellParriedAtAll == false){
							// regrab hitbox but as a failsafe
							with (other){
								if (state == 0 || state == 2 || state == 3){
									
									with (player_id){
										grabbedShellFromNSpec = true;
									}
									
								}
							}
							
						} else if (attack == AT_FSPECIAL && type == 1){						
							// im so cooked!
							other.spr_dir = player_id.spr_dir;
							
							other.spr_dir *= 1;
							
							// my code is so unreadable LOL
							other.hsp = 0;
							other.vsp = 0;						
							other.storedHSP = (player_id.hsp * other.spr_dir) * 1.35 * spr_dir;
							// other.storedVSP = -1.5;
							other.storedVSP = -2 - ((player_id.fspecTimeCharging / player_id.fspecMaxChargeTimeAllowed) * 3.5);
							other.state = 2;
							other.state_timer = 0;
							other.shellHitLockout = other.shellHitlockoutAmt;
							
							other.hitByOrigOwner = false;
							other.whoHitShell = player;
							
							other.additionalHitHitpause = floor(hitpause);
							
							other.initialThrownDirection = "normal";
							
							sound_play(sound_effect);
							spawn_hit_fx(floor(other.x + hit_effect_x),floor(other.y + hit_effect_y),hit_effect);
							
							with(player_id){
								has_hit = true;
								old_hsp = hsp;
								old_vsp = vsp;
								hitpause = true;
								hitstop = other.hitpause;
								
								window = 7;
								window_timer = 0;
							}
						} else if (attack == AT_DSPECIAL){
							// im so cooked!
							other.spr_dir = player_id.spr_dir;
							
							other.spr_dir *= 1;
							
							// depends on if shell is grounded or not
							if (other.free){
								// if struck on air
								other.hsp = 0;
								other.vsp = 15;						
								other.storedHSP = (2 * other.spr_dir) * 0.723 * spr_dir;
								other.storedVSP = 18;
								other.state = 1;
								other.state_timer = 0;
								other.shellHitLockout = other.shellHitlockoutAmt;
							} else {
								// if struck on ground
								other.hsp = 10 * spr_dir;
								other.vsp = -2;
								other.state = 1;
								other.state_timer = 0;
								other.shellHitLockout = other.shellHitlockoutAmt;
							}
							
							other.hitByOrigOwner = false;
							other.whoHitShell = player;
							
							other.timesParried = 0;
							
							other.additionalHitHitpause = floor(hitpause);
							
							other.initialThrownDirection = "normal";
							
							sound_play(sound_effect);
							spawn_hit_fx(floor(other.x + hit_effect_x),floor(other.y + hit_effect_y),hit_effect);
							
							with(player_id){
								has_hit = true;
								old_hsp = hsp;
								old_vsp = vsp;
								hitpause = true;
								hitstop = other.hitpause;
								
								window = 4;
								window_timer = 0;
								
								djumps = 0;
							}
						} else {	// all other kinds of attacks
							// print(other.timesParried);
							if (other.state != 3){
								if (other.wasShellParriedAtAll == false && ( (other.whoHitShell != player) || (other.whoHitShell == player && other.shellHitLockout == 0) )){
									// print(other.shellWasParried)
							
									// im so cooked!
									other.spr_dir = player_id.spr_dir;
									
									// print("When the hell am i calling this?");
									
									//other.spr_dir *= 1;
									
									if (player_id.x > other.x){
										other.spr_dir = -1;
									} else if (player_id.x < other.x){//>
										other.spr_dir = 1;
									} else {
										other.spr_dir = spr_dir;
									}
									
									//if (other.hitByOrigOwner == false){
										// my code is so unreadable LOL
										//other.hsp = 0.5 * spr_dir;
										//other.vsp = -10;						
										//other.state = 3;
										//other.state_timer = 0;
										//other.shellHitLockout = other.shellHitlockoutAmt;
										//other.y -= 4;		
									//} else {
										// my code is so unreadable LOL
										other.hsp = 0;
										other.vsp = 0;		
										other.storedHSP = other.baseReboundSpeed * other.spr_dir;
										other.storedVSP = -1.5;								
										other.state = 2;
										other.state_timer = 0;
										other.shellHitLockout = other.shellHitlockoutAmt;
										other.y -= 4;	
									//}
									
									if (other.player_id.player != player){
										// print("not og player");
										other.hitByOrigOwner = false;
									} else {
										// print("oh")
										other.hitByOrigOwner = true;
									}
									
									other.whoHitShell = player;
									
									other.additionalHitHitpause = floor(hitpause + 2);
									
									other.initialThrownDirection = "normal";
									
									other.timesParried = 0;
									
									if (attack == AT_BAIR){
										other.spr_dir *= -1;
									}
									
									sound_play(sound_effect);
									spawn_hit_fx(floor(other.x + hit_effect_x),floor(other.y + hit_effect_y),hit_effect);
									
									with(player_id){
										has_hit = true;
										old_hsp = hsp;
										old_vsp = vsp;
										hitpause = true;
										hitstop = other.hitpause + 2;
										
										hud_color = get_player_hud_color(player);
										
										shellGrabCancelStoredHSP = old_hsp;
										shellGrabCancelStoredVSP = old_vsp;
										
										if (currKoopaShell.ownedByOriginalKoopaAndReboundedOffOfEnemy){
											specialShellRegrabTimer = 3;
										}
									}
								}
							}
							
						}
					}
				} else {	// For Non-Koopa Troopa attackers
					// REMINDER TO MYSELF THAT IM CHECKING STATES HERE
					if (other.state == 0 || other.state == 1){
						if (type == 1){
							if (other.wasShellParriedAtAll == false && ((other.whoHitShell != player) || (other.whoHitShell == player && other.shellHitLockout == 0))){
								other.teamOfPlayerWhoHitShell = get_player_team( player_id.player );
								
								if (player_id.x > other.x){
									other.spr_dir = -1;
								} else if (player_id.x < other.x){//>
									other.spr_dir = 1;
								} else {
									other.spr_dir = spr_dir;
								}
								
								other.spr_dir *= 1;
								other.hsp = 0;
								other.vsp = 0;
								other.storedHSP = other.baseReboundSpeed * other.spr_dir;
								other.storedVSP = -1.5;
								other.state = 2;
								other.state_timer = 0;
								other.shellHitLockout = other.shellHitlockoutAmt;
								
								other.hitByOrigOwner = false;
								other.whoHitShell = player;
								
								other.additionalHitHitpause = floor(hitpause);
								
								other.initialThrownDirection = "normal";
								
								if (attack == AT_BAIR){
									other.spr_dir *= -1;
								}
								
								// print(other.spr_dir)
								
								hud_color = get_player_hud_color(player_id.player);
								
								sound_play(sound_effect);
								spawn_hit_fx(floor(other.x + hit_effect_x),floor(other.y + hit_effect_y),hit_effect);
								
								// this is to force the hit effect of the shell so we don't inadvertedly cause a custom char to have their hit fx be used... for some reason. i blame dan code.
								with(other){
									with(player_id){
										// y -= 10;
										set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
									}
								}
								
								with(player_id){
									has_hit = true;
									old_hsp = hsp;
									old_vsp = vsp;
									hitpause = true;
									hitstop = other.hitpause;
								}
							}
						}
					}
				}
			}
		}
	}
}


if (shellHitLockout != 0){
	shellHitLockout--;
}

// print(teamOfPlayerWhoHitShell);

// ==========================================================

// idle
if (state == 0){
	wasShellParriedAtAll = false;
	sprite_index = sprite_get("shell_idle");
	
	hsp = 0;
	
	if (free){
		if (vsp < 12){
			vsp = vsp + .35;
		}
	}
}

// ==========================================================

// Moving
if (state == 1){
	sprite_index = sprite_get("shell_spin");
	
	image_index = (exist_timer / 4);
	
	canShellBounce = true;	
	
	if (free){
		if (vsp < 12){
			vsp = vsp + .35;
		}
	}
	
	// failsafe
	if (place_meeting(x+(-12*spr_dir),y,(asset_get("par_block")))){
		// print("Oh. I'm in the wall.")
		hsp = baseReboundSpeed * spr_dir;
	}
	
	// wall
	if ( ( place_meeting(x+(4*spr_dir),y - 6,(asset_get("par_block")))  || place_meeting(x+(4*spr_dir),y - 6,(asset_get("obj_article_solid"))))
	&& wallBounceCooldown == 0){
	
		if ( !( place_meeting(x+(0*spr_dir),y - 8 + vsp,(asset_get("par_block"))) || place_meeting(x+(0*spr_dir),y - 8 + vsp,(asset_get("obj_article_solid"))) ) ){
	
			// print("wall");
		
			shell_rebound("none");
			
			// x += (6 * spr_dir);
			
			wallBounceCooldown = 4;
			
			spawn_base_dust( x + (-24 * spr_dir), y, "walljump", spr_dir, -90*spr_dir);
			
		}
	}
	
	else 
	
	if ( ( place_meeting(x+(0*spr_dir),y - 8 + vsp,(asset_get("par_block"))) || place_meeting(x+(0*spr_dir),y - 8 + vsp,(asset_get("obj_article_solid"))) )
	&& wallBounceCooldown == 0){
		
		if ( !( place_meeting(x+(0*spr_dir),y + 8 + vsp,(asset_get("par_block"))) || place_meeting(x+(0*spr_dir),y + 8 + vsp,(asset_get("obj_article_solid"))) ) ){
			// print("ceiling");
			
			spawn_base_dust( x + (0 * spr_dir), y - 46, "land", spr_dir, 180);
			
			sound_play(player_id.sfx_nsmbds_groundpound_land, false, noone, 0.75, 1.35);
			sound_play(player_id.sfx_nsmbds_hitblock, false, noone, 1, 1);
			sound_play(player_id.sfx_nsmbds_hitblock, false, noone, 0.25, 0.54);
			
			wallBounceCooldown = 4;
			
			shell_rebound("up");
		}
	}
	
	// lowering wallbounce cooldown
	if (wallBounceCooldown != 0){
		wallBounceCooldown--;
	}
	
	// touching ground
	if (initialThrownDirection == "down" || initialThrownDirection == "up"){
		if (!free){
			play_landing_fx();
			setState(0);
		}
	}
	
	if (initialThrownDirection == "normal"){
		if (!free){
			forwardOnGroundTimer++;
			
			if (forwardOnGroundTimer == 1){
				play_landing_fx();
			}
		} else {
			forwardOnGroundTimer = 0;
		}
	}
	
	// koopa bounce
	//if (place_meeting(x, y + 4, player_id) && playerJumpedOnShellCooldown == 0 && whoHitShell == player_id.player){
	if (collision_rectangle(playerBounceRectX1Coord,
	playerBounceRectY1Coord,
	playerBounceRectX2Coord,
	playerBounceRectY2Coord,
	player_id,
	false,
	true) && playerJumpedOnShellCooldown == 0 && whoHitShell == player_id.player){	// so koopa can't jump on the shell IF it is hit by someone else
		if (player_id.y < y && player_id.vsp >= 0 && player_id.free == true){//>
			if (player_id.state != PS_AIR_DODGE
			&& player_id.state != PS_HITSTUN
			&& player_id.state != PS_HITSTUN_LAND
			&& player_id.state != PS_SPAWN
			&& player_id.state != PS_RESPAWN
			&& player_id.state != PS_DEAD
			&& player_id.state != PS_WRAPPED
			&& player_id.state != PS_WALL_TECH
			&& !((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && (player_id.attack == AT_FSPECIAL || player_id.attack == AT_DSPECIAL || (player_id.attack == AT_USPECIAL && player_id.window >= 7)))
			){		// just a bunch of state checks to make sure koopa can't bounce off of shell in... odd scenarios.
				//print("awesome BOUNCE!!!!!!!")
				
				player_id.hsp = player_id.hsp * 1.45;
				player_id.vsp = player_id.djump_speed * -1.2;
				
				if (ownedByOriginalKoopaAndReboundedOffOfEnemy && (player_id.left_down || player_id.right_down)){
					player_id.hsp *= 1.25;
					player_id.vsp *= 0.75;
				}
				
				//print(player_id.vsp);
				player_id.y -= 6;
				sound_play(player_id.djump_sound);
				sound_play(player_id.sfx_nsmbds_kick, false, noone, 0.75, 1.35);
				sound_play(player_id.sfx_nsmbds_hitblock, false, noone, 0.75, 1.1);
				player_id.jumpedOnShell = true;
				hsp *= 0.2;
				vsp = -8.5;
				playerJumpedOnShellCooldown = 20;
				setState(3);
			}
		}
	}
	
	// spawn hitbox
	if (state_timer >= 1 && currShellHitbox == noone && !shellHitpause){
		currShellHitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
	}
	
	// moves hitbox
	if (instance_exists(currShellHitbox) && !shellHitpause){
		currShellHitbox.x = x;
		currShellHitbox.y = y - 12;
		currShellHitbox.hsp = hsp;
		currShellHitbox.vsp = vsp;
		currShellHitbox.hitbox_timer = 2;
		
		if (initialThrownDirection == "up" || initialThrownDirection == "down"){
			currShellHitbox.kb_angle = 55;
		}
		
		// adjusts who exactly hit the shell so it can hit owner if it was hit by someone else.
		currShellHitbox.player = whoHitShell;
		hud_color = get_player_hud_color(whoHitShell);
		
		shellHitpauseAmt = currShellHitbox.hitpause;
		
		// print(string(currShellHitbox.player) + " - " + string(player_id.player));
		
		/*
		if (currShellHitbox.player != player_id.player){
			//print("shell was hit by a non-koopa");
			with (player_id){
				set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
			}
		} else {
			//print("shell hit by og")
			with (player_id){
				//set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
			}
		}
		*/
		
		if (currShellHitbox.has_hit == true){
			// print("shell hitbox has hit someone, go to rebound window");
			shellHitPlayer = true;
			shell_rebound(initialThrownDirection);
		}
	}
	
	if (!instance_exists(currShellHitbox)){
		currShellHitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
	}
	
	// dust fx
	if (!free){
		if (state_timer mod 4 == 0){
			spawn_base_dust( x + (0 * spr_dir), y, "dash", spr_dir, 0);
		}
	}
	
	if (!free){
		initialThrownDirection = "normal";
	}
	
	
	// preventing moving in place
	if (hsp == 0 && !free){
		movingButIdleTimer++;
		if (movingButIdleTimer == 4){
			setState(0);
		}
	} else {
		movingButIdleTimer = 0;
	}
} else {
	movingButIdleTimer = 0;
	
	canShellBounce = false;
}

// ==========================================================

// impact
if (state == 2){

	end_shell_hitbox(); 

	hsp = 0;
	vsp = 0;

	sprite_index = sprite_get("shell_impact");
	
	var baseImpactTime = 3;
	var amtToFreezeFor = baseImpactTime;
	
	if (shellHitPlayer == true){
		amtToFreezeFor = (baseImpactTime + shellHitpauseAmt);
	}
	
	// print(amtToFreezeFor);
	
	if (state_timer == (amtToFreezeFor + floor(additionalHitHitpause))){
		setState(1);
		hsp = storedHSP;
		vsp = storedVSP;
		x += (0 * spr_dir);
		
		shellHitpauseAmt = 0;
		
		shellHitPlayer = false;
		
		shellWasHitByAttack = false;
		
		additionalHitHitpause = 0;
	}
	
}

// ==========================================================

// spin
if (state == 3){
	wasShellParriedAtAll = false;
	if (state_timer == 0){
		sprite_index = sprite_get("shell_idle");
	} else {
		sprite_index = asset_get("empty_sprite");
	}
	sprite_index = asset_get("empty_sprite");
	
	if (additionalHitHitpause == 0){
		if (free){
			if (vsp < 12){
				vsp = vsp + .35;
			}
		}
	} else {
		additionalHitHitpause--;
	}
	
	if (!free && state_timer > 2){
		setState(0);
		sprite_index = sprite_get("shell_idle");
		hsp = 0;
		vsp = 0;
	}
}

// ==========================================================

// print("state: " + string(state))
// print("state_timer: " + string(state_timer))

//blastzone stuff
if (x < (blastzone_l - 240) || x > (blastzone_r + 240) || y > blastzone_b || y < blastzone_t){//>
	outsideOfBlastzones = true;
} else {
	outsideOfBlastzones = false;
}

// ==========================================================

//Make time progress
state_timer++;

exist_timer++;

// ==========================================================

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;


//--------------------------------------------
// deletes shell hitbox
#define shell_rebound(theThrownDir)

// just in case
end_shell_hitbox(); 

if (theThrownDir == "normal"){
	hsp *= -1;
	spr_dir *= -1;
} else if (theThrownDir == "up" || theThrownDir == "down"){
	vsp *= -0.65;
	spr_dir *= -1;
} else {
	// the default
	hsp *= -1;
	spr_dir *= -1;
}

storedHSP = hsp;
storedVSP = vsp;
		
sound_play(player_id.sfx_nsmbds_hitblock);
setState(2);

//--------------------------------------------
// deletes shell hitbox
#define end_shell_hitbox()

if (instance_exists(currShellHitbox)){
	currShellHitbox.hitbox_timer = 123;
	
	currShellHitbox = noone;
}
currShellHitbox = noone;
destroy_hitboxes();

//--------------------------------------------
// function just for landing sfx + vfx
#define play_landing_fx()

// sfx
sound_play(player_id.land_sound);
sound_play(player_id.sfx_nsmbds_hitblock, false, noone, 0.6, 1.25);
sound_play(player_id.sfx_nsmbds_groundpound_landshell, false, noone, 0.4, 1.05);

// dust
spawn_base_dust( x + (00 * spr_dir), y, "land", spr_dir, 0);


//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
// use this to be awesome
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;