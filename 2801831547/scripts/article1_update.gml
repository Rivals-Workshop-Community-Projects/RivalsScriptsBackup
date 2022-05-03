 life++;
 image_index+=.2;
if(state == 1){
    
    with(oPlayer){
        if(id == other.player_id){
 
                wall_jump_player();

        }
    }
    
    if(!hitstop){
        hitstun--;
        if(should_take_hitstun_gravity) {
            vsp += .3;
            if(hitstun <= 5){
                should_take_hitstun_gravity = false;
                last_hit_player = noone;
            }
        } 
        
        if(hitstun > 0 and last_hit_player != noone and !should_take_hitstun_gravity){
            life = 0;
            state = 2;
        }
        hsp = hsp*.9;
        vsp = vsp*.9;
    }
    
   
    
    if(life > 25){
    	if(life == 26){
    		image_index = 0;
    	}
    	sprite_index = sprite_get("wisp");
        hit_detection();
    } else {
    	sprite_index = sprite_get("wisp_spawn");
    	
    }
}else {
	
    hsp = hsp*.9;
    vsp = vsp*.9;
    if(life == 5){
    	visible = false;
        sprite_index = sprite_get("nspecial_proj");
        mask_index = sprite_get("nspecial_proj");
        sound_play(asset_get("sfx_mol_norm_explode"));
        spawn_hit_fx(x-spr_dir*6, y-32, 261);
        my_hitbox = create_article_hitbox(AT_NSPECIAL, 1, x-spr_dir*6, y-32);
        my_hitbox.player = last_hit_player;
        my_hitbox.spr_dir = spr_dir;
        my_hitbox.kb_scale = hbox_kb_scale;
        my_hitbox.hit_flipper = hbox_angle_flipper;
        my_hitbox.kb_value = hbox_bkb;
        my_hitbox.kb_angle = hbox_kb_angle;
        my_hitbox.hbox_group = hbox_hit_group;
        my_hitbox.hitpause = hbox_hitpause;
        my_hitbox.hitpause_growth = hbox_hitpause_growth;
        my_hitbox.damage = hbox_damage;
        //my_hitbox.type = 1;
    } else if(life > 5){
    	visible = false;
    	hsp = 0;
    	vsp = 0;
        if(instance_exists(my_hitbox)){
            //my_hitbox.x=x;
            //my_hitbox.y=y;
        } else {
            instance_destroy(self);
        }
        
    }
    

}



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
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + (70+hbox.damage) * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);

spr_dir = hbox.spr_dir;
//var octant = round(8*kb_dir/(2*pi)+8)%8;
//kb_dir = 45*octant;





last_hit_player = hbox.player;
hsp = lengthdir_x(orig_knock, kb_dir);
vsp = lengthdir_y(orig_knock, kb_dir);
if(hbox.kb_scale > 0){ //adjust angle if not multihit linker
    should_take_hitstun_gravity = false; 
    if(abs(hsp) > abs(vsp)*.8){
        vsp = 0;
    }
    hbox_kb_angle = hbox.kb_angle;
    hbox_angle_flipper = hbox.hit_flipper;
    hbox_bkb = hbox.kb_value;
    hbox_kb_scale = hbox.kb_scale;
    hbox_hit_group = hbox.hbox_group;
    hbox_hitpause = hbox.hitpause;
    hbox_hitpause_growth = hbox.hitpause_growth;
    hbox_damage = ceil(hbox.damage/2)
    
    var octant = (round(arctan2(hsp, vsp)/(2*pi/8)) + 8)%8;
    kb_dir = octant*45 - 90;
    hsp = lengthdir_x(orig_knock, kb_dir);
    vsp = lengthdir_y(orig_knock, kb_dir);
} else {
    should_take_hitstun_gravity = true; 
}
 sound_play(hbox.sound_effect, 0, 0, .4);
 sound_play(asset_get("sfx_zetter_upb_hit"), 0, 0, .75);
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
    if(hbox.player == player and hbox.attack == AT_FSPECIAL and (player_id.jump_down or player_id.special_down) and player_id.has_walljump and (player_id.x < x+40 and player_id.x > x-40)){
        with(player_id){
            spr_dir*=-1;
            attack_end();
            set_state(PS_WALL_JUMP);
            x = other.x+spr_dir*26;
		    y = other.y+12;
        }
    } else if(hbox.player != player or hbox.attack != AT_FSPECIAL and hbox.attack != AT_EXTRA_2 and hbox.attack != AT_DSPECIAL or hbox.player != player){
        on_hit(final_hbox);
        variable_instance_set(final_hbox, hit_variable, true);
        if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
    }
        
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);


#define wall_jump_player()

if (has_rock == 0 && (jump_pressed || ((select == 7 || select == 10) && jump_down)) && has_walljump && (can_wall_jump or state == PS_DOUBLE_JUMP and state_timer < 8) && (!hitpause) && (!wrapped) and (state != PS_ROLL_BACKWARD and state != PS_ROLL_FORWARD and state != PS_TECH_GROUND and state != PS_TECH_BACKWARD and state != PS_TECH_FORWARD and state != PS_WALL_TECH))
{
    invincible = false;
    invince_time = 0;
    var y_reach = 40
    var walljump_check = 0;
    if (place_meeting(x, y, other) && left_down and x > other.x)
    {
        spr_dir = 1
        if(state == PS_DOUBLE_JUMP){
            djumps--;
            sound_stop(djump_sound);
            with (asset_get("new_dust_fx_obj")) {
                if player == other.player  && dust_fx == 2 {
                    dust_length = 0;
                }
            }
        }
        set_state(PS_WALL_JUMP)
        if(jump_down){
            clinging = true;
        }
        hsp = 0
        vsp = 0
        walljump_check = 0
        while (!place_meeting(((x - 1) - walljump_check), y, other))
        {
            walljump_check++
            if (walljump_check == 32)
            {
                walljump_check = 0
                break
            }
            else
                continue
        }
        x -= walljump_check
    }
    if (place_meeting(x, y, other) && right_down and x < other.x)
    {
        spr_dir = -1
        if(state == PS_DOUBLE_JUMP){
            djumps--;
            sound_stop(djump_sound);
            with (asset_get("new_dust_fx_obj")) {
                if player == other.player  && dust_fx == 2 {
                    dust_length = 0;
                }
            }
        }
        set_state(PS_WALL_JUMP)
        if(jump_down){
            clinging = true;
        }
        hsp = 0
        vsp = 0
        walljump_check = 0
        while (!place_meeting(((x + 1) + walljump_check), y, other))
        {
            walljump_check++
            if (walljump_check == 32)
            {
                walljump_check = 0
                break
            }
            else
                continue
        }
        x += walljump_check
    }
}
