#region // Variables
var hitmove = my_hitboxID.attack;
var hitmove_box = my_hitboxID.hbox_num;
var _hitplayer_dmg = get_player_damage(hit_player_obj.player);
#endregion

switch(hitmove){
    case AT_FTILT:
        switch(hitmove_box){
            case 2:
                hit_player_obj.wren_riptide_id = id;
                wren_enemy_riptide_id = hit_player_obj.id;
                hit_player_obj.wren_stacks += 1;
                break;
            case 3:
                wren_wave.hitstop = floor(get_hitstop_formula(get_player_damage(hit_player_obj.player),
                my_hitboxID.damage, my_hitboxID.hitpause, my_hitboxID.hitpause_growth,
                my_hitboxID.extra_hitpause));
                //hit_player_obj.x = wren_wave.x + hsp;
                //hit_player_obj.y = wren_wave.y;
                wren_wave.wave_hitplayer = true;
                hit_player_obj.wren_riptide_id = id;
                wren_enemy_riptide_id = hit_player_obj.id;
                hit_player_obj.should_make_shockwave = false;
                break;
            case 4:
                hit_player_obj.wren_riptide_id = id;
                wren_enemy_riptide_id = hit_player_obj.id;
                hit_player_obj.wren_stacks += 1;
                break;
        }
        break;
    case AT_DTILT:
        switch(hitmove_box){
            case 2:
            case 3:
                hit_player_obj.wren_riptide_id = id;
                wren_enemy_riptide_id = hit_player_obj.id;
                hit_player_obj.wren_stacks += 1;
                break;
        }
        break;
    case AT_FSTRONG:
        switch(hitmove_box){
            case 6:
                hit_player_obj.hitstop_full = ext_sweet_hitstop(2);
                hit_player_obj.wren_riptide_id = id;
                wren_enemy_riptide_id = hit_player_obj.id;
                hit_player_obj.wren_stacks += 1;
                break;
        }
        break;
    case AT_USTRONG:
        switch(hitmove_box){
            case 3:
                hit_player_obj.hitstop_full = ext_sweet_hitstop(2);
                hit_player_obj.wren_riptide_id = id;
                wren_enemy_riptide_id = hit_player_obj.id;
                hit_player_obj.wren_stacks += 1;
                break;
        }
        break;
    case AT_DSTRONG:
        switch(hitmove_box){
            case 6:
                hit_player_obj.hitstop_full = ext_sweet_hitstop(5);
                hit_player_obj.wren_riptide_id = id;
                wren_enemy_riptide_id = hit_player_obj.id;
                hit_player_obj.wren_stacks += 1;
                break;
        }
        break;
    case AT_UAIR:
        switch(hitmove_box){
            case 1:
            case 2:
            case 3:
            case 4:
                if fast_falling{
                    hit_player_obj.old_vsp = (old_vsp * .5);
                }
                hit_player_obj.should_make_shockwave = false;
                break;
            case 5:
                hit_player_obj.wren_riptide_id = id;
                wren_enemy_riptide_id = hit_player_obj.id;
                hit_player_obj.wren_stacks += 1;
                break;
        }
        break;
    case AT_NSPECIAL_2:
        hit_player_obj.wren_riptide_id = id;
        wren_enemy_riptide_id = hit_player_obj.id;
        hit_player_obj.wren_stacks += 1;
        break;
    case AT_USPECIAL:
        hit_player_obj.wren_riptide_id = id;
        wren_enemy_riptide_id = hit_player_obj.id;
        switch(hitmove_box){
            default:
                hit_player_obj.should_make_shockwave = false;
                break;
            case 5:
                hit_player_obj.wren_stacks += 1;
                break;
        }
        if hitmove_box < 5 and hit_player_obj.hitpause{
            old_hsp = 0;
            hit_player_obj.x = (x + 8 + get_hitbox_value(AT_USPECIAL, hitmove_box, HG_HITBOX_X) * spr_dir);
            hit_player_obj.y = y + (get_hitbox_value(AT_USPECIAL, hitmove_box, HG_HITBOX_Y) / 2);
        }
        break;
    case AT_USPECIAL_GROUND:
        hit_player_obj.wren_riptide_id = id;
        wren_enemy_riptide_id = hit_player_obj.id;
        switch(hitmove_box){
            default:
                hit_player_obj.should_make_shockwave = false;
                break;
            case 4:
                hit_player_obj.wren_stacks += 1;
                break;
        }
        if hitmove_box < 4 and hit_player_obj.hitpause{
            old_hsp = 0;
            hit_player_obj.x = (x + 8 + get_hitbox_value(AT_USPECIAL_GROUND, hitmove_box, HG_HITBOX_X) * spr_dir);
            hit_player_obj.y = y + (get_hitbox_value(AT_USPECIAL, hitmove_box, HG_HITBOX_Y) / 2);
        }
        break;
    case AT_FSPECIAL:
        hit_player_obj.hitstop_full = ext_sweet_hitstop(3);
        break;
    case AT_DSPECIAL:
        hit_player_obj.hitstop_full = ext_sweet_hitstop(hitmove_box);
        switch(hitmove_box){
            case 1:
                hit_player_obj.x = wren_yoyo.x;
                hit_player_obj.y = wren_yoyo.y;
                hit_player_obj.should_make_shockwave = false;
                break;
            case 2:
                hit_player_obj.wren_riptide_id = id;
                hit_player_obj.wren_caught_cooldown = 20;
                hit_player_obj.wren_stacks += 1;
                wren_enemy_riptide_id = hit_player_obj.id;
                break;
        }
        if instance_exists(wren_yoyo){
            wren_yoyo.hitstop = ext_sweet_hitstop(hitmove_box);
        }
        break;
    case AT_DSPECIAL_2:
        hit_player_obj.should_make_shockwave = false;
        if hit_player_obj.wren_caught_cooldown == 0 and hit_player_obj.wren_stacks > 2{
            hit_player_obj.wren_caught = true;
        }
        break;
}

#define ext_sweet_hitstop(_hitbox)
get_hitstop_formula(get_player_damage(hit_player_obj.player),
get_hitbox_value(my_hitboxID.attack, _hitbox, HG_DAMAGE),
get_hitbox_value(my_hitboxID.attack, _hitbox, HG_BASE_HITPAUSE),
get_hitbox_value(my_hitboxID.attack, _hitbox, HG_HITPAUSE_SCALING),
get_hitbox_value(my_hitboxID.attack, _hitbox, HG_EXTRA_HITPAUSE));