if (attack == AT_NSPECIAL) {
    max_seeking_range = 500;
    max_speed = 3;
    acceleration = 0.05; // additive
    decceleration = 0.9; // multiplicative
    // A slight offset from the target's
    // feet, to give the illusion of
    // tracking the center of the target.
    foot_offset = 35;
    
    target_angle = 0;
	prev_hsp = hsp;
	prev_vsp = vsp;
    owners_team = get_player_team(player);
    target_x_list = ds_list_create();
    target_y_list = ds_list_create();
    ds_list_clear(target_x_list);
    ds_list_clear(target_y_list);
    x_list_size = 0;
    y_list_size = 0;
    current_clostest_distance = max_seeking_range;
    current_distance = max_seeking_range;
    target_valid = false;
    target_x = x;
    target_y = y;
    
    // The variables in this big dumb block are used to account for fractional differences lost in normal calculation. Do not edit, please!
    orig_hsp = hsp;
    frac_hsp = frac(abs(hsp));
    hsp_sign =  sign(hsp);
    abs_whole_hsp = floor(abs(hsp));
    whole_hsp = abs_whole_hsp * hsp_sign;
    hsp = whole_hsp;
    summed_hsp_remainder = 0;
    orig_vsp = vsp;
    frac_vsp = abs(frac(vsp));
    vsp_sign =  sign(vsp);
    abs_whole_vsp = floor(abs(vsp));
    whole_vsp = abs_whole_vsp * vsp_sign;
    vsp = whole_vsp;
    summed_vsp_remainder = 0;
}