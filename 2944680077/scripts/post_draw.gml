//postdraw

//shader_start();
//with pHitBox if player_id == other.id && attack == AT_NSPECIAL && hbox_num == 1 {
//    with player_id {
//        var rot = -other.hitbox_timer*32 * other.spr_dir
//        draw_sprite_ext(sprite_get("nspecial_fireball"), 3, other.x, other.y, 1, 1, other.proj_angle + rot, c_white, 1)
//    }
//}