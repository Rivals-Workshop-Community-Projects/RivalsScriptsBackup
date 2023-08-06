//articleplatform_update


//ignore platform jank code cuz dan moment
var collision_plat = place_meeting(x, y + vsp, asset_get("par_jumpthrough"))
if collision_plat && free && vsp >= 0 {
    temp_mask = mask_index
    mask_index = asset_get("empty_sprite")
} else if !collision_plat && temp_mask == mask_index {
    mask_index = temp_mask
    temp_mask = asset_get("empty_sprite")
}

switch item {
    case 1:
    sprite_index = sprite_get("item_homingcart")
    mask_index = sprite_get("item_homingcart_hurt")
    break;
    
    case 2:
    sprite_index = sprite_get("item_hoverstone")
    mask_index = sprite_get("item_hoverstone_hurt")
    break;
}

var is_standing = false
var link_standing = false
with oPlayer if position_meeting(x, y, other) && !free && y == other.y {
    is_standing = true
    totk_plat_id = other.id
    if id == other.player_id {
        link_standing = true
    }
}

//run code on all players standing on platform
with oPlayer if totk_plat_id == other.id {
    if !(position_meeting(x, y, other) && !free && y == other.y) {
        totk_plat_id = noone
    }
}

if !recall_active { //all item logic and timers should run only if recall is inactive
    if !is_ascend_plat timer++
    state_timer++
    y_offset = 0
    switch item {
        
        case 1: //homing cart
        y_offset = 15
        switch state {
            case 0: //airborne
            image_index = 1
            real_vsp = clamp(real_vsp + 0.4, -10000, 10)
            real_hsp *= 0.98
            
            if !free && !collision_plat {
                state++
                state_timer = 0
            }
            break;
            
            case 1: //idle, grounded
            image_index = 1
            real_vsp = 0
            real_hsp *= 0.8
            if state_timer >= 20 {
                state++
                state_timer = 0
                sound_play(sound_get("SpObj_Chaser_FindEnemy_06"), false, noone, 0.7)
                sound_play(sound_get("SpObj_Chaser_Move_01_2"), false, noone, 0.2)
                var hbox = create_hitbox(AT_DSPECIAL, 3, x, y)
                    hbox.owner_id = id
            }
            break;
            
            case 2: //moving
            image_index = 2 + (floor(state_timer/3) mod 4)
            if !free real_hsp = 3*spr_dir
            if free {
                sound_stop(sound_get("SpObj_Chaser_Move_01_2"))
                state = 0
                state_timer = 0
            }
            break;
        }
        break;
        
        case 2: //hoverstone
        y_offset = 10
        
        real_vsp *= 0.9
        real_hsp *= 0.9
        
        if is_standing {
            if free && timer > 30 real_vsp = 1
            image_index = 2
        } else {
            image_index = 1
        }
        
        if !free {
            destroy = true
        }
        
        break;
    }
    
    if is_ascend_plat {
        ascend_timer = 30
    } else {
        if ascend_timer > 0 ascend_timer--
    }
    
    if ascend_timer > 0 {
        real_hsp = 0
        real_vsp = 0
    }
    
    vsp = round(real_vsp)
    hsp = round(real_hsp)
}

//recall stuff
script = 1
user_event(0)

//timer destroy
if timer >= 450 {
    die = true
}

if recall_active || destroy {
    sound_stop(sound_get("SpObj_Chaser_Move_01_2"))
}

if destroy {
    with player_id spawn_hit_fx(other.x, other.y, 301)
    sound_play(sound_get("SpObj_Disappear_short"))
    instance_destroy();
    exit;
}

is_ascend_plat = false