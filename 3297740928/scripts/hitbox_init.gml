//hitbox_init.gml

//Grenade Launch
if(attack == AT_NSPECIAL_AIR){
	if(hbox_num  == 1){
		explode = false;
		old_vsp = 0;
	}else if(hbox_num == 2){
		grenade_freq = player_id.grenade_freq;
	}
}

//Flame Pillar
if(attack == AT_FSPECIAL){
	if(hbox_num < 3){
		make_pillar = false;
	}else if(hbox_num == 3){
		pillar_freq = player_id.fpillar_freq;
	}
}

if (attack == AT_FSPECIAL_AIR){
	if (hbox_num == 2){
		curr_target = noone;
		missile_angle = 0;
	}
}

if (attack == AT_DSPECIAL_2){
	if (hbox_num == 1){
		init_vsp = 0;
		bounced = 0;
	}
}

//Stealth Burst
SburstProjAnim = hit_fx_create(sprite_get("stealthburstexplode"), 20);
//Bomb Drop
BdropExplode = hit_fx_create(sprite_get("bombexplode"), 30);
bomb_x = 0;
bomb_y = 0;
