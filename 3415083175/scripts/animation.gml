

if fire_stance {
    switch state {
        case PS_IDLE: image_index = state_timer*idle_anim_speed break;
        case PS_WALK: image_index = state_timer*walk_anim_speed break;
        case PS_DASH: image_index = state_timer*dash_anim_speed break;
        
        default:
        break;
    }
}

if sprite_index == sprite_get("jump_fire") && image_index >= 6 {
    image_index = 6 + (floor(state_timer/4) mod 8)
}

if state_attacking && attack == AT_DSTRONG {
    if window == 2 {
        image_index = 4 + (floor((state_timer/4)+3) mod 6)
    }
    if has_hit && window == 4 {
        if image_index == 12 image_index = 13
    }
}

if state_attacking && attack == AT_FSTRONG {
    if window == 2 {
        image_index = 3 + (floor((state_timer/4)+3) mod 6)
    }
}

if state_attacking && attack == AT_NSPECIAL {
    if window == 3 {
        var index_offset = 9
        
        if hsp*spr_dir > 3 {
            index_offset = 15
        } else if hsp*spr_dir > 2 {
            index_offset = 12
        } else if hsp*spr_dir < -3 {
            index_offset = 3
        } else if hsp*spr_dir < -2 {
            index_offset = 6
        } 
        image_index = index_offset + (floor(state_timer/4) mod 3)
        
    }
}

if state_attacking && attack == AT_USPECIAL {
    switch uspec_angle {
        case 0: case 180:
        sprite_index = sprite_get("uspecial_forward")
        hurtboxID.sprite_index = sprite_get("uspecial_forward_hurt")
        break;
        
        case 90:
        sprite_index = sprite_get("uspecial")
        hurtboxID.sprite_index = sprite_get("uspecial_hurt")
        break;
        
        case 45: case 135:
        sprite_index = sprite_get("uspecial_diagonal")
        hurtboxID.sprite_index = sprite_get("uspecial_diagonal_hurt")
        break;
    }
}

//intro anim
var intro_time = get_gameplay_time();
//if player == 1 intro_time = clamp(get_gameplay_time() - 300, 0, 10000000);
var intro_frames = 17;
var intro_length = 85;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames));
}
if intro_time == 16 sound_play(sound_get("intro"))
if intro_time == 36 sound_play(asset_get("sfx_zetter_fireball_fire"))
if intro_time == 46 sound_play(asset_get("sfx_kragg_rock_shatter"))
/*
if intro_time == 40 {
    sound_play(asset_get("sfx_land"))
    spawn_base_dust(x, y, "land", spr_dir)
}
*/

if intro_time <= 60 draw_indicator = intro_time == 60;
if intro_time >= 60 && intro_time < 80 {
    char_height = ease_expoOut(140, 60, intro_time - 60, 20)
}