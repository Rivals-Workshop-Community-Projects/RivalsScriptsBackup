if attack == AT_DSPECIAL{
    if hbox_num == 1 {
        if !free {
            destroy_fx = 1
            // var temp_x = 0;
            // var max_temp_x = 16;
            // while (temp_x < max_temp_x
            // && (position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_block"))
            // || position_meeting(x+temp_x*spr_dir, y+2, asset_get("par_jumpthrough")))
            // && !position_meeting(x+temp_x*spr_dir, y-2, asset_get("par_block"))){
            //     temp_x++;
            // }
            //var puddle = instance_create(x + temp_x*spr_dir, y, "obj_article1");
            var puddle = instance_create(x, y, "obj_article1");
            destroyed = true
            puddle.spr_dir = spr_dir
        }
    }
    if hbox_num == 2{
        if was_parried{
            with obj_article1{
                if other.player_id == player_id{
                    state = 2
                }
        }
    }
}
}

if attack == AT_NSPECIAL && hit_priority != 1{
    with oPlayer{
        if other.orig_player == player{
        move_cooldown[AT_NSPECIAL] = 30
        }
    }
    
if hbox_num == 1 {
    var first_leaf_speed = 7.5
    var final_leaf_speed = 1
    //if !was_parried{
    hsp = lerp(first_leaf_speed * spr_dir, final_leaf_speed * spr_dir, hitbox_timer/length)
    //}
    with oPlayer{
        if other.orig_player == player && other.hitbox_timer mod 6 == 0{
            spawn_hit_fx(other.x , other.y, razor_leaf_fx)
        }
    }
    with obj_article1{
        if other.player_id == player_id && place_meeting(x,y,other){
            other.destroy_fx = 1
            var leaf = create_hitbox(AT_NSPECIAL, 2, other.x , other.y)
            leaf.hsp = 7*other.spr_dir
            leaf.spr_dir = other.spr_dir
//            leaf.hsp = other.hsp*1.5
            leaf.hitbox_timer = other.hitbox_timer
            other.destroyed = true;

        }
    }
}
if hbox_num == 2 {
    with oPlayer{
        if other.orig_player == player && other.hitbox_timer mod 6 == 0{
            spawn_hit_fx(other.x , other.y, poison_leaf_fx)
        }
    }
}
}

// if attack == AT_FSPECIAL && hbox_num == 1{
//     with oPlayer{
//         if other.orig_player == player{
//         move_cooldown[AT_FSPECIAL] = 60
//         }
//     }
//     if abs(hsp) > 0{
//     proj_angle -= 5*spr_dir + hsp
//     }
//     with pHitBox {
//         if other.player_id == player_id && attack == AT_NSPECIAL && hbox_num == 2{
//             if place_meeting(x,y, other){
//                 destroy_fx = 1
//                 destroyed = true
//                 other.destroyed = true
//                 sludgy_explosion()
//             }
//         }
//     }
//     with obj_article1{
//         if other.player_id == player_id && place_meeting(x,y,other){
//             state = 1
//             state_timer = 0
//             other.destroyed = true
//             sludgy_explosion()
//         }
//     }
// }

// #define sludgy_explosion()
// print_debug("ahh")