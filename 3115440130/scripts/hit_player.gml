//hit_player

switch my_hitboxID.attack {
    case AT_USTRONG:
    /*
    if my_hitboxID.hbox_num == 1 {
        hit_player_obj.rhy_ustrong_id = id
    }
    */
    if my_hitboxID.hbox_num == 5 {
        //sound_play(asset_get("sfx_absa_kickhit"))
        sound_play(asset_get("sfx_forsburn_combust"))
        sound_play(asset_get("sfx_burnconsume"))
        //spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 197)
    }
    break;
    
    case AT_FSTRONG:
    if my_hitboxID.hbox_num == 2 {
        sound_play(asset_get("sfx_forsburn_combust"))
        sound_play(asset_get("sfx_burnconsume"))
    }
    break;
    
    case AT_FSPECIAL:
    if my_hitboxID.hbox_num == 1 {
        fspec_hit = true
    }
    if my_hitboxID.hbox_num == 2 {
        sound_play(asset_get("sfx_flareo_rod"))
    }
    
    if my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4 {
        //sound_play(asset_get("sfx_absa_kickhit"))
        //sound_play(asset_get("sfx_kragg_rock_shatter"))
        sound_play(asset_get("sfx_forsburn_combust"))
        sound_play(asset_get("sfx_burnconsume"))
        //spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, HFX_KRA_ROCK_HUGE)
    }
    break;
    
    case AT_USPECIAL:
    if my_hitboxID.hbox_num == 2 {
        //spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, HFX_KRA_ROCK_HUGE)
    }
    break;
    
    case AT_DAIR:
    if my_hitboxID.hbox_num == 1 {
        //sound_play(asset_get("sfx_ell_drill_stab"))
    }
    break;
    
    //big eruption hitbox
    case AT_EXTRA_1:
    if my_hitboxID.hbox_num == 2 {
        sound_play(asset_get("sfx_forsburn_combust"))
        sound_play(asset_get("sfx_zetter_upb_hit"))
        //sound_play(asset_get("sfx_burnconsume"))
    }
    break;
    
    
    case AT_NAIR:
    sound_play(asset_get("sfx_zetter_upb_hit"))
    //spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, HFX_ZET_FIRE)
    break;
    
    case AT_UAIR:
    sound_play(asset_get("sfx_zetter_upb_hit"))
    break;
    
    case AT_UTILT:
    sound_play(asset_get("sfx_flareo_rod"))
    break;
    
    case AT_JAB:
    if my_hitboxID.hbox_num == 3 {
        sound_play(asset_get("sfx_flareo_rod"))
    }
    break;
    
    case AT_DATTACK:
    if my_hitboxID.hbox_num == 2 {
        sound_play(asset_get("sfx_zetter_upb_hit"))
    }
    break;
    
    case AT_BAIR:
    if my_hitboxID.hbox_num == 2 {
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, HFX_GEN_BIG)
        sound_play(asset_get("sfx_zetter_upb_hit"))
    } else {
        sound_play(asset_get("sfx_flareo_rod"))
    }
    break;
    
}

hit_player_obj.rhyolis_bounce_timer = 0
hit_player_obj.rhyolis_on_fault = false

//charred status
/*
if my_hitboxID.attack == AT_NSPECIAL
|| my_hitboxID.attack == AT_EXTRA_1
{
    hit_player_obj.rhy_charred_id = id
    hit_player_obj.rhy_charred_timer = 0
}
*/