set_victory_bg( sprite_get( "bg" ));

//Movement/Idle Based
	sprite_change_offset("idle", 24, 49);
	sprite_change_offset("idle_hurt", 52, 100);
	sprite_change_offset("crouch", 24, 49);
	sprite_change_offset("crouch_hurt", 52, 100);
	//sprite_change_offset("entrance", 24, 49);
	
	//Jump and Land
	sprite_change_offset("jump",  25, 45);
	sprite_change_offset("jumpstart", 24, 49);
	sprite_change_offset("doublejump", 25, 45);
	sprite_change_offset("walljump", 28, 45);
	
	sprite_change_offset("land",  23, 49);
	sprite_change_offset("landinglag",  26, 49);
	sprite_change_offset("pratfall", 26, 47);
	sprite_change_offset("pratland",  23, 49);
	sprite_change_offset("waveland", 23, 49);
	sprite_change_offset("tech", 23, 49);
	
	//Walk and Run
	sprite_change_offset("walk", 23, 49);
	sprite_change_offset("walkturn", 25, 49);
	
	sprite_change_offset("dash", 24, 49);
	sprite_change_offset("dashstart", 24, 49);
	sprite_change_offset("dashstop", 24, 49);
	sprite_change_offset("dashturn", 25, 49);
	
	//Other
	sprite_change_offset("plat", 20, 9);
	sprite_change_offset("hurt", 25, 46);
		sprite_change_offset("spinhurt", 25, 46);
		sprite_change_offset("hurtground", 24, 49);
		sprite_change_offset("bouncehurt", 23, 26);
		sprite_change_offset("uphurt", 25, 46);
		sprite_change_offset("downhurt", 25, 46);
	sprite_change_offset("airdodge", 25, 48);
	sprite_change_offset("parry", 22, 49);
	sprite_change_offset("roll_forward", 25, 49);
	sprite_change_offset("roll_backward", 25, 49);

	
	
//Attack Based
	sprite_change_offset("mower", 61, 49);

	sprite_change_offset("dair", 25, 42);
	sprite_change_offset("jab", 25, 49);
	sprite_change_offset("ftilt", 25, 49);
	sprite_change_offset("fair", 25, 57)
	sprite_change_offset("bair", 29, 46);
	sprite_change_offset("nair", 17, 48);
	sprite_change_offset("utilt", 13, 49);
	sprite_change_offset("uspecial", 40, 99);
	sprite_change_offset("dattack", 27, 100);
	sprite_change_offset("fstrong", 43, 49);
	sprite_change_offset("uair", 47, 70);
	sprite_change_offset("dstrong", 55, 49);
	sprite_change_offset("dtilt",  44, 49);
	sprite_change_offset("ustrong", 44, 99);
	sprite_change_offset("fspecial", 25, 49);	
		sprite_change_offset("dair_hurt", 50, 84);
		sprite_change_offset("jab_hurt", 50, 98);
		sprite_change_offset("ftilt_hurt", 50, 98);
		sprite_change_offset("fair_hurt", 50, 114)
		sprite_change_offset("bair_hurt", 58, 92);
		sprite_change_offset("nair_hurt", 34, 96);
		sprite_change_offset("utilt_hurt", 26, 98);
		sprite_change_offset("uspecial_hurt", 80, 198);
		sprite_change_offset("dattack_hurt", 54, 200);
		sprite_change_offset("fstrong_hurt", 86, 98);
		sprite_change_offset("uair_hurt", 94, 140);
		sprite_change_offset("dstrong_hurt", 110, 98);
		sprite_change_offset("dtilt_hurt",  88, 98);
		sprite_change_offset("ustrong_hurt", 88, 198);
		sprite_change_offset("fspecial_hurt", 50, 98);	
	
	sprite_change_offset("dspecial", 36, 47);
		sprite_change_offset("dspecial_hurt", 72, 94);
	sprite_change_offset("dspecialAir", 36, 47);
		sprite_change_offset("dspecialAir_hurt", 72, 94);
	sprite_change_offset("dspecial2", 36, 57);
		sprite_change_offset("dspecial2_hurt", 72, 114);
	sprite_change_offset("nspecial", 16, 49);
		sprite_change_offset("nspecial_hurt", 32, 98);
	
	sprite_change_offset("taunt", 26, 69);
		sprite_change_offset("taunt_hurt", 52, 138);
	
		sprite_change_offset("plantSeeds", 29, 58);


//Plants
sprite_change_offset("empty", 0, 6000);
sprite_change_offset("hudArrow", 7, 10);
sprite_change_offset("plantPot", 30, 59);
	sprite_change_offset("plantPotHurt", 30, 58);
sprite_change_offset("plantGrow", 30, 58);
	sprite_change_offset("plantSun", 30, 58);
		sprite_change_offset("plantSunHurt", 30, 58);
		sprite_change_offset("plantSunAttack1", 62, 118);
			sprite_change_offset("plantSunHitbox1", 24, 24);
		sprite_change_offset("plantSunAttack2", 62, 118);
			sprite_change_offset("plantSunHitbox2", 32, 608);
	sprite_change_offset("plantPea", 30, 58);
		sprite_change_offset("plantPeaAttack", 62, 118);
			sprite_change_offset("plantPeaHitbox", 7, 7);
		sprite_change_offset("plantPeaHurt", 30, 58);
	sprite_change_offset("plantSquash", 30, 58);
		sprite_change_offset("plantSquashAttack", 62, 118);
			sprite_change_offset("plantSquashHitbox", 27, 58);
				sprite_change_offset("plantSquashHitMask", 22, 40);
		sprite_change_offset("plantSquashHurt", 30, 58);
	sprite_change_offset("plantBonk", 30, 58);
		sprite_change_offset("plantBonkAttack", 62, 118);
			sprite_change_offset("plantBonkHitbox", 62, 118);
		sprite_change_offset("plantBonkHurt", 30, 58);
	sprite_change_offset("plantIce", 30, 58);
		sprite_change_offset("plantIceAttack", 62, 118);
		sprite_change_offset("plantIceHurt", 30, 58);
	sprite_change_offset("plantCherry", 30, 58);
		sprite_change_offset("plantCherryHurt", 30, 58);
		sprite_change_offset("plantCherryAttack", 62, 118);
			sprite_change_offset("plantCherryHitbox", 48, 48);
	sprite_change_offset("plantBean", 30, 58);
		sprite_change_offset("plantBeanAttack", 62, 118);
		sprite_change_offset("plantBeanHurt", 30, 58);
	sprite_change_offset("plantReed", 30, 58);
		sprite_change_offset("plantReedAttack", 62, 118);
			sprite_change_offset("plantReedHitbox", 320, 32);
				sprite_change_offset("plantReedHitMask", 320, 160);
				//sprite_change_collision_mask("plantReedHitMask", 1, 1, 0, 0, 0, 0, 0);
		sprite_change_offset("plantReedHurt", 30, 58);










































