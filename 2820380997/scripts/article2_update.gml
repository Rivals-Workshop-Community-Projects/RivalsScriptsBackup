//article2_update for Wisp

#macro WS_INITALIZE 0
#macro WS_IDLE 1
#macro WS_RETURN 2
#macro WS_DISPERSE 3
#macro WS_ARTICLE_DESTROY 4

//hit_detection();
//check_interupts();

switch(state){
    case WS_INITALIZE:
        sprite_index = spawn_sprite; 
        image_index = state_timer / 6;
        // Play Sound
        if(state_timer == 1){sound_play(asset_get( "sfx_ori_charged_flame_release" ),false,noone,.6,.5);} // soundID,looping,panning,volume,pitch}
        // Exit Condition
        if(state_timer > 24){state = WS_IDLE;state_timer = 0;sound_play(asset_get( "sfx_zetter_shine" ),false,noone,.6,.5);} // soundID,looping,panning,volume,pitch}
        
        break;
        
    case WS_IDLE:
        sprite_index = idle_sprite;
        image_index = state_timer / 10;
        hsp = 0;
        vsp = 0;
        if(state_timer > wisp_idle_timer || // Times out or is manually called back
        (player_id.attack == AT_NSPECIAL_2 && player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)){
            state = WS_RETURN;
            state_timer = 0;
            sound_play(asset_get( "sfx_zetter_fireball_fire" ),false,noone,.6,1.5);
            
        }
        if(point_distance(x, y, player_id.x, player_id.y) < 100){ state = WS_DISPERSE;state_timer = 0;} // Skip return if player is close
        break;
        
    case WS_RETURN:
        sprite_index = travel_sprite;
        image_index = state_timer / 6;
        // Determine direction to travel
        //point_direction(x1, y1, x2, y2) 1 is start 2 is end
        var travel_angle = point_direction(x, y, player_id.x, player_id.y - 30);
        var travel_speed = wisp_speed;
        hsp = travel_speed * cos(degtorad(travel_angle));
        vsp = -1 * travel_speed * sin(degtorad(travel_angle));
        image_angle = travel_angle;
        
        //Detection with article
        //point_distance(x1, y1, x2, y2); 1 is star 2 is end
        if(point_distance(x, y, player_id.x, player_id.y) < 200){ state = WS_DISPERSE;state_timer = 0;}
        break;
        
    case WS_DISPERSE:
        sprite_index = disperse_sprite;
        image_index = state_timer / 6;
        // Determine direction to travel
        //point_direction(x1, y1, x2, y2) 1 is start 2 is end
        var travel_angle = point_direction(x, y, player_id.x, player_id.y - 30);
        var travel_speed = wisp_speed;
        hsp = travel_speed * cos(degtorad(travel_angle));
        vsp = -1 * travel_speed * sin(degtorad(travel_angle));
        image_angle = travel_angle;
        
        //Detection with article
        //point_distance(x1, y1, x2, y2); 1 is start 2 is end
        if(point_distance(x, y, player_id.x, player_id.y) < 50){ state = WS_ARTICLE_DESTROY;state_timer = 0;}
        break;
        
    case WS_ARTICLE_DESTROY:
        //print("article destroy");
        sound_play(asset_get( "mfx_levelup" ),false,noone,.4,2); // soundID,looping,panning,volume,pitch
        player_id.wisp_returned = true;
        instance_destroy(self);
        exit;
        break;
        
    default:
        break;
}
//print(state_timer);
state_timer++;

#define check_interupts()
{

}
#define get_attack_data(attack)
{
/*    with(player_id){
        //Attack Values-----------------------------------------------------------------------------
        var ATTACK_AG_CATEGORY = get_attack_value(attack, AG_CATEGORY);
        var ATTACK_AG_SPRITE = get_attack_value(attack, AG_SPRITE); //sprite_get("")
        var ATTACK_AG_AIR_SPRITE = get_attack_value(attack, AG_AIR_SPRITE);
        var ATTACK_AG_HURTBOX_SPRITE = get_attack_value(attack, AG_HURTBOX_SPRITE); //sprite_get("_hurt")
        var ATTACK_AG_HURTBOX_AIR_SPRITE = get_attack_value(attack, AG_HURTBOX_AIR_SPRITE);
        var ATTACK_AG_NUM_WINDOWS = get_attack_value(attack, AG_NUM_WINDOWS);
        var ATTACK_AG_HAS_LANDING_LAG = get_attack_value(attack, AG_HAS_LANDING_LAG);
        var ATTACK_AG_OFF_LEDGE = get_attack_value(attack, AG_OFF_LEDGE);
        var ATTACK_AG_LANDING_LAG = get_attack_value(attack, AG_LANDING_LAG);
        var ATTACK_AG_STRONG_CHARGE_WINDOW = get_attack_value(attack, AG_STRONG_CHARGE_WINDOW);
        var ATTACK_AG_USES_CUSTOM_GRAVITY = get_attack_value(attack, AG_USES_CUSTOM_GRAVITY);
        
        //Window Values ------------------------------------------------------------------------------
        for(var window_index = 1; window_index > ATTACK_AG_NUM_WINDOWS; window_index++){
            var WINDOW_INDEX[window_index][@AG_WINDOW_TYPE] = get_window_value(attack, window_num, AG_WINDOW_TYPE);
            var WINDOW_INDEX[window_index][@AG_WINDOW_LENGTH] = get_window_value(attack, window_num, AG_WINDOW_LENGTH);
            var WINDOW_INDEX[window_index][@AG_WINDOW_ANIM_FRAMES] = get_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES);
            var WINDOW_INDEX[window_index][@AG_WINDOW_ANIM_FRAME_START] = get_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START);
            var WINDOW_INDEX[window_index][@AG_WINDOW_HSPEED] = get_window_value(attack, window_num, AG_WINDOW_HSPEED);
            var WINDOW_INDEX[window_index][@AG_WINDOW_HSPEED_TYPE] = get_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE);
            var WINDOW_INDEX[window_index][@AG_WINDOW_VSPEED] = get_window_value(attack, window_num, AG_WINDOW_VSPEED);
            var WINDOW_INDEX[window_index][@AG_WINDOW_VSPEED_TYPE] = get_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE);
            var WINDOW_INDEX[window_index][@AG_WINDOW_HAS_CUSTOM_FRICTION] = get_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION);
            var WINDOW_INDEX[window_index][@AG_WINDOW_CUSTOM_AIR_FRICTION] = get_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION);
            var WINDOW_INDEX[window_index][@AG_WINDOW_CUSTOM_GROUND_FRICTION] = get_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION);
            var WINDOW_INDEX[window_index][@AG_WINDOW_CUSTOM_GRAVITY] = get_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY);
            var WINDOW_INDEX[window_index][@AG_WINDOW_HAS_WHIFFLAG] = get_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG);
            var WINDOW_INDEX[window_index][@AG_WINDOW_INVINCIBILITY] = get_window_value(attack, window_num, AG_WINDOW_INVINCIBILITY);
            var WINDOW_INDEX[window_index][@AG_WINDOW_HITPAUSE_FRAME] = get_window_value(attack, window_num, AG_WINDOW_HITPAUSE_FRAME);
            var WINDOW_INDEX[window_index][@AG_WINDOW_CANCEL_TYPE] = get_window_value(attack, window_num, AG_WINDOW_CANCEL_TYPE);
            var WINDOW_INDEX[window_index][@AG_WINDOW_CANCEL_FRAME] = get_window_value(attack, window_num, AG_WINDOW_CANCEL_FRAME);
            var WINDOW_INDEX[window_index][@AG_WINDOW_HAS_SFX] = get_window_value(attack, window_num, AG_WINDOW_HAS_SFX); 
            var WINDOW_INDEX[window_index][@AG_WINDOW_SFX] = get_window_value(attack, window_num, AG_WINDOW_SFX); // asset_get("") or sound_get("")
            var WINDOW_INDEX[window_index][@AG_WINDOW_SFX_FRAME] = get_window_value(attack, window_num, AG_WINDOW_SFX_FRAME); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);
        }
        /*
        //Hitbox Values ------------------------------------------------------------------------------
        var num_hitboxes = get_num_hitboxes(attack);
        
         for(var hitbox_index = 1; hitbox_index > num_hitboxes; hitbox_index++){
            var HITBOX_INDEX[hitbox_index][HG_PARENT_HITBOX] = get_hitbox_value(attack, hitbox_num, HG_PARENT_HITBOX);
            var HITBOX_INDEX[hitbox_index][HG_HITBOX_TYPE] = get_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE);
            var HITBOX_INDEX[hitbox_index][HG_WINDOW] = get_hitbox_value(attack, hitbox_num, HG_WINDOW);
            var HITBOX_INDEX[hitbox_index][HG_WINDOW_CREATION_FRAME] = get_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME);
            var HITBOX_INDEX[hitbox_index][HG_LIFETIME] = get_hitbox_value(attack, hitbox_num, HG_LIFETIME);
            var HITBOX_INDEX[hitbox_index][HG_HITBOX_X] = get_hitbox_value(attack, hitbox_num, HG_HITBOX_X);
            var HITBOX_INDEX[hitbox_index][HG_HITBOX_Y] = get_hitbox_value(attack, hitbox_num, HG_HITBOX_Y);
            var HITBOX_INDEX[hitbox_index][HG_WIDTH] = get_hitbox_value(attack, hitbox_num, HG_WIDTH);
            var HITBOX_INDEX[hitbox_index][HG_HEIGHT] = get_hitbox_value(attack, hitbox_num, HG_HEIGHT);
            var HITBOX_INDEX[hitbox_index][HG_SHAPE] = get_hitbox_value(attack, hitbox_num, HG_SHAPE);
            var HITBOX_INDEX[hitbox_index][HG_PRIORITY] = get_hitbox_value(attack, hitbox_num, HG_PRIORITY);
            var HITBOX_INDEX[hitbox_index][HG_DAMAGE] = get_hitbox_value(attack, hitbox_num, HG_DAMAGE);
            var HITBOX_INDEX[hitbox_index][HG_ANGLE] = get_hitbox_value(attack, hitbox_num, HG_ANGLE);
            var HITBOX_INDEX[hitbox_index][HG_BASE_KNOCKBACK] = get_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK);
            var HITBOX_INDEX[hitbox_index][HG_KNOCKBACK_SCALING] = get_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING);
            var HITBOX_INDEX[hitbox_index][HG_EFFECT] = get_hitbox_value(attack, hitbox_num, HG_EFFECT);
            var HITBOX_INDEX[hitbox_index][HG_BASE_HITPAUSE] = get_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE);
            var HITBOX_INDEX[hitbox_index][HG_HITPAUSE_SCALING] = get_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING);
            var HITBOX_INDEX[hitbox_index][HG_VISUAL_EFFECT] = get_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT);
            var HITBOX_INDEX[hitbox_index][HG_VISUAL_EFFECT_X_OFFSET] = get_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET);
            var HITBOX_INDEX[hitbox_index][HG_VISUAL_EFFECT_Y_OFFSET] = get_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET);
            var HITBOX_INDEX[hitbox_index][HG_HIT_SFX] = get_hitbox_value(attack, hitbox_num, HG_HIT_SFX);
            var HITBOX_INDEX[hitbox_index][HG_ANGLE_FLIPPER] = get_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER);
            var HITBOX_INDEX[hitbox_index][HG_EXTRA_HITPAUSE] = get_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE);
            var HITBOX_INDEX[hitbox_index][HG_GROUNDEDNESS] = get_hitbox_value(attack, hitbox_num, HG_GROUNDEDNESS);
            var HITBOX_INDEX[hitbox_index][HG_EXTRA_CAMERA_SHAKE] = get_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE);
            var HITBOX_INDEX[hitbox_index][HG_IGNORES_PROJECTILES] = get_hitbox_value(attack, hitbox_num, HG_IGNORES_PROJECTILES);
            var HITBOX_INDEX[hitbox_index][HG_HIT_LOCKOUT] = get_hitbox_value(attack, hitbox_num, HG_HIT_LOCKOUT);
            var HITBOX_INDEX[hitbox_index][HG_EXTENDED_PARRY_STUN] = get_hitbox_value(attack, hitbox_num, HG_EXTENDED_PARRY_STUN);
            var HITBOX_INDEX[hitbox_index][HG_HITBOX_GROUP] = get_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP);
            var HITBOX_INDEX[hitbox_index][HG_HITSTUN_MULTIPLIER] = get_hitbox_value(attack, hitbox_num, HG_HITSTUN_MULTIPLIER);
            var HITBOX_INDEX[hitbox_index][HG_DRIFT_MULTIPLIER] = get_hitbox_value(attack, hitbox_num, HG_DRIFT_MULTIPLIER);
            var HITBOX_INDEX[hitbox_index][HG_SDI_MULTIPLIER] = get_hitbox_value(attack, hitbox_num, HG_SDI_MULTIPLIER);
            var HITBOX_INDEX[hitbox_index][HG_TECHABLE] = get_hitbox_value(attack, hitbox_num, HG_TECHABLE);
            var HITBOX_INDEX[hitbox_index][HG_FORCE_FLINCH] = get_hitbox_value(attack, hitbox_num, HG_FORCE_FLINCH);
            var HITBOX_INDEX[hitbox_index][HG_FINAL_BASE_KNOCKBACK] = get_hitbox_value(attack, hitbox_num, HG_FINAL_BASE_KNOCKBACK);
            var HITBOX_INDEX[hitbox_index][HG_THROWS_ROCK] = get_hitbox_value(attack, hitbox_num, HG_THROWS_ROCK);
            //projectile properties -----------------------------------------------------------
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_SPRITE] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_SPRITE);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_MASK] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_MASK);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_ANIM_SPEED] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ANIM_SPEED);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_HSPEED] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_HSPEED);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_VSPEED] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_VSPEED);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_GRAVITY] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GRAVITY);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_GROUND_FRICTION] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_FRICTION);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_AIR_FRICTION] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_AIR_FRICTION);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_WALL_BEHAVIOR] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_GROUND_BEHAVIOR] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_ENEMY_BEHAVIOR] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_PARRY_STUN] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PARRY_STUN);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_DOES_NOT_REFLECT] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_IS_TRANSCENDENT] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_DESTROY_EFFECT] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT);
            var HITBOX_INDEX[hitbox_index][HG_PROJECTILE_PLASMA_SAFE] = get_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PLASMA_SAFE);
         }
            
        
    } */
}

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
 

 
///     article[index]_update.gml
 
//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 {
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

state = CL_GOT_HIT;
state_timer = 0;

/* commented out due to her disapeering on it.
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
//if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
//if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
hsp = lengthdir_x(orig_knock, kb_dir);
vsp = lengthdir_y(orig_knock, kb_dir);
*/
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