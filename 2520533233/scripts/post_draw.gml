//post-draw
if(attack==AT_USTRONG and state == PS_ATTACK_GROUND){
    if(window == 2){
        draw_sprite_ext(sprite_get("ustrong_hitbox"),floor(window_timer/3)+(charge_level*7), x, y, spr_dir, 1, 0, c_white, 1);
    } else if (window == 3){
        draw_sprite_ext(sprite_get("ustrong_hitbox"),3+floor(window_timer/4)+(charge_level*7), x, y, spr_dir, 1, 0, c_white, 1);
    }
}
if(attack == AT_FSTRONG and state == PS_ATTACK_GROUND){
    if(charge_level == 1){
        draw_sprite_ext(sprite_get("fstrong_lv2"),image_index, x, y, spr_dir*2, 2, 0, c_white, 1);
    } else if (charge_level == 2){
        draw_sprite_ext(sprite_get("fstrong_lv3"),image_index, x, y, spr_dir*2, 2, 0, c_white, 1);
    }
}

if(rock_lockout > 0 and rock_proj == noone){
    var dmg = get_player_damage(player);
    if(dmg < 10){
        draw_sprite(sprite_get("rock_lockout_icon"), (get_gameplay_time()/3%17), x+18, y - 98);
    } else {
        draw_sprite(sprite_get("rock_lockout_icon"), (get_gameplay_time()/3%17), x+22 + 8*floor(dmg/100), y - 98);
    }
    

}
//Muno Phone
user_event(12);