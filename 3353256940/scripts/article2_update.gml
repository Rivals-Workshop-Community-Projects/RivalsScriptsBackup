
if (fuse_active && !hitstop) bomb_fuse--;
if (bomb_fuse == 0 && state < 97) {
	state = bomb_type ? 98 : 97;
	state_timer = 0;
	sound_stop(fuse_sound);
}

if (!hitstop) state_timer++; //progress the timer

// Blast zone checks
if (!is_playtest && (
	x < get_stage_data(SD_LEFT_BLASTZONE_X)
	|| get_stage_data(SD_RIGHT_BLASTZONE_X) < x
	|| get_stage_data(SD_BOTTOM_BLASTZONE_Y) < y
)) {
	state = 99; // destroy
}

// Clairen checks
if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_weak"));
    spawn_hit_fx(x, y, HFX_CLA_PLASMA_PLUS);
    state = 99; // destroy
}

// // // // STATE 1 - SCRAPBOMB IDLE
if (state == 1) { //
	// be punchable
	hit_detection()
	
	state_end = 30; //duration of this state in frames
	if (scrapbomb_visual == "b_scrapbomb") image_index_scrapb =  state_timer * 3 / state_end;
	else {
		image_index_scrapb = player_id.scrapbomb_alt_index;
	}
	
	
	// Movement init.
	if (state_timer == 1) {
		// A normal scrapbomb, that has never teleported before.
		if (!has_tpd) switch (bomb_angle) {
			case 45:
				vsp = -7.5;
				hsp = 5*spr_dir;
				break;
			case 90:
				vsp = -14;
				hsp = 1*spr_dir;
				break;
			case 0:
				vsp = -1;
				hsp = 2.5*spr_dir;
				break;
		}
	    // A scrapbomb that hs teleported to a pipe and returned from "stasis"
	    else {
	    	bomb_fuse = 16;
	    	spawn_hit_fx(x, y-16, HFX_GEN_SPIN);
	    	switch (bomb_angle) {
	    		case 90:
	    		// Up or default pipe, sends out bomb at a 90 angle
	    			vsp = -18;
	    			hsp = 0*tp_dir;
	    			break;
	    		case 75:
	    		// Up or default pipe, sends out bomb at a 90 angle
	    			vsp = -17.5;
	    			hsp = 2*tp_dir;
	    			break;
	    		case 60:
	    		// Angle used w/ extra spray from bag bomb
	    			vsp = -17;
	    			hsp = 5*tp_dir;
	    			break;
	    		case 45:
	    		// Slanted Pipe, sends out bomb at a 45 degree angle
	    			vsp = -16;
	    			hsp = 10*tp_dir;
	    			break;
	    		case 30:
	    		// Angle used w/ extra spray from bag bomb
	    			vsp = -12;
	    			hsp = 12*tp_dir;
	    			break;
	    		
	    	}
	    }
	    old_hsp = hsp;
	}	
	
	// Bounce on walls
	if (hit_wall) {
		hsp = old_hsp*-0.8;
		sound_play(asset_get("sfx_mol_norm_bounce1"), false, noone, 0.4, 1.4+(0.4*random_func(0, 1, false)));
	}
	
	// Bomb gravity physics kinda
    if (free) {
    	vsp += 0.5
    	was_free = true;
    	
    	// platform collision is unreliable, so we have to supplement it [dan why :(]
		if (vsp > 0 && place_meeting(x, y+vsp, asset_get("par_jumpthrough")) && place_meeting(x+hsp, y+vsp, asset_get("par_jumpthrough"))) {
			vsp = ceil(vsp);
		}
    }
    else if (!free) {
		if (has_bounced) {
			if (hsp > 0.1) hsp -= 0.1;
			else if (hsp < -0.1) hsp += 0.1;
			else hsp = 0;
		} else {
			if (!fuse_active) fuse_sound = sound_play(asset_get("sfx_mol_flash_light"), false, noone, 0.7, 1.3);
			vsp = -3;
			fuse_active = true;
			has_bounced = true;
		}
		if (was_free) {
			was_free = false;
			sound_play(asset_get("sfx_mol_norm_bounce1"), false, noone, 0.4, 1.4+(0.4*random_func(0, 1, false)));
		}
	}
	
	
    
    // FSpec collision
    with pHitBox if (player_id.is_twenny && other.hit_cooldown <= 0 && attack == AT_FSPECIAL && place_meeting(x, y, other)) {
    	player_id.has_hit = true;
		if (!player_id.hitpause) {
			player_id.old_hsp = player_id.hsp;
			player_id.old_vsp = player_id.vsp;
		}
		player_id.hitpause = true;
		player_id.hitstop = max(player_id.hitstop, hitpause);
		player_id.hitstop_full = player_id.hitstop;
		
		spawn_hit_fx(floor((x+other.x)/2)+hit_effect_x, floor((y+other.y)/2)+hit_effect_y, hit_effect);
		sound_play(sound_effect);
		other.hitstop = max(other.hitstop, hitpause);
		
		sound_play(asset_get("sfx_mol_norm_bounce1"), false, noone, 0.4, 1.4+(0.4*random_func(0, 1, false)));
		
		if (hbox_num < 5) {
			other.hsp = (x - other.x)/5 + (player_id.hsp);
			other.vsp = (y - other.y)/5 - 5;
		} else {
			other.hsp = 8 * player_id.spr_dir;
			other.vsp = -8;
		}
		
		// Theft! (ditto interaction)
		if (other.player_id != player_id) {
			other.player_id = player_id;
			other.player = orig_player;
			other.orig_player = orig_player;
			if (instance_exists(other.contact_hitbox)) {
				other.contact_hitbox.destroyed_next = true;
				other.contact_hitbox = noone; // since a new hitbox will be generated below
			}
		}
		
		other.hit_cooldown = self.length;
		other.was_hit = true;
    }
    if (!hitstop && hit_cooldown > 0) hit_cooldown--;
    
    if (was_hit) {
    	if (!instance_exists(contact_hitbox)) contact_hitbox = create_hitbox( AT_NSPECIAL, 2, x, y );
    	if (!fuse_active) fuse_sound = sound_play(asset_get("sfx_mol_flash_light"), false, noone, 0.7, 1.3);
    	bomb_fuse = 45;
    	fuse_active = true;
    	was_hit = false;
    }
    
    // Hitbox management
	if (state_timer == 1) contact_hitbox = create_hitbox( AT_NSPECIAL, 2, x, y );
    if (instance_exists(contact_hitbox)){
    	if (contact_hitbox.has_hit) {
			if (!fuse_active) fuse_sound = sound_play(asset_get("sfx_mol_flash_light"), false, noone, 0.7, 1.3);
			bomb_fuse = 7;
			fuse_active = true;
			has_hit = true;
			hsp = clamp(hsp, -3, 3);
			vsp = clamp(vsp, -3, 3);
		}
		contact_hitbox.x = x;
		contact_hitbox.y = y;
		if (!hitstop) {
			contact_hitbox.hsp = hsp;
			contact_hitbox.vsp = vsp;
		} else {
			contact_hitbox.hsp = 0;
			contact_hitbox.vsp = 0;
		}
		contact_hitbox.length++;
		if (!free) contact_hitbox.length = 0; 
    }

	// Rotation for bombs
	angle_scrapb -= hsp;
}

if (state == 2){ // SCRAP BOMB DELAY
	state_end = 10; //duration of tp delay
	// We fully stop the bomb in its tracks while its delayed inside a pipe. theres no fuse to it yet so its chill
	hsp = clamp(hsp, 0, 0)
	vsp = clamp(vsp, 0, 0)
	
    if (state_timer == state_end){//when the timer reaches end of this state's duration
        state_timer = 0; //reset state timer
		state = 1;
		sound_play(sound_get("door_open"));
    }
}

// // // // STATE 11 - BAG BOMB IDLE
if (state == 11) { //
	// be punchable
	hit_detection()

	image_index_scrapb =  state_timer * 3 / state_end;

	// Movement init.
	// Bag bombs cannot be spawned from pipes, so a TPD check is not needed.
	if (state_timer == 1) {
		switch (bomb_angle) {
			case 45:
				vsp = -9;
				hsp = 3.5*spr_dir;
				break;
			case 90:
				vsp = -10;
				hsp = 2.5*spr_dir;
				break;
			case 0:
				vsp = -3.5;
				hsp = 5.5*spr_dir;
				break;
		}
		old_hsp = hsp;
	}
	
    // Bomb gravity physics
    if (free) vsp += 0.5;
    else if (vsp >= 0) {
    	hsp = 0;
    	fuse_active = true;
    }
    
    // Bag bomb collision
    if (!free) with obj_article2 {
    	if (!free && "is_twenny_bomb" in self && state == 11 && self != other && place_meeting(x, y, other)) {
    		if (x < other.x) {
    			hsp = -2;
    			other.hsp = 2;
    		} else {
    			hsp = 2;
    			other.hsp = -2;
    		}
    	}
    }
    
    // FSpec/Claw collision
    with pHitBox if (player_id.is_twenny && other.hit_cooldown <= 0 && (attack == AT_FSPECIAL || attack == AT_EXTRA_3 && hbox_num == 4) && place_meeting(x, y, other)) {
    	player_id.has_hit = true;
		if (!player_id.hitpause) {
			player_id.old_hsp = player_id.hsp;
			player_id.old_vsp = player_id.vsp;
		}
		player_id.hitpause = true;
		var bomb_hitpause = (attack == AT_FSPECIAL) ? hitpause+10 : hitpause;
		player_id.hitstop = max(player_id.hitstop, bomb_hitpause);
		player_id.hitstop_full = player_id.hitstop;
		
		spawn_hit_fx(floor((x+other.x)/2)+hit_effect_x, floor((y+other.y)/2)+hit_effect_y, hit_effect);
		sound_play(sound_effect);
		other.hitstop = floor(max(other.hitstop, bomb_hitpause));
		
		sound_play(asset_get("sfx_forsburn_combust"), false, noone, 0.8, 1);
		
		// Theft! (ditto interaction)
		if (other.player_id != player_id) {
			other.player_id = player_id;
			other.player = orig_player;
			other.orig_player = orig_player;
			if (instance_exists(other.contact_hitbox)) {
				other.contact_hitbox.destroyed_next = true;
				other.contact_hitbox = noone; // since a new hitbox will be generated below
			}
		}
		
		other.hit_cooldown = self.length;
		other.was_hit = true;
		other.tp_dir = player_id.spr_dir;
		other.bomb_angle = (attack == AT_FSPECIAL) ? 45 : 90;
    }
    if (!hitstop && hit_cooldown > 0) hit_cooldown--;
    
    if (was_hit) {
    	state = 12;
    	state_timer = 10;
    }
    
    // Hitbox management
    if (state_timer == 1) contact_hitbox = create_hitbox( AT_NSPECIAL, 4, x, y );
    if (instance_exists(contact_hitbox)){
    	if (contact_hitbox.has_hit) {
			if (!fuse_active) fuse_sound = sound_play(asset_get("sfx_mol_flash_light"), false, noone, 0.7, 1.3);
			bomb_fuse = 7;
			fuse_active = true;
			has_hit = true;
			hsp = clamp(hsp, -3, 3);
			vsp = clamp(vsp, -3, 3);
		}
		contact_hitbox.x = x;
		contact_hitbox.y = y;
		contact_hitbox.hsp = hsp;
		contact_hitbox.vsp = vsp;
		contact_hitbox.length++;
		if (!free && state_timer > 1) contact_hitbox.length = 0; 
	}
    
    // Anim management
    if (free || state_timer == 1) {
    	image_index = min(state_timer/4, 2);
    	bag_land_timer = -3;
    } else {
    	if (bag_land_timer == -3) sound_play(asset_get("sfx_dust_knuckle"), false, noone, 0.5, 0.8);
    	if (bag_land_timer < 0) image_index = 3;
    	else image_index = 4 + (bag_land_timer/12)%3
    	bag_land_timer++;
    }
}

if (state == 12) { // BAG BOMB SPLIT (teleport/fspec behavior)
	state_end = 10; //duration of tp delay
	// We fully stop the bomb in its tracks while its delayed inside a pipe. theres no fuse to it yet so its chill
	hsp = clamp(hsp, 0, 0)
	vsp = clamp(vsp, 0, 0)
	
    if (!hitstop && state_timer >= state_end){//when the timer reaches end of this state's duration
    	player_id.bomb_type = 0;
    	
    	player_id.bomb_angle = bomb_angle;
    	var bomb = instance_create(x, y, "obj_article2");
    	bomb.has_tpd = 5; // true; not from a pipe
    	bomb.tp_dir = tp_dir;
    	bomb.hit_cooldown = 5;
    	
    	if (bomb_angle == 45) player_id.bomb_angle = 60;
    	else player_id.bomb_angle = 75;
    	var bomb = instance_create(x, y, "obj_article2");
    	bomb.has_tpd = 5; // true; not from a pipe
    	bomb.tp_dir = tp_dir;
    	bomb.hit_cooldown = 5;
    	
    	if (bomb_angle == 45) player_id.bomb_angle = 30;
    	else tp_dir *= -1; // bomb angle pulled from above
    	var bomb = instance_create(x, y, "obj_article2");
    	bomb.has_tpd = 5; // true; not from a pipe
    	bomb.tp_dir = tp_dir;
    	bomb.hit_cooldown = 5;
    	
    	if (has_tpd) sound_play(sound_get("door_open"));
    	
        instance_destroy();
        exit;
    }
}

// // // // STATE 95 - SCRAP GRENADE DISARMED
if (state == 95){ //
	image_index = 7;
	
	if (state_timer == 1) {
		//if (instance_exists(contact_hitbox)) contact_hitbox.destroyed_next = true;
		sound_play(asset_get("sfx_swish_weak"), false, 0,  0.6, 1.2);
	    spawn_hit_fx( x, y, player_id.splsh);
	}
    if (state_timer == 4) {
	    instance_destroy();//remove article
	    exit;//exits the code (not 100% necessary but its good to be safe)
    }
}

// // // // STATE 96 - BAG BOMB DISARMED
if (state == 96){ //
	image_index = 7;
	
	if (state_timer == 1) {
		//if (instance_exists(contact_hitbox)) contact_hitbox.destroyed_next = true;
		sound_play(asset_get("sfx_swish_medium"), false, 0, 0.6, 0.65);
	    spawn_hit_fx( x, y, player_id.splatter);
	}
    if (state_timer == 4) {
	    instance_destroy();//remove article
	    exit;//exits the code (not 100% necessary but its good to be safe)
    }
}

// // // // STATE 97 - SCRAP BOMB EXPLODING
if (state == 97){ //
	if (instance_exists(contact_hitbox)) contact_hitbox.destroyed_next = true;
	var explosionHitbox = create_hitbox( AT_NSPECIAL, 1, x, y );
	sound_play(asset_get("sfx_abyss_hazard_burst"));
    spawn_hit_fx( x, y, player_id.splatter);
    instance_destroy();//remove article
    exit;//exits the code (not 100% necessary but its good to be safe)
}

// // // // STATE 98 - BAG BOMB EXPLODING
if (state == 98){ //
	image_index = 7;
	
	if (state_timer == 1) {
		if (instance_exists(contact_hitbox)) contact_hitbox.destroyed_next = true;
		sound_play(asset_get("sfx_ell_utilt_cannon"), false, 0, 0.6, 1);
		sound_play(asset_get("sfx_swish_heavy"), false, 0, 0.1, 0.9);
		asset_get("sfx_ell_strong_attack_explosion")
		sound_play(sound_get("bomb_giggle"), false, 0, 0.15, 1);
	    spawn_hit_fx( x, y, player_id.bigbomb_expl);
	}
    if (state_timer == 4) {
    	var explosionHitbox = create_hitbox( AT_NSPECIAL, 3, x, y-8 );
	    instance_destroy();//remove article
	    exit;//exits the code (not 100% necessary but its good to be safe)
    }
}

// // // // STATE 99 - DIE SILENTLY OR DIE TRYING
if (state == 99){ //
	
    instance_destroy();//remove article
    exit;//exits the code (not 100% necessary but its good to be safe)

}

old_hsp = hsp;

//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
if hbox.type == 1 {
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
}
// This puts the ARTICLE in hitpause.
// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
// or comment out the line below.
hitstop = floor(desired_hitstop); 
 
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
 
//Default hit stuff
sound_play(hbox.sound_effect);
//ty nart :p
var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
with hit_player_obj { // use a with so that it's shaded correctly
    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
    temp_fx.hit_angle = other.kb_dir;
}

if (state == 1) state = 95;
else if (state == 11) state = 96;
state_timer = 0;
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (!player_equal) //uncomment to prevent the article from being hit by its owner.
        // && ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
return hbox;
 
#define hit_detection
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management
with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
    }
 
//hit lockout stuff
if hit_lockout > 0 {
    hit_lockout--;
    return;
}
//get colliding hitboxes
var hitbox_list = ds_list_create();
 
var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
var final_hbox = noone;
var hit_variable = `hit_article_${id}`;
if num == 0 {
    ds_list_destroy(hitbox_list);
    return;
}
if num == 1 {
    //no priority checks if only one hitbox is found
    var hbox = hitbox_list[|0]
    var group = hbox.hbox_group
    if hit_variable not in hbox 
        if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
            if filters(hbox) {
                final_hbox = hbox;
            } else {
                //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                variable_instance_set(hbox, hit_variable, true);
            }
        } else {
            //fake hit if group has already hit; optimization thing
            variable_instance_set(hbox, hit_variable, true);
        }
} else {
    var highest_priority = 0;
    var highest_priority_owner = -1;
    var highest_priority_hbox = noone;
    for (var i = 0; i < ds_list_size(hitbox_list); i++) {
        var hbox = hitbox_list[|i]
        var group = hbox.hbox_group
        if hit_variable not in hbox 
            //group check
            if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
                if filters(hbox) {
                    if hbox.hit_priority > highest_priority {
                        highest_priority = hbox.hit_priority;
                        highest_priority_owner = hbox.player;
                        highest_priority_hbox = hbox;
                    }
                } else {
                    //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                    variable_instance_set(hbox, hit_variable, true);
                }
            } else {
                //fake hit if group has already hit; optimization thing
                variable_instance_set(hbox, hit_variable, true);
            }
    }
    if highest_priority != 0 {
        final_hbox = highest_priority_hbox;
    }
}
 
if final_hbox != noone {
    on_hit(final_hbox);
    variable_instance_set(final_hbox, hit_variable, true);
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);