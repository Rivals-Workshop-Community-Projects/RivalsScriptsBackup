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


//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

timer--;

//State 0: falling

if (state == 0){
	var grav_speed = 0.2;
	
	vsp += grav_speed;
	
	//animate
	var anim_rate = 8;
	
	if (state_timer mod anim_rate == 0){
		image_index++;
	}
	
	//land
	if (!free){
		state = 1;
		state_timer = 0;
		
		vsp = 0;
		image_index = 1;
		
		sound_play(asset_get("sfx_land"));
	}
	
	hit_detection();
}



//State 1: on ground

if (state == 1){
	hsp = 0;
	
	if (free){
		state = 0;
		state_timer = 0;
		
		image_index = 0;
	}
	
	hit_detection();
}

//extra stuff
if (state != 2){
	//prevent nano from using nspecial if this is out
	with (player_id){
		move_cooldown[AT_NSPECIAL] = nspecial_out_cooldown;
	}
	
	//disappear if too far offstage
	if (y > room_height + 200){
		state = 2;
		state_timer = 0;
		
		shake_camera( 2, 6 );
		sound_play(sound_get("hit"), false, noone, 1, 1);
	}
		
	if (x < 0 || x > room_width){
		state = 2;
		state_timer = 0;
	}
	
	//bababooey
	if (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN){
		timer = 0;
	}
	
	//destroy after timer hits 0
	if (timer <= 0){
		state = 2;
		state_timer = 0;
		
		picked_up = true;
	}
}

if (timer < 60){
	var flash_time = 5;
	visible = !(flash_time && timer % 10 < 5);
}

//State 2: Destroy with VFX/SFX

if (state == 2){
	sound_play(sound_get("pop"), false, noone, 1, 1);
	
	if (!picked_up){ //set cooldown if not picked up
		with (player_id){
			move_cooldown[AT_NSPECIAL] = nspecial_not_picked_up_cooldown;
		}
	}
	else{
		with (player_id){
			move_cooldown[AT_NSPECIAL] = 0;
		}
	}
	
	spawn_hit_fx(x, y, player_id.slapstick_dust_small);
	
	instance_destroy();
	exit;
}



//disappear if too far offstage
if (y > room_height + 200){
	state = 9;
	state_timer = 0;
}
	
if (x < 0 || x > room_width){
	state = 9;
	state_timer = 0;
}



//Make time progress
state_timer++;



/*
    Supersonic's Complex Hit Detection script v2
    (now featuring instance_place_list)
    
    While not required, I would like it if you credit me for
    using this hit detection code.
    
    This code takes into account the following:
        - Hitbox Priority
        - Hitbox Groups
        - Hit Lockout
        - (optional) Teams
        - (optional) Self Hitting
    
    and should be much easier to customize than my old code, as the on hit stuff
    has been put into a single function for easy editing.
    
    The original code that was passed around had some issues with it and it
    wasn't ever actually meant to be released publicly in the state it was in,
    but that's okay I suppose.
 
    To use it, simply copy and paste the code below to their respective files and, whenever you would like to
    detect hitboxes, call hit_detection(); in article[index]_update.gml.
    To customize what happens when the article is hit, edit the on_hit function in article[index]_update.gml.
    To customize what hitboxes can hit the article, modify the filters function in article[index]_update.gml.
    I've added a couple useful commented out filters for disabling the player hitting the article and teammates
    hitting the article, to serve as examples.
*/
 
///THE ACTUAL CODE IS BELOW
 
///     article[index]_update.gml
 
//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//make sure player is the one being targeted

if (hbox.type == 1 && player_id == hbox.player_id){
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
	//hitstop = floor(desired_hitstop); 
	 
	//Hit Lockout
	if article_should_lockout hit_lockout = hbox.no_other_hit;
	 
	/*
	//Default Hitstun Calculation
	hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
	hitstun_full = hitstun;
	            
	//Default Knockback Calculation
	 
	// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
	if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
	else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
	kb_dir = get_hitbox_angle(hbox);
	 
	hsp = lengthdir_x(orig_knock, kb_dir);
	vsp = lengthdir_y(orig_knock, kb_dir);
	*/
	
	//Default hit stuff
	sound_play(hbox.sound_effect);
	//ty nart :p
	var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
	var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
	with hit_player_obj { // use a with so that it's shaded correctly
	    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
	    temp_fx.hit_angle = other.kb_dir;
	    temp_fx.kb_speed = other.orig_knock;
	}
	
	sound_play(sound_get("glisten"));
	sound_play(sound_get("grab"), false, noone, 0.5, 1);
	
	//destroy
	picked_up = true;
	state = 2;
	state_timer = 0;
}

 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        //&& (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
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