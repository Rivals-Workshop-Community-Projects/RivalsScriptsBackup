//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Pulse
- 3 Reflect
- 4 Got Hit
- 5 Despawn
- 6 Break
- 7 
- 8 
- 9 Attack

*/



//Are there too many articles? If so, I should die

/*if (replacedcount > maxarticles){
    shoulddie = true;
}*/



//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

with (asset_get("pHitBox")){
    if (place_meeting(x,y,other.id) && other.player_id != player_id){
        other.shoulddie = true;
        other.hitstop = 10; //Article freeze frames
        hitpause = true;    //Player freeze frames
        hitstop = 10;       //Player freeze frames, cont.
    }
}
player_id.move_cooldown[AT_DSPECIAL] += 1;
if(state < 5){
	life_timer++;
	if(life_timer >= lifetime_max){
		state = 5;
		state_timer = 0;
	}
}



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 5 || state == 6)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	state = 6;
	state_timer = 0;
}

if(state > 0 && state < 5){
	hit_detection();
}


//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && state < 5){
    state = 5;
    state_timer = 0;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
    
    //In this example, the article moves forward for a little bit when spawned
    if(state_timer == 0){ 
    	hsp = 5 * spr_dir;
    }
    hsp -= 0.33 * spr_dir;
    
    //Go to idle
    if (state_timer >= 11){
    	hsp = 0;
        state = 1;
        state_timer = 0;
    }
}



//State 1: Idle

if (state == 1){
    
    //Stop the movement from state 0
    hsp = 0;
    
    //pulse to hit players in hitstun
    var player_detect = collision_rectangle(x - 20, y - 85, x + 20, y + 4, oPlayer, true, false);
    if(player_detect != player_id && player_detect != noone && player_id.last_hit_dspec == false){
    	if(player_detect.state_cat == SC_HITSTUN && player_detect.hitpause == false){
    		state_timer = 0;
    		state = 2;
    	}
    }
}



//State 2: Pulse

if (state == 2){
	//send players inwards
    if(state_timer == 0){
    	sound_play(sound_get("sfx_barrier_pulse"));
    	create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y-36));
    }
    
    if(state_timer >= 7){
    	state_timer = 0;
    	state = 1;
    }
}



//State 3: Reflect

if (state == 3){
	if(state_timer == 0){
    	sound_play(sound_get("sfx_barrier_pulse"));
    	create_hitbox(AT_DSPECIAL, 3, floor(x + (85 * spr_dir)), floor(y-36));
    	var beamvfx = spawn_hit_fx( x, y -36, vfx_barrier_beam );
    	beamvfx.spr_dir = spr_dir;
    }
    
    if(state_timer >= 7){
    	state_timer = 0;
    	state = 1;
    }
}



//State 4: Hit

if (state == 4){
	if(state_timer >= 11){
		state = 1;
		state_timer = 0;
	}
}



//State 5: Despawn

if (state == 5){
	image_alpha -= 0.1;
	if(state_timer == 1){
		player_id.move_cooldown[AT_DSPECIAL] = despawn_cd;
		player_id.dspec_hud_cd = despawn_cd + 10;
	}else if(state_timer >= 10){
		player_id.barrier = noone;
		player_id.killarticles = false;
        instance_destroy();
        exit;
	}
}



//State 6: Die

if (state == 6){
	if(state_timer == 1){
		player_id.move_cooldown[AT_DSPECIAL] = break_cd;
		player_id.dspec_hud_cd = break_cd + die_time;
	}else if(state_timer == die_time){
		player_id.barrier = noone;
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}


//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0: //spawn
        new_sprite = spr_spawn;
        animation_type = 2;
        break;
    case 1: //idle
        new_sprite = spr_idle;
        animation_type = 1;
        break;
    case 2: //pulse
        new_sprite = spr_pulse;
        animation_type = 2;
        break;
    case 3: //reflect
    	new_sprite = spr_pulse;
        animation_type = 2;
    	break;
    case 4: //hit
    	new_sprite = spr_hit;
        animation_type = 2;
        break;
    case 5: //despawn
    	new_sprite = spr_idle;
        animation_type = 1;
        break;
    case 6: //break
    	new_sprite = spr_shatter;
        animation_type = 2;
        break;
}
//Make time progress
state_timer++;

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
//state_timer++;

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

if(hbox.type == 1){
	//Default Hitpause Calculation
	//You probably want this stuff because it makes the hit feel good.
	var hit_dir = sign(hit_player_obj.x - x);
	if hbox.type == 1 {
	    var desired_hitstop = hbox.hitpause;
	    with hit_player_obj {
	        if !hitpause {
	            old_vsp = vsp;
	            old_hsp = hsp + hit_dir * ((hbox.kb_angle >= 70 && hbox.kb_angle <= 110)? 0 : (hbox.damage * 0.25));
	        	//push back player who hit
	        	old_hsp += 2 * hit_dir;
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
	
	//barrier stuff
	hp -= hbox.damage;
	sound_play(asset_get("sfx_ice_nspecial_hit_ground"));
	if(hp <= 0){
		hp = 0;
		hit_player_obj.hitstop += 10;
		hitstop += 10;
		state = 6;
		state_timer = 0;
		sound_play(sound_get("sfx_barrier_shatter"));
	}else{
		state = 4;
		state_timer = 0;
	}
	 
	//Hit Lockout
	if article_should_lockout hit_lockout = hbox.no_other_hit;
	 
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

}else if(hbox.type == 2){
	if(!hbox.plasma_safe){
		with(player_id) set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, floor(hbox.damage * 1.3));
		hbox.destroyed = true;
		state = 3;
		state_timer = 0;
		sound_play(sound_get("sfx_barrier_reflect"));
	}
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
        && (!player_equal) //uncomment to prevent the article from being hit by its owner.
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