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



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}



//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

/*with (asset_get("pHitBox")){
    if (place_meeting(x,y,other.id) && other.player_id != player_id){
        other.shoulddie = true;
        other.hitstop = 10; //Article freeze frames
        hitpause = true;    //Player freeze frames
        hitstop = 10;       //Player freeze frames, cont.
    }
}//*/

player_id.move_cooldown[AT_NSPECIAL] = 20;

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	player_id.pipebomb = noone;
	instance_destroy();
    exit;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2




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
    hsp = 2 * spr_dir;
    
    //Go to idle after 40 frames
    if (state_timer >= 40){
        state = 1;
        state_timer = 0;
    }
}



//State 1: Idle

if (state == 1){
    
    //Stop the movement from state 0
    hsp *= fric;
    if(vsp < max_fall) vsp += grav;
    
    hit_detection();
    
    if(y > room_height || x < -100 || x > room_width + 100){
    	player_id.pipebomb = noone;
    	sound_play(asset_get("sfx_mol_norm_bounce1"), false, noone, 0.75, 1.0);
		instance_destroy();
		exit;
    }
    
    var next_hbox = create_hitbox(AT_NSPECIAL, 1, floor(x + hsp), floor(y + vsp));
    next_hbox.player = owner;
    next_hbox.spr_dir = spr_dir;
    next_hbox.owner = self;
    
    if(place_meeting(x, y, asset_get("par_block"))){
    	state = 2;
        state_timer = 0;
        next_hbox.destroyed = true;
    }
}



//State 2: Exploding

if (state == 2){
	depth = -6;
	hsp = 0;
	vsp = 0;
	if(state_timer == 4){
		var next_hbox = create_hitbox(AT_NSPECIAL, 2, floor(x), floor(y - 10));
		next_hbox.player = owner;
    	sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.9, 1.1);
	}
	
    if (state_timer == die_time){
        player_id.pipebomb = noone;
        instance_destroy();
        exit;
    }
}


//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("nspec_bomb");
        animation_type = 0;
        break;
    case 1:
        new_sprite = sprite_get("nspec_bomb");
        animation_type = 1;
        break;
    case 2:
        new_sprite = spr_blast;
        animation_type = 2;
        break;
}

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
        if (state_timer mod die_anim_rate == 0){
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
if(hitstop <= 0){
	state_timer++;
}else{
	hitstop--;
}

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
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;

kb_dir = get_hitbox_angle(hbox);
var swap_ang = false;
var hitbox = hbox;
with(hit_player_obj){
	if(get_hitbox_value(hitbox.attack, hitbox.hbox_num, other.mok_bomb_ang) != 0){
		other.kb_dir = get_hitbox_value(hitbox.attack, hitbox.hbox_num, other.mok_bomb_ang);
		swap_ang = true;
	}
}

hsp = lengthdir_x(orig_knock, kb_dir) * (swap_ang? hit_player_obj.spr_dir : 1);
vsp = lengthdir_y(orig_knock, kb_dir);

//angle flipper accounting
switch(hbox.hit_flipper){
	
	case 1: //from player center
		var new_dir = point_direction(hit_player_obj.x, hit_player_obj.y, x, y);
		hsp = lengthdir_x(orig_knock, new_dir);
		vsp = lengthdir_y(orig_knock, new_dir);
		break;
	case 2: //towards player center
		var new_dir = point_direction(x, y, hit_player_obj.x, hit_player_obj.y);
		hsp = lengthdir_x(orig_knock, new_dir);
		vsp = lengthdir_y(orig_knock, new_dir);
		break;
	
	case 3: //horizontal from hitbox
		hsp = abs(hsp) * sign(x - hbox.x);
		break;
	case 4: //horizontal towards hitbox
		hsp = abs(hsp) * sign(hbox.x - x);
		break;

	case 5: //horizontal reversed
		hsp *= -1;
		break;
	
	case 6: //horizontal from player
		hsp = abs(hsp) * sign(x - hit_player_obj.x);
		break;
	case 7:	//horizontal towards player
		hsp = abs(hsp) * sign(hit_player_obj.x - x);
		break;
	
	case 8: //from hitbox center
		var new_dir = point_direction(hbox.x, hbox.y, x, y);
		hsp = lengthdir_x(orig_knock, new_dir);
		vsp = lengthdir_y(orig_knock, new_dir);
		break;
	case 9: //towards hitbox center
		var new_dir = point_direction(x, y, hbox.x, hbox.y);
		hsp = lengthdir_x(orig_knock, new_dir);
		vsp = lengthdir_y(orig_knock, new_dir);
		break;
}
owner = hit_player_num;

if(hsp > 0) spr_dir = 1;
else if(hsp < 0) spr_dir = -1;

//Default hit stuff
sound_play(hbox.sound_effect);
sound_play(asset_get("sfx_mol_norm_bounce1"), false, noone, 1.2, 1.0);
if(orig_knock > 15){
	sound_play(asset_get("sfx_mol_bat_bombhit"), false, noone, 1.1, 0.95);
}
//ty nart :p
var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
with hit_player_obj { // use a with so that it's shaded correctly
    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
    temp_fx.hit_angle = other.kb_dir;
    temp_fx.kb_speed = other.orig_knock;
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