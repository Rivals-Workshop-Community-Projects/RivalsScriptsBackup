hsp /= 1.1;
vsp /= 1.1;
state_timer ++;
if(bullets_held != 0)
    idle_timer ++;
player_id.move_cooldown[AT_DSPECIAL] = 30;
for(i = 0; i < 3; i++)
    bullets[i].rot -= 20*spr_dir;
#region States
switch(state)
{
    case 0: //IDLE waiting to be hit/shot
        if(collision_circle(x,y,30,asset_get("par_block"),true, false)) //if you hit underground, lets not be as broken 
        {
            hsp /= 1.5;
            vsp /= 1.5;
        }
        image_index = floor(state_timer/6);
        if(idle_timer == 110)
        {
            sound_play(asset_get('sfx_ori_bash_use'));
            spawn_hit_fx(x,y, explode_fx);  
        }
        else if(idle_timer < 110)
            hit_detection();
            
        if(idle_timer >= 120)
        {
            state = 1; state_timer = 0;
        }
        else if(state_timer >= 300)
        {   state = 2; spawn_hit_fx(x,y, disappear_fx); sound_play(asset_get("sfx_absa_cloud_crackle"));}
        break;
    case 1:
        sprite_index = asset_get("empty_sprite");
        if(state_timer % 6 == 1 && bullet_shot != bullets_held)
        {
            if(bullet_shot == 0)
            {
                //detect player closest to you
                with(oPlayer)
                {
                    if(id != other.player_id && visible)
                    {
                        var Dist = point_distance(x,y,other.x,other.y);
                        if(other.closestDist == 0 || Dist > other.closestDist)
                        {
                            other.closestDist = Dist
                            other.closestPlayer = id;
                        }
                    }
                }
                sound_play(asset_get("sfx_clairen_poke_strong"));
                spawn_hit_fx(x,y, 256);
            }

            spawn_hit_fx(x,y, explode_fx); 
            sound_play(sound_get("revolver_ricochet"));
            hbox = create_hitbox(AT_NSPECIAL, 2, x,y);
            if(bullets[bullet_shot].enhanced)
            {
                hbox.hit_effect = player_id.laserhit_fx;
                hbox.extra_hitpause = 8;
            }
            hbox.length = 60;
            // hbox.spr_dir = spr_dir;
            //if no one
            if(closestPlayer == 0)
                hbox.hsp = 12*spr_dir;
            else
            {
                if(bullet_shot == 0)
                {
                    fx = spawn_hit_fx(closestPlayer.x,closestPlayer.y-30, cursor_fx); 
                    fx.depth = -99;
                }
                aim_dir = point_direction(x,y,closestPlayer.x,closestPlayer.y-30);
                hbox.proj_angle = aim_dir-(!hbox.spr_dir? 180 : 0);
                hbox.hsp = lengthdir_x(13,aim_dir);
                hbox.vsp = lengthdir_y(13,aim_dir);
            }
            bullet_shot++;
        }
        else if (bullet_shot == bullets_held)
            state = 2;
        break;
    case 2:
        instance_destroy();
        break;
}

#endregion

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the hitbox that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.

player_obj = player_id;
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//Gets hit by lasers in the otherhand
with(hbox)
{
    
    if(((attack == AT_JAB || attack == AT_BAIR) && hbox_num == 3 || 
    (attack == AT_UAIR || attack == AT_DTILT || attack == AT_DAIR || attack == AT_FSPECIAL || attack == AT_USTRONG || attack == AT_DSTRONG) && hbox_num == 2 || 
    (attack == AT_DTILT || attack == AT_NSPECIAL || attack == AT_FSTRONG || attack == AT_DSTRONG) && hbox_num == 1) && player_id == other.player_obj)
    {
        with(other)
            if article_should_lockout hit_lockout = 2;
        sound_play(asset_get("sfx_clairen_tip_weak"));
        spawn_hit_fx(other.x,other.y,128);
        destroyed = true;
        other.spr_dir = spr_dir;
        other.state_timer = 0;

        //Check if full
        if(other.bullets_held < 3)
        {
            if(hit_effect == other.player_id.laserhit_fx)
                other.bullets[other.bullets_held].enhanced = true;
            other.bullets_held ++;
            other.idle_timer = 0;
        }
        else
        {
            other.state = 1;
            other.state_timer = 0;
        }
    }
    else if (type == 1)
    //GET HIT and goodbye
    {
        with(other) if(hit_player_obj != player_obj)
        {{
            //Default hit stuff
            sound_play(hbox.sound_effect);
            spawn_hit_fx(x+hbox.hit_effect_x,y+hbox.hit_effect_y,hbox.hit_effect);
            spawn_hit_fx(x,y, 256);
            
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
            else
                destroyed = true;

            // This puts the ARTICLE in hitpause.
            // If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
            // or comment out the line below.
            hitstop = floor(desired_hitstop); 


            //Hit Lockout
            if article_should_lockout hit_lockout = hbox.no_other_hit;
            
            //Default Hitstun Calculation
            hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
            
            state = 2;
        }}
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
        // && (!player_equal )) //uncomment to prevent the article from being hit by its owner.
        // && ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || team_equal) ) || !player_equal) //uncomment to prevent the article from being hit by its owner's team.
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