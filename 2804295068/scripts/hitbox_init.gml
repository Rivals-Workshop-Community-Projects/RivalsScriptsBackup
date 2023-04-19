torched = false;
if (has_rune("L")){
	if (attack == AT_JAB || attack == AT_EXTRA_1 || (attack == AT_NAIR && hbox_num == 4) || attack == AT_FAIR || attack == AT_BAIR || attack == AT_FSTRONG || attack == AT_NSPECIAL || attack == 49){
		torched = true
	}
}

if (attack == AT_JAB || attack == AT_EXTRA_1 || (attack == AT_NAIR && hbox_num == 4) || attack == AT_FAIR || attack == AT_BAIR || attack == AT_FSTRONG || attack == AT_NSPECIAL || attack == 49){
    img_spd = 0.2;
}

torch_damage_mult = round(damage*2);
torch_length_mult = length*1.3;
torch_hsp_mult = hsp*1.3;
torch_vsp_mult = vsp*1.3;