//article1_update - runs every frame the article exists.

// Used for Remote Robot

/*
STATE LIST

- 1: Thrown
- 2: Landing
- 3: Walking
- 4: Turning Around
- 5: Jumpsquat
- 6: Jumping
- 7: Exploding
- 8: Falling
- 9: Getting Hit
*/

// Special Synergy
//if (state <= 4 && gotHitCounter == 0){//>
	if (place_meeting(x, y, asset_get("pHitBox"))) {
		with (asset_get("pHitBox")){
			if (place_meeting(x, y, other)){
				if (player_id == other.player_id){
					if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR){
						other.explodedByNSpec = true;
						other.state = 7;
						other.state_timer = 0;
						destroyed = true;
						spawn_hit_fx( other.x, other.y - 26, 147);
						sound_play(asset_get("sfx_absa_kickhit"), false, noone, 0.95, 1.25);
					}
					if (attack == AT_FSPECIAL){
						other.throwHitboxHit = true;
						other.player_id.fspecHitboxTouchedRobot = true;
						fspecHitboxTouchedRobot = true;
					}
				} else { // other players that aren't Tails
					if (type == 1 && other.state != 9){
						if (hit_effect != 301 && hit_effect != 302 && hit_effect != 305){
							spawn_hit_fx(other.x, other.y, 302);
						}
						spawn_hit_fx(other.x, other.y, hit_effect);
						sound_play(sound_effect);
						other.gotHitByEnemyAttack = true;
						other.gotHitCounter++;
					}
				}
			}
		}
	}
//}

if (gotHitByEnemyAttack && state != 9){
	setState(9);
}

if (state <= 4 && tailsDied && state != 10){//>
	setState(10);
}

if (robotGotParried && state != 10){
	if (instance_exists(projTravelHitbox)){
		projTravelHitbox.destroyed = true;
		projTravelHitbox = noone;
	}
	setState(10);
}

// State 1: Initially Thrown
if (state == 1){
	sprite_index = robotSprSpin;
	image_index = floor(state_timer / 3);
	if (state_timer == 0){
		projTravelHitbox = create_hitbox( AT_DSPECIAL, 1, x, y - 24 );
		vsp = -10;
		hsp = 3 * spr_dir;
	}
	// If landed, go to landing state
	if (!free){
		// Remove travel hitbox
		if (instance_exists(projTravelHitbox)){
			projTravelHitbox.destroyed = true;
			projTravelHitbox = noone;
		}
		setState(2);
		hsp = 0;
		vsp = 0;
	}
	// Gravity Stuff
	vsp += 0.55;
	vsp = clamp(vsp, -15, 15);
	// Boinking into a wall
	if (place_meeting(x+(16*spr_dir),y,(asset_get("par_block")))){
		spawn_base_dust( x + (44 * spr_dir), y - 6, "walk", 1, 90 * spr_dir);
		spawn_base_dust( x + (44 * spr_dir), y + 6, "walk", -1, 90 * spr_dir);
		spr_dir *= -1;
		hsp *= -1;
		sound_play(asset_get("sfx_shovel_hit_light2"), false, noone, 0.75, 1.25);
	}
}

// Moving the throw hitbox
if (instance_exists(projTravelHitbox)){
	projTravelHitbox.x = x;
	projTravelHitbox.y = y - 24;
	projTravelHitbox.hsp = hsp;
	projTravelHitbox.vsp = vsp;
	projTravelHitbox.hitbox_timer = 1;
}

// State 2: Landing Animation
if (state == 2){
	if (free){
		setState(8)
	}
	vsp = 0;
	hsp = 0;
	if (state_timer == 0){
		sound_play(asset_get("sfx_gus_land"));
		spawn_base_dust( x + (0 * spr_dir), y + 2, "land", spr_dir);
	}
	sprite_index = robotSprLand;
	image_index = floor(state_timer / 4);
	if (image_index >= 3){
		setState(3);
	}
}

// State 3: Walking
if (state == 3){
	sprite_index = robotSprWalk;
	image_index = floor(state_timer / 4);
	hsp = 3.25 * spr_dir;
	// Dust Effects
	if (state_timer % 10 == 0){
		spawn_base_dust( x + (2 * spr_dir), y, "walk", spr_dir);
	}
	// Turn around at ledge
	if (robotAtLedge && !robotOnPlat){
		hsp = 0;
		setState(4);
		spr_dir *= -1;
		sound_play(player_id.sfx_dstrong_use);
	}
	// Enemy Player Detection
	with (asset_get("oPlayer")){
	    if (place_meeting(x, y, other)){
			var playerTeam = get_player_team( player );
	    	if (player != other.player_id.player && (playerTeam != other.tailsTeam)){
	    		other.shouldJump = true;
	    	}
	    }
    }
	// Jump Trigger
	if (shouldJump){
		setState(5);
	}
	// Falling Trigger
	if (free){
		setState(8);
	}
}

// Ledge Detection
if (!collision_rectangle( x + 35 * spr_dir, y + 20, x + 39 * spr_dir, y - 20, asset_get("par_block"), true, true )) && (!place_meeting( x, y, asset_get("par_block"))){
	robotAtLedge = true;
} else {
	robotAtLedge = false;
}
if (!collision_rectangle( x + 40, y + 40, x - 40, y - 40, asset_get("par_block"), true, true )){
	robotOnPlat  = true;
} else {
	robotOnPlat = false;
}

// State 4: Turning Around
if (state == 4){
	sprite_index = robotSprTurn;
	image_index = state_timer / 4;
	if (image_index == 2.75){
		setState(3);
	}
}

// State 5: Jumpsquat
if (state == 5){
	hsp *= 0.9;
	sprite_index = robotSprJumpstart;
	image_index = floor(state_timer / 6);
	if (image_index == 1){
		spawn_base_dust( x + (2 * spr_dir), y + 2, "jump", spr_dir);
		sound_play(asset_get("sfx_mobile_gear_jump"));
		launchHitbox = create_hitbox( AT_DSPECIAL, 2, x, y - 26 );
		setState(6);
	}
}

// Moving the launch hitbox
if (instance_exists(launchHitbox)){
	launchHitbox.x = x;
	launchHitbox.y = y - 26;
	launchHitbox.hsp = hsp;
	launchHitbox.vsp = vsp;
}

// State 6: Jump
if (state == 6){
	sprite_index = robotSprFall;
	image_index = floor(state_timer / 20);
	if (state_timer == 0){
		hsp = 1.5 * spr_dir;
		vsp = -14;
	}
	// Gravity
	vsp += 0.55;
	vsp = clamp(vsp, -15, 15);
	// Explosion Trigger
	if (image_index == 1){
		setState(7);
		hsp = 0;
		vsp = 0;
	}
}

// State 7: Explosion
if (state == 7){
	launchHitbox = noone;
	sprite_index = robotSprFall;
	image_index = floor(state_timer / 20);
	spawn_hit_fx( x, y, 143 );
	sound_play(asset_get("sfx_ell_big_missile_fire"));
    var explodHitbox = create_hitbox(AT_DSPECIAL, 3, x, y);
	if (explodedByNSpec){
		explodHitbox.damage += 4;
		explodHitbox.kb_value += 1;
		explodHitbox.kb_scale += .15;
		explodHitbox.extra_hitpause += 20;
		explodHitbox.image_xscale += .0015;
		explodHitbox.image_yscale += .0015;
	}
	player_id.move_cooldown[AT_DSPECIAL] = 150;
	robotDelete();
	exit;
}

// State 8: Falling
if (state == 8){
	sprite_index = robotSprFall;
	image_index = 0;
	// Gravity Stuff
	vsp += 0.55;
	vsp = clamp(vsp, -15, 15);
	// Going back to the landing anim
	if (!free){
		setState(2);
		hsp = 0;
		vsp = 0;
		sound_play(asset_get("sfx_gus_land"));
		spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir);
	}
}

// State 9: Getting Hit
if (state == 9){
	sprite_index = robotSprFall;
	image_index = floor(state_timer / 20);
	if (state_timer == 0){
		hsp = -4.5 * spr_dir
		vsp = -8
	}
	// Gravity
	vsp += 0.55;
	vsp = clamp(vsp, -15, 15);
	if (image_index == 1){
		spawn_hit_fx( x, y, 144 );
		player_id.move_cooldown[AT_DSPECIAL] = 150;
		sound_play(asset_get("sfx_ell_cooldown"));
		robotDelete();
		exit;
	}
}

// State 10: Tails Died
if (state == 10){
	sprite_index = robotSprFall;
	image_index = floor(state_timer / 20);
	if (state_timer == 0){
		hsp = -4.5 * spr_dir
		vsp = -8
	}
	// Gravity
	vsp += 0.55;
	vsp = clamp(vsp, -15, 15);
	if (image_index == 1){
		spawn_hit_fx( x, y, 144 );
		player_id.move_cooldown[AT_DSPECIAL] = 60;
		sound_play(asset_get("sfx_ell_cooldown"));
		robotDelete();
		exit;
	}
}

if (throwHitboxHit){
	if (instance_exists(projTravelHitbox)){
		projTravelHitbox.destroyed = true;
		projTravelHitbox = noone;
	}
	throwHitboxHit = false;
	player_id.move_cooldown[AT_DSPECIAL] = 150;
	robotDelete();
	exit;
}

if (y > blastzone_b){
	if (instance_exists(projTravelHitbox)){
		projTravelHitbox.destroyed = true;
		projTravelHitbox = noone;
	}
	sound_play(asset_get("mfx_coin"));
	robotDelete();
	exit;
}

state_timer++;

// --------------------------------------------------------
#define robotDelete() //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

player_id.remoteRobot = noone;
instance_destroy();
exit;

// --------------------------------------------------------
#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;

// --------------------------------------------------------
//spawn_base_dust(x+(0*spr_dir),y, "dust name", spr_dir, angle);

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
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
return newdust;