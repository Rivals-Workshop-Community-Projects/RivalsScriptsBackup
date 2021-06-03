if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90;
}

if (attack == AT_BAIR){
	if (hbox_num > 1){
		if (hitbox_timer < 5 && player_id.paperwork < 90 && player_id.paperwork > 0){ instance_destroy(); }
		if (free == false){ destroyed = true; } 
		if (hitbox_timer < 5){ 
			image_xscale = 0;
			image_yscale = 0;
		} else if (hitbox_timer >= 5){
			image_xscale = 0.1;
			image_yscale = 0.1;
		}
	if (hbox_num == 2){ //First paper
		if ((hitbox_timer mod 15) == 0){ hsp += 1 * spr_dir; }
		if ((hitbox_timer mod 40) == 15){ spr_dir = -1 * spr_dir; }
	}
	if (hbox_num == 3){ //Second paper
		if ((hitbox_timer mod 15) == 0){ hsp += 1 * spr_dir; }
		if ((hitbox_timer mod 39) == 15){ spr_dir = -1 * spr_dir; }
	}
	if (hbox_num == 4){ //Third paper
		if ((hitbox_timer mod 15) == 0){ hsp += 1 * spr_dir; }
		if ((hitbox_timer mod 38) == 15){ spr_dir = -1 * spr_dir; }
	}
	if (hbox_num == 5){ //Fourth paper
		if ((hitbox_timer mod 15) == 0){ hsp += 1 * spr_dir; }
		if ((hitbox_timer mod 37) == 15){ spr_dir = -1 * spr_dir; }
	}
	if (hbox_num == 6){ //Fifth paper
		if ((hitbox_timer mod 15) == 0){ hsp += 1 * spr_dir; }
		if ((hitbox_timer mod 36) == 15){ spr_dir = -1 * spr_dir; }
		}
	}
}

if attack == AT_DAIR && hbox_num == 2 {
    if vsp == 0 {
        destroyed = true;
        spawn_hit_fx( x + 15, y + 30, 193)
        sound_play(asset_get("sfx_kragg_rock_shatter"))
        shake_camera(2, 5) 
    }
}



damage_checker = (get_player_damage( player ));
if (attack == AT_USTRONG){
	if (was_parried == false){
	if (hbox_num == 1){ //Main double milebars
	if (hitbox_timer < 90){
	depth = 10;
	sprite_index = sprite_get("milebar_together");
	//if (hitbox_timer == 5){ create_hitbox(AT_USTRONG, 4, x, y-10); }
	//if (hitbox_timer == 15){ create_hitbox(AT_USTRONG, 4, x, y-20); }
	//if (hitbox_timer == 30){ create_hitbox(AT_USTRONG, 4, x, y-30); }
	if (damage_checker <= 99){
		img_spd = 2 + 0.02 * damage_checker;
		if (image_index >= 19 + 0.8 * damage_checker){ image_index = 19 + 0.8 * damage_checker; }
		if (image_index == 99){ image_index = 99; }
	}
	if (damage_checker >= 100){
		img_spd = 4;
		if (image_index >= 19 + 0.8 * damage_checker){ image_index = 19 + 0.8 * damage_checker; }
		if (image_index >= 98){ image_index = 98; }
		}
	}
	if (hitbox_timer > 90){
		img_spd = -2;
		if (hitbox_timer == 91 && damage_checker >= 90){ image_index = 95; }
			if (image_index <= 1){
			destroyed = true;
			}
		}
	}
}
if (hbox_num == 2 || hbox_num == 3){ //The side milebars
	depth = 10;
	if (hitbox_timer < 90){
	if (damage_checker <= 99){
		img_spd = 1 + 0.01 * damage_checker;
		if (image_index >= 19 + 0.1 * damage_checker){ image_index = 19 + 0.1 * damage_checker; }
		if (image_index == 99){ image_index = 99; }
	}
	if (damage_checker >= 100){
		img_spd = 3;
		if (image_index >= 19 + 0.1 * damage_checker){ image_index = 19 + 0.1 * damage_checker; }
		if (image_index >= 51){ image_index = 50; }
		}
	}
	if (hitbox_timer > 90){
		img_spd = -2;
		if (image_index <= 1){ destroyed = true; }
	}
}
if (hbox_num == 4){ //the hitbox on top
	if (hitbox_timer < 90){
	if (damage_checker <= 99){
		img_spd = 2 + 0.02 * damage_checker;
		vsp = -4 - 0.02 * damage_checker;
		image_yscale = 0 + 0.01 * image_index; //Increase it's vertical size
		if (image_index >= 19 + 0.8 * damage_checker){ image_index = 19 + 0.8 * damage_checker; vsp = 0; instance_destroy(); }
		if (image_index == 99){ image_index = 99; vsp = 0; instance_destroy(); }
	}
	if (damage_checker >= 100){
			img_spd = 4;
			vsp = -7;
			image_yscale = 0 + 0.01 * image_index; //Increase it's vertical size
		if (image_index >= 19 + 0.8 * damage_checker){ image_index = 19 + 0.8 * damage_checker; vsp = 0; image_yscale = 0 + 0.01 * image_index; instance_destroy(); }
		if (image_index >= 98){ image_index = 98; vsp = 0; image_yscale = 0 + 0.01 * image_index; instance_destroy(); }
		}
	}
	if (hitbox_timer > 90){
		img_spd = -2;
		if (image_index <= 1){ destroyed = true;
			}
		}
	}
if (hbox_num == 5){ //the hitbox on top
	if (hitbox_timer < 90){
	if (damage_checker <= 99){
		img_spd = 2 + 0.02 * damage_checker;
		vsp = -2 - 0.001 * damage_checker;
		image_yscale = 0.1 + 0.001 * image_index; //Increase it's vertical size
		if (image_index >= 19 + 0.8 * damage_checker){ image_index = 19 + 0.8 * damage_checker; vsp = 0; instance_destroy(); }
		if (image_index == 99){ image_index = 99; vsp = 0; instance_destroy(); }
	}
	if (damage_checker >= 100){
			img_spd = 4;
			vsp = -2;
			image_yscale = 0.1 + 0.001 * image_index; //Increase it's vertical size
		if (image_index >= 19 + 0.8 * damage_checker){ image_index = 19 + 0.8 * damage_checker; vsp = 0; image_yscale = 0 + 0.01 * image_index; instance_destroy(); }
		if (image_index >= 98){ image_index = 98; vsp = 0; image_yscale = 0 + 0.01 * image_index; instance_destroy(); }
		}
	}
	if (hitbox_timer > 90){
		img_spd = -2;
		if (image_index <= 1){ destroyed = true;
			}
		}
	}
}

if (attack == AT_FSPECIAL)
{
	if (hbox_num == 1) //card
	{
		if (!free)
		{
			hsp = 0;
			vsp = 0;
			destroyed = true;
			//storing the article as a variable within the player for a later use
            player_id.creatureid = instance_create(x, y, "obj_article1");
		}
	}
	
	else if (hbox_num == 3) //AIR
	{
		if (hitbox_timer % 6 == 0)
		{
			for (var p = 0; p < array_length(can_hit); p++)
			{ can_hit[p] = true; }
		}
	}
}
	
