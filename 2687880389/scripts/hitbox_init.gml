if (attack == AT_NSPECIAL_2) {
    free_flying = false;
    intial_boomerang_throw_speed = 10;
    //intial_boomerang_angle = 0;
    //boomerang_time_to_turn = 10;
    //boomerang_lifetime = 10;
    current_magnitude = intial_boomerang_throw_speed;


    enum BOOMERANG_STATE {
    	BOOMERANG_OUT_CONSTANT,
    	BOOMERANG_OUT_SLOWING,
    	BOOMERANG_RETURN_RAMPING,
    	BOOMERANG_RETURN_CONSTANT,
    	BOOMERANG_FREEDOM
    }
    next_boomerang_state = BOOMERANG_STATE.BOOMERANG_OUT_CONSTANT;
    curr_boomerang_state = BOOMERANG_STATE.BOOMERANG_OUT_CONSTANT;
    prev_boomerang_state = BOOMERANG_STATE.BOOMERANG_OUT_CONSTANT;
    state_time_out_constant = 20;
    state_time_out_slowing = 45;
    state_time_return_ramping= state_time_out_slowing;
    state_timer = state_time_out_constant;
    
    bounce_off_player = false;
    deflected = false;
    target_angle = 0;
    real_angle = target_angle;
    perfect_homing_frames = 5;
    perfect_homing_countdown = 0;
    homing_strength = 0.005;
    homing_degrees_hard_cap = 1; // can't change by more than this much per frame
	prev_hsp = hsp;
	prev_vsp = vsp;
    target_valid = false;
    target_x = x;
    target_y = y;
    //curr_angle = 0; // Somehow giving this an initial value overwrites the value given after calling the constructor
    
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





/*
// For this projectile, track the hsp/vsp and account for any decimals
if (attack == AT_NSPECIAL_2) {
    free_flying = false;
    intial_boomerang_throw_speed = 5;
    intial_boomerang_angle = 0;
    //acelleration = 1.1;
    //decelleration = 0.1;
    orig_dir = spr_dir;
    boomerang_time_to_turn = 10;
    boomerang_lifetime = 10;
    
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
*/