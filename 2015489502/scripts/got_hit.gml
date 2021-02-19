//armor_timer = armor_min;

uspecials_used = 0;
fspecials_used = 0;
airdashes_used = 0;

if (state_cat == SC_HITSTUN) dismount = true;

if bike{
    enemy_hitboxID.otto_bike_riding_flag = true;
}



//if ((prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && (attack == AT_NSPECIAL || attack == AT_USTRONG) && ball_charge){
	
if (ball_pos == clamp(ball_pos, 2, 4) && ball_charge && hitpause){
    lose_charge_timer = lose_charge_max;
    lose_charge_charge = ball_charge;
    lose_charge_x = x + ball_pos_x;
    lose_charge_y = y + ball_pos_y;
    lose_charge_vsp = lose_charge_vsp_init
    ball_charge = 0;
	lose_charge_spr_dir = spr_dir;
}