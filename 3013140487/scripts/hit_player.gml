if anti_cheapie_mode && (my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_NSPECIAL){
    hitpause = 40;
    hit_player_obj.hitpause = 40;
    death_target = hit_player_obj;
    hit_pos = my_hitboxID.y;
    shake_camera(10, 40);
    death_timer = 40;
}

switch my_hitboxID.attack{
    case AT_FSPECIAL:
    if my_hitboxID.hbox_num == 1 { 
        if hit_player_obj.state_cat == SC_HITSTUN { 
            grappled = hit_player_obj; 
            has_pulled = 0; 
        }
        set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 0);
    }
    if my_hitboxID.hbox_num == 2{
        has_pulled = 1;
        if has_rune("B"){
            hit_player_obj.x = my_hitboxID.x;
            hit_player_obj.y = my_hitboxID.y + hit_player_obj.char_height/2;
        } 
    } 
    break;
    
    case AT_NAIR:
    case AT_DATTACK:
    if my_hitboxID.hbox_num == 1 {
        my_hitboxID.can_hit[hit_player_obj.player] = 1;
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, my_hitboxID.hit_effect);
        sound_play(asset_get("sfx_flareo_rod"));
    }else sound_play(asset_get("sfx_forsburn_reapper_hit"));
    break;
    
    case AT_FSTRONG:
    if my_hitboxID.hbox_num == 1 sound_play(asset_get("sfx_forsburn_combust"));
    else sound_play(asset_get("sfx_forsburn_reappear_hit"));
    break;
    
    case AT_UTILT:
    case AT_BAIR:
    case AT_FAIR:
    case AT_NSPECIAL:
    case AT_NSPECIAL_2:
    if (my_hitboxID.attack == AT_BAIR? my_hitboxID.hbox_num == 2: 1 || my_hitboxID.attack == AT_NSPECIAL? my_hitboxID.hbox_num == 1: 2 || my_hitboxID.attack == AT_NSPECIAL_2? my_hitboxID.hbox_num == 1: 2) sound_play(asset_get("sfx_forsburn_combust"));
    if (my_hitboxID.damage == 2 && my_hitboxID.attack == AT_NSPECIAL) knife_stuck = hit_player_obj;
    if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 2) sound_play(asset_get("sfx_blow_heavy2"), 0, noone, 1, 1.4);
    break;
}
if((my_hitboxID.attack != AT_NSPECIAL || my_hitboxID.damage != 2) && knife_stuck == hit_player_obj) {
    knife_stuck = noone;
}
if(hit_player_obj == revenge_target){
    revenge_target = noone;
}
if(revenge_active && my_hitboxID.type == 1 && my_hitboxID.kb_scale > .1 && hit_player_obj.state_cat == SC_HITSTUN && hit_player_obj.orig_knock > hit_player_obj.soft_armor && !hit_player_obj.super_armor && !anti_cheapie_mode){
    revenge_target = hit_player_obj;
    revenge_strong_charge = strong_charge;
    hit_player_obj.hitstop = 30;
    hit_player_obj.hitstop_full = 30;
    revenge_damage = my_hitboxID.damage;
    revenge_active = false;
    hit_player_obj.should_make_shockwave = false;
    hit_player_obj.orig_knock /= hit_player_obj.knockback_scaling;
    sound_play(asset_get("sfx_abyss_explosion_start"));
}