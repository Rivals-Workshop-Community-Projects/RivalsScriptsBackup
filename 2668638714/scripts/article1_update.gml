if !instance_exists(self) exit;

hsp = abs(hsp) > 0.3 ? lerp(hsp, 0, 0.06) : 0;
vsp = abs(vsp) > 0.3 ? lerp(vsp, 0, 0.06) : 0;

if state == PS_WALK
{
	if point_distance(0,0,hsp,vsp) > 2 and !instance_exists(hitbox)
	{
		hitbox = create_hitbox(AT_DSPECIAL, 1, x, y);
	}
}

if instance_exists(hitbox)
{
	hitbox.x = x + hsp;
	hitbox.y = y + vsp;
	
	if !(point_distance(0,0,hsp,vsp) > 2)
	{
		instance_destroy(hitbox)
	}
}

lock_state = false;
var next_anim = PS_WALK;
var should_die = false;

// if hitstop == 0
// {
    switch (state)
    {
        case PS_WALK:
            next_anim = PS_IDLE;
            
            image_index = (state_timer / spawn_anim_frames) * sprite_get_number(sprite_index);
            if (floor(image_index) >= sprite_get_number(sprite_index))
            {
                sprite_index = sprite_get("voltorb_idle")
                changeState(next_anim)    
            }
        break;
        case PS_IDLE:
            image_index += 0.14
        break;
        
        //Nspecial
        case PS_ATTACK_GROUND:
        	if instance_exists(electrify_hitbox) instance_destroy(electrify_hitbox);
        	next_anim = PS_DEAD;
        	sprite_index = sprite_get("voltorb_nspecial")
        	image_index = (state_timer / nspec_anim_frames) * sprite_get_number(sprite_index);
        	
        	if state_timer > 9 and state_timer <= 18 and state_timer mod 3 == 0
        	{
        		with player_id
        		{
        			var shock = create_hitbox(AT_NSPECIAL_2, 2, voltorb_obj.x, voltorb_obj.y + (state_timer-15));
		            var shockspd = 24;
		            var xx = x;
		            x = -100000;
		            
		            var nearest = instance_nearest(shock.x,shock.y,oPlayer);
		            var nearestdir = point_direction(shock.x,shock.y,nearest.x + nearest.hsp,nearest.y + nearest.vsp - (nearest.char_height/2));
		            //print(nearestdir)
		            shock.hsp = lengthdir_x(shockspd,nearestdir);
		            shock.vsp = lengthdir_y(shockspd,nearestdir);
		            shock.x += shock.hsp;
		            shock.y += shock.vsp;
		            
		            x = xx;
        		}
        	}
        	
        	
        	if (floor(image_index) >= sprite_get_number(sprite_index))
            {
                changeState(next_anim)    
            }
        break;
        
        //Electrification
        case PS_ATTACK_AIR:
        	
    		with player_id
    		{
	            var xx = x;
	            x = -200000;
	            
	            var nearest = instance_nearest(other.x,other.y,oPlayer);
	            var nearestdist = point_distance(other.x,other.y,nearest.x + nearest.hsp,nearest.y + nearest.vsp - (nearest.char_height/2));
	            //print(nearestdir)
	            //print(nearestdist);
	            
	            x = xx;
    		}
        
        	if state_timer == 0 and !instance_exists(electrify_hitbox)
        	{
        		with player_id other.electrify_hitbox = create_hitbox(AT_DSPECIAL,2,other.x,other.y)
        	}
        	
        	if instance_exists(electrify_hitbox)
        	{
        		electrify_hitbox.x = x + hsp;
        		electrify_hitbox.y = y + vsp;
        	}
        	
        	next_anim = PS_DEAD;
        	sprite_index = sprite_get("voltorb_attack")
        	image_index = (state_timer / elec_anim_frames) * sprite_get_number(sprite_index);
        	if (floor(image_index) >= sprite_get_number(sprite_index))
            {
                changeState(next_anim)    
            }        	
        break;
        
        case PS_DEAD:
        	if instance_exists(electrify_hitbox) instance_destroy(electrify_hitbox)
        	
        	sprite_index = sprite_get("voltorb_death")
        	image_index = (state_timer / death_anim_frames) * sprite_get_number(sprite_index);
        	if (floor(image_index) >= sprite_get_number(sprite_index))
            {
                should_die = true;
            }        
        break;
    }
    
    state_timer += !lock_state;


    hit_detection();

// }
if should_die
{
	with player_id
	{
		move_cooldown[AT_NSPECIAL] = 60;
	}
	instance_destroy();
}

#define changeState(_state)
state = _state;
state_timer = 0;
lock_state = true;


//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the hitbox that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
//Default hit stuff
sound_play(hbox.sound_effect);
spawn_hit_fx(x+hbox.hit_effect_x,y+hbox.hit_effect_y,hbox.hit_effect);
 
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
 
// hsp = lengthdir_x(orig_knock, kb_dir);
// vsp = lengthdir_y(orig_knock, kb_dir);

var should_destroy = false;
if hbox.attack == AT_FSPECIAL and hit_player_obj == player_id and state != PS_DEAD
{
    with player_id
    {
        var boost = 2*(window == 6)
		destroy_hitboxes()
		window = 8;
		window_timer = 0;
		old_vsp = -5-boost;
		old_hsp /= 1.4;
		fspecial_used = true;
    }
}

if hit_player_obj != player_id
{
    should_destroy = true;
}
else
{
	if state != PS_DEAD
	{
		var knock, dir;
		knock = orig_knock;
		dir = kb_dir;
		
		dir_changed = false;
		switch hbox.attack
		{
			case AT_USPECIAL:
				if hbox.hbox_num == 1
				{
					knock = 2;
				}
				else
				{
					player_id.old_vsp = -14;
					knock = 10;
				}
			break;
			case AT_FAIR:
				if hbox.hbox_num != 2 break;
			case AT_FSPECIAL:
			case AT_FSTRONG:
				dir = 0;
				dir_changed = true;
			break;
			case AT_BAIR:
				knock = 5;
				dir = 180;
				dir_changed = true;
			break;
		}
		knock *= 2.5;
		hsp = lengthdir_x(knock, dir + (180*(player_id.spr_dir == -1)*dir_changed) );
		vsp = lengthdir_y(knock, dir + (180*(player_id.spr_dir == -1)*dir_changed) );
	}
	
	if !(hbox.attack == AT_USPECIAL and hbox.hbox_num == 1)
	{
		changeState(PS_ATTACK_AIR)
	}
	else if (hbox.attack == AT_USPECIAL and hbox.hbox_num == 1)
	{
		with player_id
		{
			window = 4;
			window_timer = 0;
			set_attack_value(attack,AG_NUM_WINDOWS, 6)
			spr_angle = 0;
	        hurtboxID.image_angle = spr_angle;
		}
	}
}


if (should_destroy) 
{
	with player_id
	{
		move_cooldown[AT_NSPECIAL] = 120;
	}
	changeState(PS_DEAD)
}
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {

    
    var player_equal = (player == other.player_id.player);
    var initial_hit = (player_equal and !(attack == AT_NSPECIAL or attack == AT_NSPECIAL_2 or attack == AT_DSPECIAL))
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (initial_hit) && other.state != PS_DEAD //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
return hbox;
 
#define hit_detection
//Code by Supersonic#9999
//You probably don't have to do anything to this function.
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
if num == 0 return;
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