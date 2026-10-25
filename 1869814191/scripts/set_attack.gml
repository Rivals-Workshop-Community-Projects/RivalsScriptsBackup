//set_attack

/*
var miss = spawn_hit_fx(x, y-(char_height+60), vfx_miss);
miss.spr_dir = 1;
*/

if(attack == AT_NSPECIAL){
	if("fs_charge" in self && fs_charge >= 200){
        fs_force_fs = true;
        attack = 49;
    }
}

switch(attack) {
	case AT_DATTACK: reset_hitbox_value(attack, 1, HG_KARMA); break;
	case AT_DSTRONG:
		dstrong_bones = 2;
		
		for (var d = 0; d < dstrong_bones; d++;) dstrong_positions[d] = x + (dstrong_distances[floor(d / 2)] * (d % 2 == 0? -1:1));
		
		var offset = 24;
		
		for (var d = 0; d < dstrong_bones; d++;) while !(has_rune("A") || place_meeting(dstrong_positions[d] + (offset * (d % 2 == 0? -1:1)), y + 2, asset_get("par_block")) || place_meeting(dstrong_positions[d] + (offset * (d % 2 == 0? -1:1)), y + 2, asset_get("par_jumpthrough"))) dstrong_positions[d] -= (d % 2 == 0? -1:1);
	break;
	
	/*
	case AT_FSPECIAL:
		attack = AT_DSPECIAL;
	break;
	case AT_DSPECIAL:
		attack = AT_FSPECIAL;
	break;
	*/
	case AT_TAUNT:
		if (down_down) { attack = AT_TAUNT_2; }
	break;
	
	case 49:
		reset_attack_value(49, AG_NUM_WINDOWS);
		sansFS_box_width = sansFS_box_orig_width;
		sansFS_blast_rotate = 0;
		sansFS_throw_box_state = -1;
		sansFS_throw_box_state_timer = 0;
		sansFS_teleport_cooldown = 0;
	break;
}