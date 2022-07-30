//
timer++;

other_seed_id = undefined;
with obj_article1 if player_id == other.player_id && id != other.id {
    other.other_seed_id = id
}

draw_vine = false

if mark_id && !instance_exists(mark_id) {
    mark_id = undefined
    set_state(PS_DEAD)
}

switch state {
    
    case PS_IDLE: //normal
    floor_check()
    sprite_index = sprite_get("seed_idle");
    image_speed = 0.15;
    
    var is_colliding = false
    with pHitBox if player_id != other.player_id && place_meeting(x, y, other) {
        is_colliding = true
    }
    
    if is_colliding {
        set_state(PS_DEAD)
        sound_play(asset_get("sfx_syl_nspecial_flowerhit"))
        spawn_hit_fx(x, y, player_id.vfx_wood_small)
    }
    
    break;
    
    case PS_WRAPPED: //marked to player
    depth = -6
    sprite_index = asset_get("empty_sprite");
    x = mark_id.x + mark_id.hsp
    y = mark_id.y-(mark_id.char_height/2) + mark_id.vsp
    mark_id.arb_marked = true
    if mark_id.state == PS_DEAD || mark_id.state == PS_RESPAWN {
        set_state(PS_DEAD)
        if other_seed_id != undefined with other_seed_id if state != PS_IDLE {
            set_state(PS_DEAD)
        }
    }
    break;
    
    case PS_JUMPSQUAT: //attack startup
    floor_check()
    
    if other_seed_id == undefined || other_seed_id == noone {
        set_state(PS_DEAD)
    }
    
    draw_base_timer++
    if state_timer == 1 {
        spr_dir = sign(other_seed_id.x-x)
    }
    sprite_index = sprite_get("seed_erupt");
    image_speed = 0;
    image_index = floor(state_timer/3)
    var num_frames = 6
    if state_timer == (num_frames*3)-1 {
        if other_seed_id != undefined && other_seed_id.state == PS_WRAPPED {
            set_state(PS_DASH_START)
        } else {
            set_state(PS_IDLE)
        }
        /*
        if other_seed_id != undefined && other_seed_id.state != PS_WRAPPED {
            set_state(PS_WAVELAND)
        } else {
            set_state(PS_DASH_START)
        }
        */
    }
    
    if other_seed_id != undefined && other_seed_id.state != PS_WRAPPED && age < other_seed_id.age {
        if state_timer == 6 sound_play(asset_get("sfx_syl_ustrong"))
    }
    break;
    
    case PS_DASH_START: //attack seek
    sprite_index = asset_get("empty_sprite");
    image_speed = 0;
    draw_vine = true
    if state_timer == 1 {
        seek_dist = point_distance(x, y, other_seed_id.x, other_seed_id.y)
        sound_play(player_id.sfx_ivy_swipe_heavy1)
        sound_play(asset_get("sfx_may_root"))
        whiff_return = false
    }
    if state_timer == 1 {
        seek_angle = point_direction(x, y, other_seed_id.x, other_seed_id.y)
        var seek_spd = 40
        var seeker = create_hitbox(AT_DSPECIAL, 1, x, y);
            seeker.hsp = seek_spd*dcos(seek_angle)
            seeker.vsp = -seek_spd*dsin(seek_angle)
            seeker.spr_dir = sign(other_seed_id.x-x)
        seeker_id = seeker.id
    }
    
    var seek_dist_cur = point_distance(x, y, seeker_id.x, seeker_id.y)
    
    if seek_dist_cur > seek_dist /*|| position_meeting(seeker_id.x, seeker_id.y, asset_get("par_block"))*/ {
        seeker_id.hsp *= 0.8
        seeker_id.vsp *= 0.8
    }
    
    if abs(seeker_id.vsp) < 1 && abs(seeker_id.hsp) < 1 {
        var returnspd = 50
        if !whiff_return {
            sound_play(asset_get("sfx_swipe_weak1"))
            whiff_return = true
        }
        seeker_id.x = lerp(seeker_id.x, x, 0.2)
        seeker_id.y = lerp(seeker_id.y, y, 0.2)
        seeker_id.hit_priority = 0
    }
    
    if seek_dist_cur < 10 && state_timer > 20 {
        seeker_id.destroyed = true
        set_state(PS_DEAD)
    }
    break;
    
    case PS_DASH_TURN: //hit opponent
    draw_vine = true
    if state_timer == 10 {
        set_state(PS_DASH)
    }
    break;
    
    case PS_DASH: //reeling in
    if other_seed_id == undefined {
        set_state(PS_DEAD)
        break;
    }
    draw_vine = true
    if state_timer == 1 {
        reel_dist = point_distance(x, y, other_seed_id.x, other_seed_id.y)
        sound_play(asset_get("sfx_swipe_medium1"))
    }
    var reeldir = point_direction(other_seed_id.x, other_seed_id.y, x, y)
    var reelspd = 5 + clamp(state_timer*2, 0, 30)
    
    if other_seed_id == undefined || other_seed_id == noone || !instance_exists(other_seed_id) {
        set_state(PS_DEAD)
        break;
    }
    
    //player stuck on solid
    var _break = false
    with other_seed_id.mark_id if place_meeting(x + reelspd*dcos(reeldir), y, asset_get("par_block")) {
        _break = true
    }
    
    if _break {
        with other_seed_id {
            set_state(PS_DEAD)
        }
        with other_seed_id.mark_id {
            arb_marked = undefined
            arb_tethered = undefined
        }
        sound_play(asset_get("sfx_may_whip2"))
        spawn_hit_fx(x, y, 304)
        spawn_hit_fx(other_seed_id.x, other_seed_id.y, 304)
        break;
    }
    
    other_seed_id.mark_id.x += reelspd*dcos(reeldir)
    other_seed_id.mark_id.y += -reelspd*dsin(reeldir)
    
    
    if point_distance(x, y, other_seed_id.x, other_seed_id.y) < 100 {
        set_state(PS_ATTACK_AIR)
    }
    break;
    
    case PS_ATTACK_AIR: //bite attack
    draw_base_timer = 0
    depth = -7
    sprite_index = sprite_get("seed_attack")
    image_index = floor(state_timer/4)
    image_speed = 0;
    if state_timer < 16 && other_seed_id != undefined && other_seed_id != noone && instance_exists(other_seed_id) {
        if other_seed_id.mark_id != undefined && other_seed_id.mark_id != noone && instance_exists(other_seed_id.mark_id) {
            other_seed_id.mark_id.x = lerp(other_seed_id.mark_id.x, x, 0.3)
            other_seed_id.mark_id.y = lerp(other_seed_id.mark_id.y, y, 0.3)
        }
    }
    if state_timer == 1 sound_play(asset_get("sfx_syl_uspecial_travel_start"))
    if state_timer == 16 && !hitstop {
        sound_play(asset_get("sfx_bite"))
        state_timer++
        create_hitbox(AT_DSPECIAL, 2, x, y-52)
        mark_id = undefined
        if other_seed_id != undefined other_seed_id.state = PS_DEAD
    }
    
    if state_timer == 35 {
        state = PS_DEAD
    }
    break;
    
    case PS_WAVELAND: //vine spawn
    sprite_index = asset_get("empty_sprite")
    if age < other_seed_id.age && state_timer == 1 {
        spawn_vine()
        
        /*
        with pHitBox {
            if player_id == other.id && effect == 99 && hitbox_timer == 0 {
                depth = other.meter_flipped == true ? -7 : -8;
                if sprite_index = asset_get("hitbox_circle_spr") sprite_index = other.shape_circle;
                else if sprite_index = asset_get("hitbox_square_spr") sprite_index = other.shape_rect;
                else if sprite_index = asset_get("hitbox_rounded_rectangle") sprite_index = other.shape_roundrect;
            }
        }
        */
    }
    break;
    
    case PS_ATTACK_GROUND: //strong attacks
    window = player_id.window
    if player_id.window_timer == 0 && !player_id.hitpause window_timer = 0
    strong_index = player_id.image_index
    strong_dir = player_id.spr_dir
    strong_y = y+4
    
    switch attack {
        case AT_FSTRONG:
        strong_spr = sprite_get("fstrong_vine")
        strong_x = x-(60*strong_dir)
        vine_attack(1)
        break;
        
        case AT_DSTRONG:
        strong_spr = sprite_get("dstrong_vine")
        strong_x = x
        vine_attack(1)
        vine_attack(2)
        break;
        
        case AT_USTRONG:
        strong_spr = sprite_get("ustrong_vine")
        strong_x = x
        vine_attack(1)
        vine_attack(2)
        vine_attack(3)
        break;
    }
    player_id.strong_draw_y = strong_y
    player_id.strong_draw_x = strong_x
    
    if strong_index == 0 && visible {
        visible = false
        sound_play(asset_get("sfx_syl_nspecial_flowerhit"))
        spawn_hit_fx(x, y, player_id.vfx_wood_small)
        //spawn_hit_fx(x, y, 17)
    }
    
    if !(player_id.state == PS_ATTACK_GROUND && player_id.attack == attack && player_id.window < 3) {
        set_state(PS_DEAD)
    }
    break;
    
    case PS_HITSTUN: //hit by hitbox in vine attack
    
    break;
    
    case PS_DEAD: //dead state
    if mark_id mark_id.arb_marked = false
    instance_destroy();
    exit;
    break;
}

if !hitstop state_timer++
if !hitstop window_timer++
if hitstop > 0 hitstop--

//increment count
if state != PS_DEAD player_id.seed_count++;
if state != PS_DEAD && state != PS_WRAPPED player_id.ground_seed_count++;

if draw_vine {
    var target_id = state == PS_WAVELAND ? other_seed_id : seeker_id
    if target_id == undefined || !instance_exists(target_id) {
        set_state(PS_DEAD)
        exit;
    }
    seg_length = 100
    seg_parts = 4
    vinedist = point_distance(x, y, target_id.x, target_id.y)
    vinedir = point_direction(x, y, target_id.x, target_id.y)
    num_segs = ceil(vinedist*seg_parts/seg_length)
    seg_xdist = seg_length*dcos(vinedir)/seg_parts
    seg_ydist = -seg_length*dsin(vinedir)/seg_parts
}

if ("destroyed" in self) && destroyed {
    instance_destroy(self);
    exit;
}

#define set_state(s)
state = s
state_timer = 0
return;
#define vine_attack(hnum)

with player_id {
    var trigger_window = get_hitbox_value(other.attack, hnum, HG_WINDOW);
    var trigger_frame = get_hitbox_value(other.attack, hnum, HG_WINDOW_CREATION_FRAME);
    var window_length = get_window_value(other.attack, window, AG_WINDOW_LENGTH) * (get_window_value(other.attack, window, AG_WINDOW_HAS_WHIFFLAG) ? 1.5 : 1);
    var hbox_w = get_hitbox_value(other.attack, hnum, HG_WIDTH);
    var hbox_h = get_hitbox_value(other.attack, hnum, HG_HEIGHT);
}

if ((trigger_frame == 0 && window == trigger_window-1 && window_timer == window_length-1) || (window == trigger_window && window_timer == trigger_frame-1)) && !hitpause {
    var displacement_x = player_id.spr_dir*(strong_x-player_id.x)
    var displacement_y = strong_y-player_id.y
    with player_id {
        var old_x = get_hitbox_value(other.attack, hnum, HG_HITBOX_X);
        var old_y = get_hitbox_value(other.attack, hnum, HG_HITBOX_Y);
        
        set_hitbox_value(other.attack, hnum, HG_HITBOX_X, displacement_x + old_x);
        set_hitbox_value(other.attack, hnum, HG_HITBOX_Y, displacement_y + 3 + old_y);
    }
    /*
    var hitbox = create_hitbox(attack, hnum, x, y)
        hitbox.spr_dir = strong_dir
    */
}
return;

#define spawn_vine()
//double vine attack
var vine_dir = point_direction(x, y, other_seed_id.x, other_seed_id.y)
var vine_len = point_distance(x, y, other_seed_id.x, other_seed_id.y)
var vine = instance_create(x, y, "obj_article2")
    vine.startx = x
    vine.starty = y
    vine.endx = other_seed_id.x
    vine.endy = other_seed_id.y
    vine.image_angle = vine_dir
    vine.image_xscale = vine_len/200
    vine.image_yscale = 0.1
return;

#define floor_check()
var block = place_meeting(x, y+8, asset_get("par_block"))
var plat = place_meeting(x, y+8, asset_get("par_jumpthrough"))

if !block && !plat {
    surface = noone;
    surface_x = undefined
    surface_y = undefined
    var hbox = create_hitbox(AT_NSPECIAL, 1, x, y)
        hbox.vsp = 0
        hbox.hsp = 0
    destroyed = true
} else {
    vsp = 0
    hsp = 0
    if surface == noone surface = block != false ? instance_place(x, y+8, asset_get("par_block")) : instance_place(x, y+8, asset_get("par_jumpthrough"))
    if surface_x == undefined surface_x = get_instance_x(surface) - x
    if surface_y == undefined surface_y = get_instance_y(surface) - y
    
    x = get_instance_x(surface) - surface_x
    y = get_instance_y(surface) - surface_y
}