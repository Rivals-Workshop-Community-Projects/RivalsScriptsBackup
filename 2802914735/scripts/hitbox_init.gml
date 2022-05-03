//min min stuff
AT_FSPECIAL_RED = 44;
AT_FSPECIAL_BLUE = 45;
AT_FSPECIAL_GREEN = 46;
if attack == AT_FTILT or attack == AT_FSPECIAL or attack == AT_FSTRONG or attack == AT_FSPECIAL_RED or attack == AT_FSPECIAL_BLUE or attack == AT_FSPECIAL_GREEN { //store initial projectile speed for later use
    init_hsp = abs(hsp);
    init_vsp = abs(vsp);
    //relative x stuff to facilitate projectile moving with the player if that becomes a thing
    //remove this and related code in hitbox_update if axes are not to be influenced by character position
    anchored_x = player_id.x;
    anchored_y = player_id.y;
    relative_x = x_pos;
    relative_y = y_pos;
    ayaka_axe_timer = 0; //custom timer so that tenru doesn't make the axes janky
    
    axe_got_hit = false; //detect if was hit
}