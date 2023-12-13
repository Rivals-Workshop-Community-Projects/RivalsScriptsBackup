//article1_update
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
var hitbox = instance_place(x, y, pHitBox);
if hitbox != noone && hitbox.type == 1 && (hitbox.player_id != player_id || has_rune("E")) && hit_lockout == 0 {
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