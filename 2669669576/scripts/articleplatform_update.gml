if(get_gameplay_time()%6 == 0){
    image_index++;
}
life++;
if(state == 1){
    sprite_index = sprite_get("wall_spawn");
    if(life == 28){
        life = 0;
        state = 2;
        my_hitbox = create_hitbox(AT_FSPECIAL, 2, x, y+64);
        sprite_index = sprite_get("wall_loop");
    }
} else if(state == 2){

    //mask_index = asset_get("empty_sprite");
    hit_detection();
    
    with (oPlayer) {
        if (id != other.player_id) {
            if(down_hard_pressed and place_meeting(x, y, other) and free){
                other.ignored_players[player] = true;
            }
            if(!free){
                other.ignored_players[player] = false;
            }
            if(other.ignored_players[player] == false){
                get_out_of_wall_player();
                wall_jump_player();
            }
        }
        else {
            if(wall_lockout <= 0){
                wall_jump_player();
            }
        }
    }
} else if (state == 3){
    sprite_index = sprite_get("wall_break");
    if(hitstop <= 0){
        my_hitbox.destroyed = true;
        instance_destroy(self);
    }
}

#define get_out_of_wall_player()
var tempInc = 1;

    while (place_meeting(x, y, other)) {
           
        if (!place_meeting((x + tempInc), y, other)){
            x += tempInc
        }else if (!place_meeting((x - tempInc), y, other)){
            x += (-tempInc)
        }else if (!place_meeting(x, (y - tempInc), other)) {
            y += (-tempInc)
        }
        else if (!place_meeting(x, (y + tempInc), other))
            y += tempInc
        else if place_meeting(x, y, other)
        {
            if (!place_meeting((x + tempInc), (y + tempInc), other))
            {
                x += tempInc
                y += tempInc
            }
            if (!place_meeting((x - tempInc), (y - tempInc), other))
            {
                x += (-tempInc)
                y += (-tempInc)
            }
            if (!place_meeting((x + tempInc), (y - tempInc), other))
            {
                x += tempInc
                y += (-tempInc)
            }
            if (!place_meeting((x - tempInc), (y + tempInc), other))
            {
                x += (-tempInc)
                y += tempInc
            }
        }
        tempInc += 1
    }
    if(place_meeting(x, bbox_top-4, other)){
        if(bbox_top <= other.bbox_bottom and bbox_bottom > other.bbox_bottom){
                        print("hi")
            vsp = -vsp;
        }
    }
#define wall_jump_player()

if (has_rock == 0 && (jump_pressed || ((select == 7 || select == 10) && jump_down)) && has_walljump && (can_wall_jump or state == PS_DOUBLE_JUMP and state_timer < 8) && (!hitpause) && (!wrapped))
{
    var y_reach = 40
    var walljump_check = 0;
    if (collision_rectangle((x - 32), (y - 22), (x - 18), (y - y_reach), other, 0, 1) && left_down)
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
    if (collision_rectangle((x + 18), (y - 22), (x + 32), (y - y_reach), other, 0, 1) && right_down)
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

if (trin == 999)
{
    if place_meeting((x + sign(hsp)), y, other)
    {
        if (state_cat == SC_HITSTUN)
        {
            if (abs(hsp) > 5)
                hsp *= -0.8
            else
                hsp *= -1
            if (free == 1 && tech_counter <= 20 && hitpause == 0 && has_rock == 0 && can_wall_tech && (!bubbled))
            {
                spr_dir = sign(hsp);
                set_state(PS_WALL_TECH);
                vsp = 0
                hsp = 0
            } else {
                sound_play(asset_get("sfx_bounce"));
            }
        }
        up_wall = 1
    }
}

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
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
 
state = 3;
kb_dir = get_hitbox_angle(hbox);
if(hbox.player == player and hbox.attack == AT_DAIR){
    kb_dir = -90;
} else if(hbox.player == player and hbox.attack == AT_FAIR){
    if(player.spr_dir == 1){
        kb_dir = 10;
    } else {
        kb_dir = 170;
    }
}
var temp_angle = kb_dir;
var force = 20

with(player_id){
    var eye_hitbox = create_hitbox(AT_FSPECIAL, 3, fspecial_wall.x, fspecial_wall.y+64);
    eye_hitbox.hsp = lengthdir_x( force, temp_angle );
    eye_hitbox.vsp = lengthdir_y( force, temp_angle );
    eye_hitbox.spr_dir = sign(eye_hitbox.hsp);
    if(eye_hitbox.spr_dir  == 0){
        eye_hitbox.spr_dir = 1;
    }
    eye_hitbox.proj_angle = sign(eye_hitbox.hsp)*darctan2(abs(eye_hitbox.vsp), abs(eye_hitbox.hsp))
    eye_hitbox.player = hbox.player;
    
    temp_angle+=5;
    eye_hitbox = create_hitbox(AT_FSPECIAL, 3, fspecial_wall.x, fspecial_wall.y+46);
    eye_hitbox.hsp = lengthdir_x( force, temp_angle );
    eye_hitbox.vsp = lengthdir_y( force, temp_angle );
    eye_hitbox.spr_dir = sign(eye_hitbox.hsp);
    if(eye_hitbox.spr_dir  == 0){
        eye_hitbox.spr_dir = 1;
    }
    eye_hitbox.proj_angle = sign(eye_hitbox.hsp)*darctan2(abs(eye_hitbox.vsp), abs(eye_hitbox.hsp))
    eye_hitbox.player = hbox.player;
        temp_angle-=10;
    eye_hitbox = create_hitbox(AT_FSPECIAL, 3, fspecial_wall.x, fspecial_wall.y+72);
    eye_hitbox.hsp = lengthdir_x( force, temp_angle );
    eye_hitbox.vsp = lengthdir_y( force, temp_angle );
    eye_hitbox.spr_dir = sign(eye_hitbox.hsp);
    if(eye_hitbox.spr_dir  == 0){
        eye_hitbox.spr_dir = 1;
    }
    eye_hitbox.proj_angle = sign(eye_hitbox.hsp)*darctan2(abs(eye_hitbox.vsp), abs(eye_hitbox.hsp))
    eye_hitbox.player = hbox.player;
    

    spawn_hit_fx(fspecial_wall.x, fspecial_wall.y+64, shatter);
}

/*//Default Hitstun Calculation
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
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        //&& (!hbox.type == 2) //uncomment to prevent the article from being hit by its owner.
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
            if filters(hbox) and hbox.type != 2{
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
                if filters(hbox) and hbox.type != 2 {
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