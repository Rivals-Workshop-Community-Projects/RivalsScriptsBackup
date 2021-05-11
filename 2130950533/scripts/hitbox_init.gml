// For this projectile, track the hsp/vsp and account for any decimals
if (attack == AT_FSPECIAL){
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