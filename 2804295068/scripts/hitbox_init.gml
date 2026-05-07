torch_damage_mult = floor(damage*2);
torch_length_mult = floor(length*1.3);
torch_hsp_mult = hsp*1.3;

parry_length_mult = length*2;

if (attack == AT_FTILT 
|| attack == AT_EXTRA_1 
|| (attack == AT_NAIR && hbox_num == 4) 
|| attack == AT_FAIR 
|| attack == AT_BAIR 
|| attack == AT_FSTRONG 
|| attack == AT_NSPECIAL 
|| attack == 49 
|| attack == AT_FSPECIAL_2){
	torched = false;
    img_spd = 0.5;
	collision_sprite = sprite_get("pea");
	if has_rune("F"){
		grounds = -1;
		length *= 2;
		grav = 20/length;
		air_friction = (hsp*spr_dir)/50;
	}
}
if (attack == AT_FAIR){
	through_platforms = 20;
}

if (attack == AT_NSPECIAL && hbox_num == 1){
	if (player_id.free){
		grounds = -1;
		hsp -= 3*spr_dir;
		vsp += 9;
	}
}

if (attack == AT_FSPECIAL && hbox_num == 1){
	if (hitbox_timer < 2){
		torched = false;
		vsp = -2;
		hsp = (player_id.hsp/3)+(2*spr_dir);
		sound_play (sound_get ("bean_voice"));
	}
	bean_fall_prevention = false;
}

if (attack == AT_EXTRA_1){
	draw_xscale = -1*spr_dir;
}