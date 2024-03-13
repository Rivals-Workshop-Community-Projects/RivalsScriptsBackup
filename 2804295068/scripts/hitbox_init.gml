torched = false;
if (has_rune("L")){
	if (attack == AT_FTILT 
	|| attack == AT_EXTRA_1 
	|| (attack == AT_NAIR && hbox_num == 4) 
	|| attack == AT_FAIR 
	|| attack == AT_BAIR 
	|| attack == AT_FSTRONG 
	|| attack == AT_NSPECIAL 
	|| attack == 49){
		torched = true
	}
}

if (attack == AT_FTILT 
|| attack == AT_EXTRA_1 
|| (attack == AT_NAIR && hbox_num == 4) 
|| attack == AT_FAIR 
|| attack == AT_BAIR 
|| attack == AT_FSTRONG 
|| attack == AT_NSPECIAL 
|| attack == 49){
    img_spd = 0.5;
	collision_sprite = sprite_get("pea");
}

torch_damage_mult = round(damage*2);
torch_length_mult = length*1.3;
torch_hsp_mult = hsp*1.3;

if (attack == AT_NSPECIAL && hbox_num == 1){
	if (player_id.free){
		grounds = -1;
		hsp = 13 * spr_dir;
		vsp = 9;
	}
}

if (attack == AT_FSPECIAL && hbox_num == 1){
	bean_fall_prevention = false;
    if (hitbox_timer == 1){
	    vsp = -2
	    hsp = (player_id.hsp/3)+(2*spr_dir)
		sound_play (sound_get ("bean_voice"));
	}
}