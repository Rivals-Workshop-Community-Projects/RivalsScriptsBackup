// pre-draw

if ((state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) && attack == 49 && (window = 1 || window = 2)){
    draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, 555, 555, 0, c_black, 0.6)
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack == AT_FSPECIAL && window = 2){
    draw_sprite_ext(sprite_get("fspecial_chargeeffect"), fspecial_charge / 2, x + (4 * spr_dir), y - 36, spr_dir, 1, 0, c_white, 1 );
}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND) && window = 3 && window_timer = 1 && !hitpause){
    spawn_hit_fx(x, y, uspecial_effect)
}
