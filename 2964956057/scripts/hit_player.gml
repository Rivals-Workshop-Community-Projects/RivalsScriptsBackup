// prevents script from running when the hitbox isn't yours
if my_hitboxID.orig_player_id != self{
    exit;
}

// checks if you would beat soft armor use this
var check_kb = get_kb_formula(get_player_damage( hit_player_obj.player ), hit_player_obj.knockback_adj, 1.0, my_hitboxID.damage, my_hitboxID.kb_value, my_hitboxID.kb_scale);

switch(my_hitboxID.attack){
    case AT_FTILT:
        sound_play(asset_get("sfx_clairen_hit_med"), false, noone, 0.8, 1.2);
        sound_play(asset_get("sfx_propeller_dagger_draw"), false, noone, 1, 1.3);
    break;
    case AT_DTILT:
        //sound_play(asset_get("sfx_tow_anchor_start"), false, noone, 0.4, 1.35);
        sound_play(asset_get("sfx_blow_medium2"), false, noone, 1, 0.8);
        sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.8, 0.8);
    break;
    case AT_UTILT:
        if instance_exists(hit_player_obj) && !hit_player_obj.clone && !hit_player_obj.super_armor && hit_player_obj.soft_armor < check_kb {
            hit_player_obj.x = lerp(hit_player_obj.x, x, 0.1);
        }
    break;
    case AT_DSTRONG:
        sound_play(asset_get("sfx_ori_energyhit_medium"));
        sound_play(asset_get("sfx_shovel_dig"));
        var dstrong_hb = spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height / 2, vfx_panbg_energy_hit );
        create_hitbox( AT_DSTRONG, 2, dstrong_hb.x + 36 * dstrong_hb.spr_dir, dstrong_hb.y + 36);
    break;
    case AT_FSTRONG:
        if my_hitboxID.hbox_num != 3{
            //sound_play(asset_get("sfx_ori_energyhit_medium"));
            //sound_play(asset_get("sfx_shovel_dig"));
            var fstrong_hb = spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height / 2, vfx_fstrongbg_energy_hit );
            create_hitbox( AT_FSTRONG, 4, fstrong_hb.x + 36 * fstrong_hb.spr_dir, fstrong_hb.y + 36);
        }
    break;
    case AT_USTRONG:
        switch my_hitboxID.hbox_num{
            case 1: // Main
                sound_play(asset_get("sfx_plant_eat"), false, noone, 1, 1);
                sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1, 0.9);
                hit_player_obj.flowey_ustrong_quick_grab = self;
            break;
            case 2: case 3: // Catchers
                sound_play(asset_get("sfx_leafy_hit1"), false, noone, 0.7, 1.15);
                hit_player_obj.flowey_ustrong_quick_grab = noone;
                if instance_exists(hit_player_obj) && !hit_player_obj.clone && !hit_player_obj.super_armor && hit_player_obj.soft_armor < check_kb{
                    hit_player_obj.x = lerp(hit_player_obj.x, x, 0.15);
                }
            break;
        }
    break;
    case AT_NAIR:
        sound_play(asset_get("sfx_syl_dstrong"), false, noone, 0.9, 1.3);
    break;
    case AT_FAIR:
        switch my_hitboxID.hbox_num{
            case 1: // Spike
                sound_play(asset_get("sfx_leafy_hit2"), false, noone, 0.7, 1.1);
                sound_play(asset_get("sfx_orca_crunch"), false, noone, 0.7, 0.7);
                sound_play(asset_get("sfx_ori_bash_use"));
                sound_play(asset_get("sfx_absa_uair"), false, noone, 0.6, 0.8);
            break;
            case 2:
                sound_play(asset_get("sfx_leafy_hit3"), false, noone, 0.85, 0.9);
                sound_play(asset_get("sfx_orca_crunch"), false, noone, 0.8, 1.1);
                sound_play(asset_get("sfx_ori_bash_use"));
                sound_play(asset_get("sfx_absa_uair"), false, noone, 0.7, 0.8);
            break;
            case 3:
                sound_play(asset_get("sfx_leafy_hit3"), false, noone, 0.85, 0.9);
                sound_play(asset_get("sfx_orca_crunch"), false, noone, 0.8, 1.1);
            break;
        }
    break;
    case AT_BAIR:
        sound_play(asset_get("sfx_leafy_hit" + string(my_hitboxID.hbox_num)));
        sound_play(sound_get("unt_slice_short"), false, noone, 0.9, 1.15);
    break;
    case AT_UAIR:
        switch my_hitboxID.hbox_num{
            case 1: // Spike
                sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.7, 1.6);
                sound_play(asset_get("sfx_clairen_hit_med"), false, noone, 0.6, 1.5);
                break;
            case 2:
                sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.7, 1.6);
                sound_play(asset_get("sfx_clairen_hit_med"), false, noone, 0.6, 1.5);
                break;
            case 3:
                sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.7, 1.9);
                sound_play(asset_get("sfx_clairen_hit_med"), false, noone, 0.6, 2);
                break;
        }
        if instance_exists(hit_player_obj) && !hit_player_obj.clone && !hit_player_obj.super_armor && hit_player_obj.soft_armor < check_kb{
            hit_player_obj.x = lerp(hit_player_obj.x, x, 0.1);
            hit_player_obj.y = lerp(hit_player_obj.y, y - 40, 0.15);
        }
    break;
    case AT_DAIR:
        switch my_hitboxID.hbox_num{
            case 1:
            sound_play(asset_get("sfx_tow_anchor_start"), false, noone, 0.3, 1.35);
            sound_play(asset_get("sfx_blow_medium2"), false, noone, 0.3, 0.9);
            old_hsp /= 2;
            old_vsp = (check_kb * 0.7) * -1;
        break;
            case 2:
            sound_play(asset_get("sfx_tow_anchor_start"), false, noone, 0.3, 1.35);
            sound_play(asset_get("sfx_blow_medium3"), false, noone, 0.5, 1.2);
            old_hsp /= 2;
            old_vsp = (check_kb * 0.6) * -1;
        break;
        }
    break;
    case AT_NSPECIAL:
        if my_hitboxID.hbox_num == 2{
            instance_destroy(flowey_save);
            flowey_save = instance_create(my_hitboxID.x, my_hitboxID.y + 4, "obj_article1");
        }
    break;
    case AT_FSPECIAL:
        if my_hitboxID.hbox_num == 1 && !instance_exists(grabp){
            if my_hitboxID.hitbox_timer <= 20 my_hitboxID.hitbox_timer += 40 - my_hitboxID.hitbox_timer * 2;
            grabp = hit_player_obj;
        }
        if has_rune("E") && my_hitboxID.hbox_num == 2{
            fspecial_rune_kill = create_hitbox(AT_FSPECIAL, 5, x + (25 * spr_dir), y - 40);
        }
        has_grab = 1;
        sound_play(asset_get("sfx_leafy_hit2"));
    break;
    case AT_DSPECIAL:
        sound_play(asset_get("sfx_swipe_weak1"), false, noone, 1.3, 0.8);
        sound_play(asset_get("sfx_clairen_fspecial_slash"), false, noone, 0.6, 0.6);
        sound_play(asset_get("sfx_blow_heavy1"), false, noone, 1.2);
    break;
}