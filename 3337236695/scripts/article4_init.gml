//Sets the sprite, depth, and other details for the article. 
sprite_index = asset_get("empty_sprite");
depth = 31
image_xscale = 2
image_yscale = 2
ball_swing_a = 0
shadow_swing_a = 0
if is_aether_stage() {
    aether_a = 1
}else{
    aether_a = 0
}

//Mii variables.
total_miis = 9
with (oPlayer) {
    if (string_count("matt", string_lower(get_char_info(player, INFO_STR_NAME))) > 0) {
        with (other) {
            total_miis = 8
        }
    }
}
mii_chosen_1 = random_func(current_second, total_miis, true);
mii_chosen_2 = random_func(current_second + current_second, total_miis, true);
mii_chosen_3 = random_func(current_second - current_second, total_miis, true);
mii_chosen_4 = random_func(current_second * current_second, total_miis, true);
mii_cheering = 0
mii_timer = 1
if is_aether_stage() {
    mii_anim = 7
}else{
    mii_anim = 0
}
mii_1_visible = random_func(1, 2, true);
mii_2_visible = random_func(2, 2, true);
mii_3_visible = random_func(3, 2, true);
mii_4_visible = random_func(4, 2, true);

//Array for the different Miis.
mii_cameo_array[0] = "mii_default_m"
mii_cameo_array[1] = "mii_default_f"
mii_cameo_array[2] = "mii_guest_a"
mii_cameo_array[3] = "mii_guest_b"
mii_cameo_array[4] = "mii_guest_c"
mii_cameo_array[5] = "mii_guest_d"
mii_cameo_array[6] = "mii_guest_e"
mii_cameo_array[7] = "mii_guest_f"
mii_cameo_array[8] = "mii_matt"