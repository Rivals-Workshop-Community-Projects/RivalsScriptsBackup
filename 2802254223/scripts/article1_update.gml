//Make the sprite move.
state_timer ++;
bomb_timer ++;
player_id.move_cooldown[AT_DSPECIAL] = 2;

if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256)
    instance_destroy(); exit;
}
if(state < 3)
    hit_detection();
switch(state)
{
    case 0:// spawn
        image_index = floor((state_timer/4));
        if(state_timer == 16)
        {
            state_timer = 0;
            state = 1;
        }
        break;
    case 1:// idle
        image_index = clamp(floor((state_timer+32)/8),2,16);
        if(state_timer > 48) state_timer = 0;
        if(bomb_timer > 45) state = 2;
        break;
    case 2://blink.
            image_index = clamp(floor((state_timer+2*9)/2),9,12);
        if(state_timer > 6) { state_timer = 0; sound_play(asset_get("sfx_mol_huge_countdown"));}
        if(bomb_timer > 60) { state = (cardValue ==0?4:3); state_timer = 0;}
        break;
    case 3://explosion!
        //SDCH
        switch(cardValue)
        {
            case 1: 
                sound_play(asset_get("sfx_buzzsaw_hit"));
                for(i = 0; i < 6; i++)
                {
                    tempProj = create_hitbox(AT_FSPECIAL, 5, x, y);
                    tempAngle = 60-i*60;
                    tempProj.proj_angle = tempAngle;
                    tempProj.hit_flipper = 3;
                    tempProj.hsp = cos(tempAngle/180*-3.14)*6;
                    tempProj.vsp = sin(tempAngle/180*-3.14)*6;
                }
                for(i = 0; i < 6; i++)
                {
                    tempProj = create_hitbox(AT_FSPECIAL, 4, x, y);
                    tempAngle = 30-i*60;
                    tempProj.proj_angle = tempAngle;
                    tempProj.hit_flipper = 3;
                    tempProj.hsp = cos(tempAngle/180*-3.14)*5;
                    tempProj.vsp = sin(tempAngle/180*-3.14)*5;
                }
            break;
            case 2: 
		        spawn_hit_fx(x, y, club_explosion);
                nspecHitbox = create_hitbox(AT_DSPECIAL, 3, x, y);
                sound_play(asset_get("sfx_abyss_explosion_big"));
            break;
            case 3: 
		        spawn_hit_fx(x, y, heart_explosion);
                nspecHitbox = create_hitbox(AT_DSPECIAL, 2, x, y)
                nspecHitbox.can_hit_self = true;
                sound_play(asset_get("sfx_fish_collect"));
                break;
        }
        instance_destroy(); exit;
        break;
    case 4:
        if(state_timer % 10 == 1 || state_timer == 1) {
        	spawn_hit_fx(x-12+(random_func(2,24,true)), y-12+(random_func_2(2,24,true)), spade_explosion);
        	create_hitbox(AT_DSPECIAL, 1, x, y);
        	sound_play(asset_get("sfx_abyss_hazard_burst"),false,noone,0.6,2);
        }
        if(state_timer == 30) 
        {
            spawn_hit_fx(x, y, spade_explosion);
            create_hitbox(AT_DSPECIAL, 4, x, y);
            sound_play(asset_get("sfx_abyss_hazard_burst"));
            instance_destroy();
        }
        break;
    case 5: //destroyed
        sound_play(asset_get("sfx_metal_hit_strong"));
        spawn_hit_fx(floor(x),floor(y),144);
        instance_destroy(); exit;
        break;
}


#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
//Default hit stuff
sound_play(hbox.sound_effect);
fx = spawn_hit_fx(floor((x+hbox.x)/2),floor((y+hbox.y)/2),hbox.hit_effect);
fx.pause = 8;
fx.depth = -99;
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
hbox_owner = hbox.player;
 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
if hbox.type == 1 {
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
    }
    state = 5;
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
        && (!player_equal)
        && type == 1
        // && ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal))) //uncomment to prevent the article from being hit by its owner's team.
}

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
ds_list_destroy(hitbox_list);