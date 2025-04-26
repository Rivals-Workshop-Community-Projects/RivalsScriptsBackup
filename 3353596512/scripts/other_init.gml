//other init, sets variables you put on OTHER players

can_be_turret_parried = false;

//dspec
flashbang_visual_timer = 0;
is_new_creature = false;

has_reticle = false;
reticle_timer = 0;
reticle_zoom_outer = 0;
reticle_zoom_inner = 0;
reticle_alpha = 0;

reticle_box_upper = 0;
reticle_box_lower = 0;
reticle_name = get_char_info(player, INFO_STR_NAME);

zapped_visual = false;
zapped_timer = 0;
zapped_pos = 0;

stepped_on_whoopee = false;
whoopee_id = noone;
got_masked = false;
masked_timer = 0;
masked_id = noone;
masked_sound = noone;
masked_sound_puke = noone;
masked_index = 0;
mask_type = -1;
mask_position = 0;
mask_pos_difference = 0;

//uspec2
cruiser_lockout = 0;

hit_by_jeb = false;

//this was going to be an easter egg that got dummied out due to lack of time.
/*
turret_parry_urls = [
        CH_ELLIANA, 
        2687880389, //Retroblast
        3047409367, //Nano
    ]

for (i = 0; i < array_length(turret_parry_urls); i++){
    if ("url" in self && url == turret_parry_urls[i]){
        can_be_turret_parried = true;
    }
}
*/