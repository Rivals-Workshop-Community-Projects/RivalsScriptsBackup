//article1_update
hit_detection();
timer++;

player = orig_player;

with player_id if !mute_mode {
    switch get_player_color(player) {
        case 8:
        other.honk_sfx = sound_get("shine")
        other.shockwave_small_vfx = hit_fx_create(sprite_get("shine_small"), 12)
        other.shockwave_large_vfx = hit_fx_create(sprite_get("shine_large"), 12);
        break; //hands of my cawk
        case 9: other.honk_sfx = sound_get("snake_explosion") break; //SNAAAAAAAKE
        case 10: other.honk_sfx = sound_get("squack" + string(random_func_2(other.id mod 200, 2, true)+4)) break; //bird up
        case 11: other.honk_sfx = sound_get("sans_trombone") break; //sans
        case 14: other.honk_sfx = sound_get("honk2_wt_0" + string(random_func_2(other.id mod 200, 7, true)+1)) break; //player 2
        
        default: other.honk_sfx = sound_get("honk_wt_0" + string(random_func_2(other.id mod 200, 3, true)+1)) break;
    }
} else {
    other.honk_sfx = sound_get("honk_wt_0" + string(random_func_2(other.id mod 200, 3, true)+1));
}

if free {
    land_sound = false;
    if has_rune("A") {
        vsp += 0.1;
    } else {
        vsp += 0.3;
    }
    hsp *= 0.99;
} else {
    if !land_sound {
        sound_play(sound_get("wt_impact"))
        spawn_base_dust(x-8, y, "walk", 1);
        spawn_base_dust(x+8, y, "walk", -1);
    }
    land_sound = true;
    vsp = 0;
    if abs(hsp) < 0.5 {
        hsp = 0;
    } else {
        hsp *= 0.75;
    }
}

if place_meeting(x, y, asset_get("plasma_field_obj")) {
    disabled_timer = (timer mod 10) + 10;
}


near_player = false;
if point_distance(x, y, player_id.x, player_id.y - 20) <= 70 {
    near_player = true;
}

if near_player && timer > 20 && id == player_id.wt_closest {
    image_index = 1;
} else {
    image_index = 0;
}

//hitbox detection
/*
var hitbox = instance_place(x, y, pHitBox);
if hitbox != noone && (hitbox.type == 1 || hitbox.type == 2 && free && hitbox.player_id != player_id) && (hitbox.player_id != player_id || has_rune("E")) && hit_lockout == 0 {
    if disabled_timer == 0 && hitbox.player_id != player_id && !has_rune("K") {
        disabled_timer = 120;
        sound_play(sound_get("pshh"));
    }
    var hitvfx = hitbox.hit_effect
    var hitsfx = hitbox.sound_effect
    if !(hitbox.player_id != player_id && has_rune("K")) {
        if old_hsp == undefined && old_vsp == undefined {
            shake_camera(4, 3)
            spawn_hit_fx(x, y, hitvfx)
            sound_play(hitsfx)
        }
        
        var kb_amt = get_kb_formula(50, 1, 1, hitbox.damage, hitbox.kb_value, hitbox.kb_scale)
        var kb_angle = hitbox.kb_angle
        if kb_angle == 361 kb_angle = 40
        old_hsp = kb_amt*hitbox.spr_dir*dcos(kb_angle);
        old_vsp = kb_amt*-dsin(kb_angle);
        hitbox.player_id.has_hit = true
        
        hitbox.player_id.hitpause = true
        hitbox.player_id.hitstop = 4
        hitbox.player_id.hitstop_full = 4
        hitbox.player_id.old_hsp = hitbox.player_id.hsp
        hitbox.player_id.hsp = 0
        hitbox.player_id.old_vsp = hitbox.player_id.vsp
        hitbox.player_id.vsp = 0
        
        hitstop = sign(hitbox.hitpause)
        hit_lockout = 8
    }
}

if hit_lockout > 0 hit_lockout--

//print(hit_lockout)

if old_hsp != undefined && hitstop == 0 {
    hsp = old_hsp
    old_hsp = undefined
}
if old_vsp != undefined && hitstop == 0 {
    vsp = old_vsp
    old_vsp = undefined
}
*/

if (orig_knock > 0 && hitstop <= 0 && hit_timer == 5){
    hsp = hit_hsp;
    vsp = hit_vsp;
}

if (hit_timer > 0 && hitstop <= 0){
    hit_timer--;
}


if disabled_timer > 0 && disabled_timer mod 60 == 0 {
    sound_play(sound_get("static"));
}

if disabled_timer > 0 {
    disabled_timer--;
}

var is_taunt = false
if (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_TAUNT {
    is_taunt = true
}

//honk hitboxes
if disabled_timer == 0 {
    if player_id.holding_wt && player_id.num_wt_article >= 1 { //holding wt and another one exists
        spawn_shockwave(is_taunt);
    } else if near_player && player_id.num_wt_article >= 2 { //standing near a wt and at least 2 exist
        with obj_article1 {
            if player_id == other.player_id && id != player_id.wt_closest && disabled_timer == 0 {
                spawn_shockwave(is_taunt);
            }
        }
    }
}

//blastzone destroy
if (x > player_id.room_width + 10) || (x < -10) || (y > player_id.room_height + 50) {
    //if !player_id.holding_wt player_id.wt_destroyed_timer = 60;
    player_id.wt_destroyed_timer = 60;
    sound_play(sound_get("pshh"))
    instance_destroy();
    exit;
}
#define spawn_shockwave(is_taunt)
var volume = 0.5;
if get_player_color(player_id.player) == 10 { //bird up
    volume = 0.3;
}
switch player_id.wt_hitbox_size {
    case 1:
    var hitbox = create_hitbox(AT_NSPECIAL, 2, x, y - 5);
        hitbox.wt = id;
    var _fx = spawn_hit_fx(x, y-8, sparks_small_vfx);
        //_fx.depth = -10
    var _fx = spawn_hit_fx(x, y - 5, shockwave_small_vfx);
        _fx.depth = -10
    sound_play(honk_sfx, 0, false, volume);
    break;
    
    case 2:
    var hitbox = create_hitbox(AT_NSPECIAL_2, 2, x, y - 5);
        hitbox.wt = id;
    //spawn_hit_fx(x, y - 5, shockwave_small_vfx);
    var _fx = spawn_hit_fx(x, y, sparks_vfx);
        //_fx.depth = -10
    var _fx = spawn_hit_fx(x, y - 5, shockwave_large_vfx);
        _fx.depth = -10
    sound_play(honk_sfx, 0, false, volume + 0.2 + 0.3*(player_id.strong_charge/60));
    disabled_timer = 60;
    break;
    
    case 3: //taunt
    var hitbox = create_hitbox(AT_NSPECIAL_2, 2, x, y - 5);
        hitbox.wt = id;
    //spawn_hit_fx(x, y - 5, shockwave_small_vfx);
    var _fx = spawn_hit_fx(x, y, sparks_vfx);
        //_fx.depth = -10
    var _fx = spawn_hit_fx(x, y - 5, shockwave_large_vfx);
        _fx.depth = -10
    sound_play(harmonica_sfx);
    disabled_timer = 60;
    break;
}

#define spawn_base_dust(x, y, name, dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;

switch (name) {
    default: 
    case "dash_start": dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;

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
} else {
    if (hbox.transcendent == false){
        hbox.destroyed = true;
    }
}

hbox.has_hit = true;
// This puts the ARTICLE in hitpause.
// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
// or comment out the line below.
hitstop = floor(desired_hitstop); 
 
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
//hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
//hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
orig_knock = get_kb_formula(50, 1, 1, hbox.damage, hbox.kb_value, hbox.kb_scale)
kb_dir = get_hitbox_angle(hbox);
if kb_dir == 361 kb_dir = 40
 
hit_hsp = lengthdir_x(orig_knock, kb_dir);
hit_vsp = lengthdir_y(orig_knock, kb_dir);

if (hit_player_obj != player_id){
    hit_by_opp = true;
} else {
    hit_by_opp = false;
}

hit_timer = 5;

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

if disabled_timer == 0 && !has_rune("K") && hit_by_opp{
    disabled_timer = 120 + hitstop;
    sound_play(sound_get("pshh"));
}
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (type == 1 || type == 2 && other.free)
        && (groundedness == 0 || groundedness == 1+other.free)
        && (!player_equal && !other.player_id.wt_runek || player_equal && other.player_id.wt_runee && type != 2) //uncomment to prevent the article from being hit by its owner.
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