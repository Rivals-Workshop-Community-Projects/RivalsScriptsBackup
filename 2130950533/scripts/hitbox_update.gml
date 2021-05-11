// Manually adjust the angle and speed of the projectile as it moves to account for vsp/hsp not taking decimal portions into account
if (attack == AT_FSPECIAL){
    // Account for redirection
    var current_hsp_sign = sign(hsp);
    if ((current_hsp_sign != hsp_sign)
        && (current_hsp_sign != 0)
        && (hsp_sign != 0))
    {
        orig_hsp *= -1;
        hsp_sign = current_hsp_sign;
        whole_hsp *= -1;
    }
    var current_vsp_sign = sign(vsp);
    if ((current_vsp_sign != vsp_sign)
        && (current_vsp_sign != 0)
        && (vsp_sign != 0))
    {
        orig_vsp *= -1;
        vsp_sign = current_vsp_sign;
        whole_vsp *= -1;
    }
    
    // Angle the projectile in the direction it's headed
    proj_angle = point_direction(0, 0, spr_dir * orig_hsp, spr_dir * orig_vsp);
    
    // Add 1 to hsp/vsp on cycles where it crosses a whole number boundary
    summed_hsp_remainder += frac_hsp;
    if (abs(hsp) != abs_whole_hsp) {
        hsp = whole_hsp;
    }
    while (summed_hsp_remainder >= 1) {
        summed_hsp_remainder--;
        if (hsp_sign > 0) {
            hsp++;
        } else if (hsp_sign < 0) {
            hsp--;
        }
    }
    summed_vsp_remainder += frac_vsp;
    if (abs(vsp) != abs_whole_vsp) {
        vsp = whole_vsp;
    }
    while (summed_vsp_remainder >= 1) {
        summed_vsp_remainder--;
        if (vsp_sign > 0) {
            vsp++;
        } else if (vsp_sign < 0) {
            vsp--;
        }
    }
}