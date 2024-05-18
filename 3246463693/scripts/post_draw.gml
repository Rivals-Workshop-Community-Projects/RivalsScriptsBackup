//NSpecial FX
if (attack == AT_NSPECIAL && (window == 2 or window == 3) && wft_nspcharge >= 0 && spr_dir == 1 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
draw_sprite(sprite_get("nspecial_proj1"),floor(get_gameplay_time()/4),x+18,y-34);
}

if (attack == AT_NSPECIAL && (window == 2 or window == 3) && wft_nspcharge >= 25 && spr_dir == 1 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
draw_sprite(sprite_get("nspecial_proj2"),floor(get_gameplay_time()/4),x+18,y-34);
}

if (attack == AT_NSPECIAL && (window == 2 or window == 3) && wft_nspcharge >= 50 && spr_dir == 1 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
draw_sprite(sprite_get("nspecial_proj3"),floor(get_gameplay_time()/4),x+18,y-34);
}

if (attack == AT_NSPECIAL && (window == 2 or window == 3) && wft_nspcharge >= 75 && spr_dir == 1 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
draw_sprite(sprite_get("nspecial_proj4"),floor(get_gameplay_time()/4),x+18,y-34);
}

//////////////////////////////////////////////////////////////////////////////////////

if (attack == AT_NSPECIAL && (window == 2 or window == 3) && wft_nspcharge >= 0 && spr_dir == -1 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
draw_sprite(sprite_get("nspecial_proj1"),floor(get_gameplay_time()/4),x-44,y-34);
}

if (attack == AT_NSPECIAL && (window == 2 or window == 3) && wft_nspcharge >= 25 && spr_dir == -1 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
draw_sprite(sprite_get("nspecial_proj2"),floor(get_gameplay_time()/4),x-44,y-34);
}

if (attack == AT_NSPECIAL && (window == 2 or window == 3) && wft_nspcharge >= 50 && spr_dir == -1 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
draw_sprite(sprite_get("nspecial_proj3"),floor(get_gameplay_time()/4),x-44,y-34);
}

if (attack == AT_NSPECIAL && (window == 2 or window == 3) && wft_nspcharge >= 75 && spr_dir == -1 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
draw_sprite(sprite_get("nspecial_proj4"),floor(get_gameplay_time()/4),x-44,y-34);
}

if (state == PS_ATTACK_AIR && attack == AT_FSTRONG && free || state == PS_ATTACK_AIR && attack == AT_USTRONG && free || state == PS_ATTACK_AIR && attack == AT_DSTRONG && free || state == PS_ATTACK_AIR && attack == AT_NSPECIAL && free && wft_dscharge == 1){
	draw_sprite(sprite_get("balanceboard"),floor(get_gameplay_time()/4),x,y+12);
}

//Thanks Bar-kun
//FSpecial Bar
if (attack == AT_FSPECIAL && window == 2 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
    draw_sprite_ext(sprite_get("wft_bar"), 0, x-48*spr_dir, y-2, 2, lerp(0, -76, wft_meter_current/wft_meter_max), 0, c_white, 1);
}

if (attack == AT_FSPECIAL && window == 2 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && spr_dir == 1){
    draw_sprite(sprite_get("wft_hud"),0, x-60, y-84);
}

if (attack == AT_FSPECIAL && window == 2 && state != PS_PARRY && state != PS_AIR_DODGE && state != PS_IDLE && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && spr_dir == -1){
    draw_sprite(sprite_get("wft_hud"),0, x+36, y-84);
}