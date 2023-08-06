// hitbox_update.gml

// NSpecial: Ki Blast Projectile
if (attack == AT_NSPECIAL){
	if (hbox_num == 1){
		if (!free && proj_angle != 0 && proj_angle != 180 && through_platforms != 2){
			spawn_hit_fx(x,y,109);
			instance_destroy();
			exit;
		}
		if (hitbox_timer == length - 1){
			spawn_hit_fx(x,y,109);
			//instance_destroy();
			//exit;
		}
		if (proj_angle == 0){
			//print("HSP: " + string(hsp) + ", SPR_DIR: " + string(spr_dir))
		}
		if (origSprDir != spr_dir && proj_angle == 0){
			proj_angle += 180;
		}
	}
}

// Stone Toss (Rune)
if (attack == AT_EXTRA_1){
	if (hbox_num == 1){
		through_platforms = 2;
		fall_through = true;
		proj_angle -= (12 * spr_dir);
		if (hitbox_timer == 40){
			sound_play(asset_get("sfx_charge_blade_ready"), false, noone, 1, 1);
			spawn_hit_fx(x,y,305);
			sound_effect = asset_get("sfx_blow_heavy2");
			hit_effect = 192;
			damage += 3;
			kb_angle = 285;
			kb_value += 2;
			kb_scale += 0.2;
		}
		if (hitbox_timer >= 40){
			vsp += (0.2 + (hitbox_timer/45));
		}
		if (!free){
			sound_play(asset_get("sfx_kragg_rock_land"));
			spawn_hit_fx(x,y,193);
			instance_destroy();
			exit;
		}
		
		//Blastzone stuffs lol
		if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t){//>
			instance_destroy();
			exit;
		}
	}
}