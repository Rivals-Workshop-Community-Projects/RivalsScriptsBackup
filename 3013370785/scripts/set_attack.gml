//set_attack

if attack == AT_USPECIAL {
    reset_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED);
    reset_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START);
    reset_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START);
    ascend_plat = undefined
    ascend_burrowing = false
    ascend_burrowing_timer = 0
}

fuse_attack_activated = false
if attack == AT_FAIR {
    reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
}
if attack == AT_FSPECIAL {
    from_fspec = false
    fspec_jump = false
    fuse_attack = false
    if fuse_item != 0 && move_cooldown[AT_FSPECIAL] == 0 {
        sound_play(sound_get("ScraBuild_Cling_00"), false, noone, 0.5)
        switch fuse_item {
            case 3: //bomb
            sound_play(sound_get("fuse"))
            break;
        }
        fuse_attack = true
    }
} else if attack != AT_NSPECIAL {
    if from_fspec {
        stop_sounds = true
        fuse_item = 0
    }
    from_fspec = false
}

if attack == AT_USTRONG {
    ustrong_grabbing = false
    ustrong_distance_x = 0
    ustrong_distance_y = 0
    ustrong_reticle_x = 0
    ustrong_reticle_y = 0
    ustrong_draw_alpha = 0
    reset_window_value(AT_USTRONG, 4, AG_WINDOW_GOTO);
    
    with oPlayer if id != other.id && totk_ustrong_grabbed_id == other.id totk_ustrong_grabbed_id = noone
}

if attack == AT_DSTRONG {
    dstrong_earthwake_dist = 1
    reset_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO);
}

if item_exists() != undefined {
    if attack == AT_DSPECIAL {
        attack = AT_DSPECIAL_2
    }
}

if attack == AT_DSPECIAL {
    if move_cooldown[AT_DSPECIAL] == 0 {
        if fuse_item == 0 {
            //draw_practice_text = true
            attack = AT_NSPECIAL_2
        } else {
            //draw_practice_text = false
            item_spawn_x = x + 50*spr_dir
            item_spawn_y = y - 120
            
            item_cur_x = x
            item_cur_y = y - 40
            item_draw_x = x
            item_draw_y = y - 40
            ultrahand_draw_alpha = 1
        }
    }
}
//get item
if attack == AT_NSPECIAL_2 {
    get_item_timer = 0
}

if attack == AT_NSPECIAL {
    if from_fspec {
        fuse_item = 0
        from_fspec = false
        stop_sounds = true
    }
    switch fuse_item {
        case 0: set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2) break;
        case 1: set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6) break;
        case 2: set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 14) break;
        case 3: set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 18) break;
        case 4: set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 22) break;
    }
    
    if fuse_item != 0 && move_cooldown[AT_NSPECIAL] == 0 {
        sound_play(sound_get("ScraBuild_Cling_00"), false, noone, 0.5)
    }
}

#define item_exists()
var returnid = undefined
with obj_article1 if player_id == other.id && ("totk_item" in self) && totk_item == true returnid = id
with obj_article_platform if player_id == other.id && ("totk_item" in self) && totk_item == true returnid = id
return returnid;