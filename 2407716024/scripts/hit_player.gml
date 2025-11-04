//hit_player.gml
var attack = my_hitboxID.attack;
var hbox = my_hitboxID.hbox_num;


switch (my_hitboxID.attack) 
{
    case AT_FTILT:
    if (hbox == 1) sound_play(asset_get("sfx_shovel_hit_light1"), false, noone, 0.5, 0.85);
    break;
    
    case AT_DTILT:
    sound_play(asset_get("sfx_tetherball_hit"), false, noone, 1, 1.1);
    break;
    
    case AT_NAIR:
    //fall slower to make combo chains easier.
    if (my_hitboxID.hbox_num > 1) {
        if (old_vsp <= max_fall) old_vsp = min(old_vsp, 2);
    }
    else {
        if (old_vsp <= max_fall) old_vsp = min(old_vsp, 2);
        peacock_can_nair_cancel = true;
    }
    if (hbox == 1) sound_play(asset_get("sfx_kragg_rock_land"), false, noone, .9, .9);
    break;
    
    case AT_FAIR:
    if (hbox == 1) 
    {
        sound_play(asset_get("sfx_zetter_downb"), false, noone, 1.1, 0.75);
    }
    sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 0.8, 0.4 );
    break;
    
    case AT_UAIR:
    if (my_hitboxID.hit_flipper == 9 && opponent_is_in_hitstun()) {
        hit_player_obj.old_vsp = -2;
        hit_player_obj.should_make_shockwave = false;
    }
    if (hbox == 1) 
    {
        sound_play(asset_get("sfx_icehit_weak1"), false, noone, 1, 1);
        if (!instance_exists(uair_borb))
        {
            uair_borb = instance_create(x + spr_dir * 28, y - 74, "obj_article2");
            uair_borb.spr_dir = spr_dir;
        }
    }
    break;
    
    case AT_DAIR:
    //counts as a melee hit and removes whifflag, but only if the opponent is stunned by it.
    if (opponent_is_in_hitstun()) 
    {
        has_hit = true;
        has_hit_player = true;
    }
    break;
    
    case AT_BAIR:
    if (hbox == 1) {
        sound_play(asset_get("sfx_waterhit_weak"), false, noone, .65, 1.6 );
    } else if (hbox == 2) {
        sound_play(asset_get("sfx_waterhit_weak"), false, noone, .65, 1.6 );
    }
    break;
    
    case AT_FSTRONG:
    sound_play(asset_get("sfx_syl_ustrong_part3"), false, noone, 0.95, 0.8);
    sound_play(asset_get("sfx_kragg_rock_land"), false, noone, 1.2, .6);
    break;
    
    case AT_USTRONG:
    sound_play(asset_get("sfx_tetherball_hit"), false, noone, 1.1, 0.8);
    break;
    
    case AT_DSTRONG:
    switch (hbox)
    {
        case 1:
        sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.5, 1.15);
        break;
        
        case 2:
        sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.5, 1.15);
        break;
        
        case 3:
        sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.4, 1);
        break;
    }
    break;
    
    case AT_NSPECIAL:
    //counts as a melee hit and removes whifflag, but only if the opponent is stunned by it AND peacock is still performing the nspecial animation.
    if (state == PS_ATTACK_GROUND && attack == AT_NSPECIAL && opponent_is_in_hitstun()) {
        has_hit = true;
        has_hit_player = true;
    }
    if (hbox == 1) sound_play(asset_get("sfx_zetter_upb_hit"), false, noone, 1, .85 );
    break;
    
    case AT_DSPECIAL:
    if (!instance_exists(peacock_article_doom_id)) break;
    switch (my_hitboxID.hbox_num) {
       case 1:
       case 2:
       case 3:
            var this_attack_hitbox_id = my_hitboxID;
            with (peacock_article_doom_id) {
                if (hitbox_id == this_attack_hitbox_id) {
                    article_hitlag = max(article_hitlag, hitbox_id.hitpause);
                }
            }
        break;
        case 4:
        case 5:
            if (opponent_is_in_hitstun()) {
                peacock_article_doom_id.grabbed_player_id_array[hit_player_obj.player] = hit_player_obj;
                peacock_article_doom_id.depth = -50;
            }
        break;
    }
    break;
    
    case AT_FTHROW:
    if (hbox == 1) sound_play(asset_get("sfx_hod_steam_sfx2_01"), false, noone, .8, 1.4);
    break;
}

dash_last_hit = hit_player_obj;

#define opponent_is_in_hitstun

return (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND);