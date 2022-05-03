//set_attack


if special_pressed && joy_pad_idle {
    fs_force_fs = true;
}

switch attack {
    case AT_FSTRONG:
    case AT_DSTRONG:
    piece = "K";
    break;
    
    case AT_DATTACK:
    case AT_DAIR:
    case AT_USTRONG:
    piece = "R";
    break;
    
    case AT_UTILT:
    case AT_UAIR:
    piece = "B";
    break;
    
    case AT_FAIR:
    case AT_FTILT:
    piece = "N";
    //piece = "U";
    break;
    
    case AT_BAIR:
    case AT_DTILT:
    piece = queen_active && !(piece_id != undefined && instance_exists(piece_id) && piece_id.piece == "Q") ? "Q" : "P"
    break;
}

switch attack {
    case AT_NAIR:
    set_attack_value(AT_NAIR, AG_SPRITE, sprite_get(piece + "nair"));
    set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get(piece + "nair_hurt"));
    switch piece {
        case "P":
        set_window_value(AT_NAIR, 1, AG_WINDOW_GOTO, 2);
        break;
        
        case "B": case "N": case "R":
        set_window_value(AT_NAIR, 1, AG_WINDOW_GOTO, 3);
        break;
        
        case "Q": case "K":
        set_window_value(AT_NAIR, 1, AG_WINDOW_GOTO, 4);
        break;
    }
    break;
    
    case AT_JAB:
    set_attack_value(AT_JAB, AG_SPRITE, sprite_get(piece + "jab"));
    set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get(piece + "jab_hurt"));
    for (var i = 1; i < 7; i++) {
        reset_hitbox_value(AT_JAB, i, HG_WINDOW);
    }
    switch piece {
        case "P": set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2) break;
        case "N": set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2) break;
        case "B": set_hitbox_value(AT_JAB, 3, HG_WINDOW, 2) break;
        case "R": set_hitbox_value(AT_JAB, 4, HG_WINDOW, 2) break;
        case "K": set_hitbox_value(AT_JAB, 5, HG_WINDOW, 2) break;
        case "Q": set_hitbox_value(AT_JAB, 6, HG_WINDOW, 2) break;
    }
    break;
    
    case AT_DTILT:
    if queen_active && !(piece_id != undefined && instance_exists(piece_id) && piece_id.piece == "Q") {
        set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("Qdtilt"));
        set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("Qdtilt_hurt"));
        set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 69);
        set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
    } else {
        reset_attack_value(AT_DTILT, AG_SPRITE);
        reset_attack_value(AT_DTILT, AG_HURTBOX_SPRITE);
        reset_hitbox_value(AT_DTILT, 1, HG_WINDOW);
        reset_hitbox_value(AT_DTILT, 2, HG_WINDOW);
    }
    break;
    
    case AT_BAIR:
    if queen_active && !(piece_id != undefined && instance_exists(piece_id) && piece_id.piece == "Q") {
        set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("Qbair"));
        set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("Qbair_hurt"));
        set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 69);
        set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
    } else {
        reset_attack_value(AT_BAIR, AG_SPRITE);
        reset_attack_value(AT_BAIR, AG_HURTBOX_SPRITE);
        reset_hitbox_value(AT_BAIR, 1, HG_WINDOW);
        reset_hitbox_value(AT_BAIR, 2, HG_WINDOW);
    }
    break;
    
    //case AT_TAUNT: piece = "Q" break;
}

if attack == AT_NSPECIAL && move_cooldown[AT_NSPECIAL] <= 1 {
    if special_counter == 1 {
        if !(piece_id != undefined && piece_id.perform_attack && piece_id.piece != 'K') {
            if piece_id != undefined sound_play(asset_get("sfx_ori_ustrong_charge"))
            else sound_play(sound_get("lmao"))
            swap_timer = 10;
        }
    }
}

if attack == AT_USPECIAL {
    set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);
    if piece == "P" {
        set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("idle"));
    } else {
        set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get(piece + "idle"));
    }
}

if attack == AT_FSPECIAL {
    switch piece {
        case "P":
        if pawn_meter == 7 && !(piece_id != undefined && piece_id.piece == "Q") attack = AT_DTHROW
        else if special_counter == 1 {
            sound_play(sound_get("lol"))
            shake_timer = 10;
        }
        break;
        case "N": attack = AT_UTHROW break;
        case "B": attack = AT_DSPECIAL_2 break;
        case "R": attack = AT_NSPECIAL_2 break;
        case "Q": attack = AT_FSPECIAL_2 break;
        case "K": if special_counter == 2 && !king_armour && armour_cooldown == 0 {
            king_armour = true;
            armour_timer = 0;
            sound_play(asset_get("sfx_metal_hit_strong"))
        }
        break;
    }
}

if attack == AT_DSPECIAL {
    if special_counter == 1 {
        if piece_id != undefined && instance_exists(piece_id) && !piece_id.perform_attack && piece_id.not_hitpause_timer > 20 && !piece_id.gonnadie && !(piece_id.piece == "B" && piece_id.bishop_cooldown < 120) {
            piece_id.perform_attack = true;
            piece_id.attack_timer = 0;
            piece_id.window_timer = 0;
        }
    }
}

if attack == AT_NSPECIAL || attack == AT_DSPECIAL {
    if special_counter == 1 && piece_id != undefined && instance_exists(piece_id) {
        piece_id.progress_attack = true;
    }
}

user_event(0)

//TRAILER STUFF, DELETE LATER
/*
if attack_counter == 0 {
    with oPlayer {
        if id != other.id {
            other.trailer_timer = 0;
            other.trailer_phase++;
        }
    }
}
*/