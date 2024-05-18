if (attack == AT_NSPECIAL && (window == 2 or window == 3) && wft_nspcharge >= 0 && spr_dir == 1 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
draw_sprite(sprite_get("chargefx"),floor(get_gameplay_time()/4),x+18,y-34);
}

//////////////////////////////////////////////////////////////////////////////////////

if (attack == AT_NSPECIAL && (window == 2 or window == 3) && wft_nspcharge >= 0 && spr_dir == -1 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
draw_sprite(sprite_get("chargefx"),floor(get_gameplay_time()/4),x-44,y-34);
}
