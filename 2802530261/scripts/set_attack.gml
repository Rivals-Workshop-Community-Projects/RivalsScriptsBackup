switch(attack){
    case AT_TAUNT:
    set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get(string(spr_dir) + "_taunt"));
    set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get(string(spr_dir) + "_taunt2"));
    if(up_down){
        attack = AT_TAUNT_2;
        break;
    }
    openmenu = true;
    items_select[0] = 0;
    items_select[1] = 0;
    items_select[2] = 0;
    items_select[3] = 0;
    items_select[4] = 0;
    items_select[5] = 0;
    break;
    case AT_DSPECIAL:
    ball_stop = true;
    set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get(string(spr_dir) + "_ball"));
    set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_ball_hurt"));
    ball_angle = 0;
    sprite_change_offset("1_ball", 24, 47);
    sprite_change_offset("-1_ball", 24, 47);
    power_charge = 0;
    break;
    case AT_USPECIAL:
    set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get(string(spr_dir) + "_uspecial"));
    set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_uspecial_hurt"));
    set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 10);
    set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 10);
    set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
    set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -44);
    break;
    case AT_FSTRONG:
    set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get(string(spr_dir) + "_fstrong"));
    set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_fstrong_hurt"));
    break;
    case AT_USTRONG:
    set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get(string(spr_dir) + "_ustrong"));
    set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_ustrong_hurt"));
    break;
    case AT_DSTRONG:
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get(string(spr_dir) + "_dstrong"));
    set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_dstrong_hurt"));
    break;
    case AT_UTILT:
    set_attack_value(AT_UTILT, AG_SPRITE, sprite_get(string(spr_dir) + "_utilt"));
    set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_utilt_hurt"));
    break;
    case AT_DTILT:
    sound_play(sound_get("slide"));
    set_attack_value(AT_DTILT, AG_SPRITE, sprite_get(string(spr_dir) + "_dtilt"));
    set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_dtilt_hurt"));
    break;
    case AT_FAIR:
    set_attack_value(AT_FAIR, AG_SPRITE, sprite_get(string(spr_dir) + "_fair"));
    set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_fair_hurt"));
    break;
    case AT_NAIR:
    sound_play(sound_get("screw_start"), false, false, 0.8);
    sound_play(sound_get("screw_loop"), false, false, 0.8);
    if(window_timer < 8){
        set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("somer"));
    }else{
        set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
    }
    break;
    case AT_FTILT:
    set_attack_value(AT_FTILT, AG_SPRITE, sprite_get(string(spr_dir) + "_ftilt"));
    set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_ftilt_hurt"));
    break;
    case AT_DATTACK:
    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get(string(spr_dir) + "_dattack"));
    set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_dattack_hurt"));
    break;
    case AT_DAIR:
    set_attack_value(AT_DAIR, AG_SPRITE, sprite_get(string(spr_dir) + "_dair"));
    set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_dair_hurt"));
    break;
    case AT_BAIR:
    set_attack_value(AT_BAIR, AG_SPRITE, sprite_get(string(spr_dir) + "_bair"));
    set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_bair_hurt"));
    break;
    case AT_FSPECIAL:
    set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_fspecial_hurt"));
    set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get(string(spr_dir) + "_fspecial_hurt_air"));
    break;
    case AT_UAIR:
    set_attack_value(AT_UAIR, AG_SPRITE, sprite_get(string(spr_dir) + "_uair"));
    set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_uair_hurt"));
    break;
    case AT_NSPECIAL:
    set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get(string(spr_dir) + "_nspecial"));
    set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get(string(spr_dir) + "_nspecial_air"));
    set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_nspecial_hurt"));
    set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get(string(spr_dir) + "_nspecial_air_hurt"));
    break;
    case AT_JAB:
    set_attack_value(AT_JAB, AG_SPRITE, sprite_get(string(spr_dir) + "_jab"));
    set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_jab_hurt"));
    break;
}