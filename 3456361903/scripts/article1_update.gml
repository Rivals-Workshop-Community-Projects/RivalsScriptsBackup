// // // // STATE 0 - START

if (init == 0){
    init = 1;
//do whatever to start out in update gml here if you want, very much optional

//this bit of code makes it so that if you have more than 1 of this article out in the stage, all the other ones you had around will be removed
//change the values of course, like change "obj_article2" accordingly to what article number this is or etc
//it can be safely removed or disabled
    with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id){
			if (state != 99){
			state = 99;
			state_timer = 0;
			}
        }
    }
}

state_timer++; //progress the timer

if (state == 0){ // Start // Spawn
	if (state_timer == 10) {
		sound_play(sound_get("smw_switch"))
	}
	state_end = 18; //duration of this state in frames
    qblock_index = state_timer * 6 / state_end;
	
    if (state_timer == state_end){//when the timer reaches end of this state's duration
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}

// // // // STATE 1 - IDLE
if (state == 1){ //
	state_end = 36; //duration of this state in frames
    qblock_index = 6;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	mask_index = collision_mask_index
	active_time++
	if (active_time >= qblock_inv_time) {
		hit_detection() //if you hit the block you can end the article
		if (active_time == qblock_inv_time) spawn_hit_fx(x, y-128+32, 302)
	}
	
    if (state_timer == state_end){//when the timer reaches end of this state's duration
        state_timer = 0; //reset state timer
		image_index = 5; //you may have to reset the image_index to start of the loop manually
    }
    
     if (player_id.spotlight = noone) {
     	state = 98;
     	state_timer = 0;
     }
    	
    with (oPlayer) {
    	if ((player == other.owner) && state != PS_DEAD && state != PS_RESPAWN ) {
    		in_spotlight = do_collision(hurtboxID);
	    	if (in_spotlight) {
	    		
	    		//A lot of things related to being inside the field.
	    		
	    		//we count our jumps
	    		if (state == PS_JUMPSQUAT || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) {
	    			if (state_timer == 1 && !jumped_off_ground_once) {
	    				add_jump_counter();
	    			}
	    		}
	    		else if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_UTILT or attack == AT_DSPECIAL or attack == AT_NSPECIAL) && !hitpause) {
	    			if (window == 1 && window_timer == 1) add_jump_counter();
	    		}
	    		else if (just_bounced && just_bounced_period == just_bounced_period_max && !hitpause) add_jump_counter();
	    		else if (nspec_hit_in_spotlight) {nspec_hit_in_spotlight = false; add_jump_counter()}
	    		//
	    		
	    	} 
    	}
	}
}

// // // // STATE 98 - FORCEFULLY REMOVED
if (state == 98){ //
	if (state_timer == 1) sound_play(sound_get("smw_switch"));

	state_end = 20; //duration of this state in frames
	qblock_index = 7 + state_timer * 5 / state_end;

    if (state_timer == state_end){//when the timer reaches end of this state's duration
    	player_id.spotlight = noone;
    	player_id.spot_cd_on = true;
        instance_destroy();//remove article
        with (oPlayer) {
        	in_spotlight = false;
    		if(bboost_counter < 3) bboost_counter = 0
		}
		exit;//exits the code (not 100% necessary but its good to be safe)
    }
}

// // // // STATE 99 - DISAPPEARING
//set state = 99 and state_timer = 0 to make it disappear with this state
if (state == 99){ //
	state_end = 10; //duration of this state in frames
    //image_index = 9 + state_timer * 3 / state_end;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
    if (state_timer == state_end){//when the timer reaches end of this state's duration
        instance_destroy();//remove article
        exit;//exits the code (not 100% necessary but its good to be safe)
    }
}

//you can safely add more states, copypaste state 0 or so and change the state number

// spawn_base_dust made by Supersonic
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

// Should only be run from the perspective of another object.
#define do_collision(obj) 

    // Reminder: if updating collision, update the visual in debug_draw
    var now_in_field = (collision_line(other.x-144, other.y+2, other.x, other.y-288, obj, true, false) != noone); //leftmost
    now_in_field = now_in_field || (collision_line(other.x+104, other.y+2, other.x, other.y-288, obj, true, false) != noone); 
    now_in_field = now_in_field || (collision_line(other.x+64, other.y+2, other.x, other.y-288, obj, true, false) != noone); 
    now_in_field = now_in_field || (collision_line(other.x+36, other.y+2, other.x, other.y-288, obj, true, false) != noone); 
    now_in_field = now_in_field || (collision_line(other.x, other.y+2, other.x, other.y-288, obj, true, false) != noone); //mid
    now_in_field = now_in_field || (collision_line(other.x-36, other.y+2, other.x, other.y-288, obj, true, false) != noone); 
    now_in_field = now_in_field || (collision_line(other.x-64, other.y+2, other.x, other.y-288, obj, true, false) != noone); 
    now_in_field = now_in_field || (collision_line(other.x-104, other.y+2, other.x, other.y-288, obj, true, false) != noone); 
    now_in_field = now_in_field || (collision_line(other.x+144, other.y+2, other.x, other.y-288, obj, true, false) != noone); //rightmost
    
    return now_in_field;
    

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

if (state == 1) state = 98;
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

#define add_jump_counter()
if (bboost_counter < 3) { //dont lose bboost when djumping
	bboost_counter++
}
if (bboost_counter >= 4) {
	bboost_counter = 0;
}

//flavor
sound_play(sound_get("hey"), false, noone, 0.1 + ((bboost_counter-1) / 10), 0.8 + (bboost_counter-1) / 10)
switch (bboost_counter) {
	case 1: 
		jumpnote1 = spawn_hit_fx(x, y-8, vfx_n_gold)
		jumpnote1.spr_dir = 1
		count = spawn_hit_fx(x, y-8, vfx_count1)
	break;
	case 2: 
		jumpnote1 = spawn_hit_fx(x+24, y-16, vfx_n_gold)
		jumpnote2 = spawn_hit_fx(x-24, y-16, vfx_n_gold)
		jumpnote1.spr_dir = 1
		jumpnote2.spr_dir = 1
		count = spawn_hit_fx(x, y-8, vfx_count2)
	break;
	case 3:
		jumpnote1 = spawn_hit_fx(x+36, y-24, vfx_n_gold)
		jumpnote2 = spawn_hit_fx(x-16, y-32, vfx_n_gold)
		jumpnote3 = spawn_hit_fx(x+16, y-32, vfx_n_gold)
		jumpnote4 = spawn_hit_fx(x-36, y-24, vfx_n_gold)
		jumpnote1.spr_dir = 1
		jumpnote2.spr_dir = 1
		jumpnote3.spr_dir = 1
		jumpnote4.spr_dir = 1
		if (!jumped_off_ground_once) count = spawn_hit_fx(x, y-8, vfx_count3)
	break;
}
count.depth = depth-1;
count.spr_dir = 1;
count.grav = .05