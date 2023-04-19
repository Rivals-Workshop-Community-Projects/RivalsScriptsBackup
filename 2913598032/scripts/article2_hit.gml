//print(player_id);
//print(enemy_hitboxID.attack);

if (bumper_state == 1 || bumper_state == 3) exit;
//else if (enemy_hitboxID == hbox) exit;
// since this article is spawning a hitbox ontop of itself every frame,
// it won't register any of the player's other hitboxes
else if (enemy_hitboxID.attack == AT_FSPECIAL) exit;
else if (enemy_hitboxID.player_id != player_id) {
    destroy = true;
}
//else if (bumper_state != 2) {
//    bumper_state = 2;
//    bumper_state_timer = 0;
//    spin_timer = spin_timer_max;
//    sprite_index = spr_back;
//    img_index = 1;
//}
else {
    bumper_state = 2;
    bumper_state_timer = 0;
    spin_timer = spin_timer_max;
    sprite_index = spr_back;
    img_index = 1;
    if (!hitpause && !hitstop) {
        sound_stop(asset_get("sfx_spin"));
        sound_play(asset_get("sfx_spin"));
        spin_timer = spin_timer_max;
    }
}
    

