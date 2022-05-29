//hitbox_init//hitbox_init

// Track positions of all potential targets of dspecial
if (attack == AT_DSPECIAL_2) {
    owners_team = get_player_team(player);
    target_x_list = ds_list_create();
    target_y_list = ds_list_create();
    ds_list_clear(target_x_list);
    ds_list_clear(target_y_list);
    x_list_size = 0;
    y_list_size = 0;
    current_clostest_distance = max_seeking_range;
    current_distance = max_seeking_range;
    allow_reuse = true;
    previous_angle = 0;
    target_valid = false;
    target_x = x;
    target_y = y;
    
    // The variables in this big dumb block are used to account for fractional differences lost in normal calculation. Do not edit, please!
    orig_hsp = 0;
    frac_hsp = frac(abs(hsp));
    hsp_sign =  sign(hsp);
    abs_whole_hsp = floor(abs(hsp));
    whole_hsp = abs_whole_hsp * hsp_sign;
    hsp = whole_hsp;
    summed_hsp_remainder = 0;
    orig_vsp = 0;
    frac_vsp = abs(frac(vsp));
    vsp_sign =  sign(vsp);
    abs_whole_vsp = floor(abs(vsp));
    whole_vsp = abs_whole_vsp * vsp_sign;
    vsp = whole_vsp;
    summed_vsp_remainder = 0;
}