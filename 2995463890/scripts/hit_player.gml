// if my_hitboxID == bullet_obj and bullet_obj.bullet_state == PS_FROZEN {
//     window = 3;
//     window_timer = 0;
// }
hit_player_obj.hanged_grabbed_id = noone;
switch (my_hitboxID.attack) {
    case AT_NSPECIAL:
        switch my_hitboxID.hbox_num {
            case 1:
                move_cooldown[AT_NSPECIAL] = 30;
                
                if my_hitboxID.enemies == 0 
                {
                    var storage = create_hitbox(AT_NSPECIAL, 3, -1290, -290)
                    storage.bullet_points = my_hitboxID.bullet_points
                    // storage.width_decay = my_hitboxID.width_decay
                    // storage.alpha_decay = my_hitboxID.alpha_decay
                    //ds_list_add(bullets, storage)
                }
                else {
                    my_hitboxID.hitbox_timer = my_hitboxID.length - 30
                }
            break;
            case 2:
                sound_play(asset_get("sfx_waterhit_heavy"), false, noone, 0.8, 1.1);
            break;
        }
    break;
    case AT_UAIR:
        if has_rune("A") {
            djumps = max(0, djumps - 1);
        }
    break
    case AT_FSPECIAL:
    if my_hitboxID.hbox_num == 2 {
        sound_play(sound_get("sfx_bottle_break"))
        sound_play(sound_get("sfx_water_hit"))
        
        if !my_hitboxID.was_parried and my_hitboxID.can_create_puddle instance_create(my_hitboxID.x,my_hitboxID.y-10, "obj_article1")
    }
    break;
    case AT_DSPECIAL:
        switch (my_hitboxID.hbox_num) {
            case 1:
                if !hit_player_obj.super_armor {
                    hit_player_obj.hanged_grabbed_id = puddle_obj;
                }
                puddle_obj.has_grabbed = true;
            break;
        }
    break;
}