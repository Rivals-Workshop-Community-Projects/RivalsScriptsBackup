sprite_change_offset("hurtb", 32, 66);
sprite_change_offset("crouchb", 32, 66);
sprite_change_offset("idle", 36, 84);
sprite_change_offset("idle_wait", 36, 100);
sprite_change_offset("hurt", 36, 84);
	sprite_change_offset("hurt", 36, 84);
	sprite_change_offset("hurtground", 36, 84);
	sprite_change_offset("bighurt", 36, 82);
	sprite_change_offset("spinhurt", 56, 78);
sprite_change_offset("crouch", 36, 82);
sprite_change_offset("walk", 34, 86);
sprite_change_offset("walkturn", 36, 84);
sprite_change_offset("dash", 36, 84);
sprite_change_offset("dashstart", 36, 84);
sprite_change_offset("dashstop", 36, 84);
sprite_change_offset("dashturn", 36, 84);

sprite_change_offset("jumpstart", 36, 82);
sprite_change_offset("jump", 36, 84);
sprite_change_offset("doublejump", 36, 84);
sprite_change_offset("walljump", 36, 84);
sprite_change_offset("pratfall", 36, 82);
sprite_change_offset("land", 36, 82);
sprite_change_offset("landinglag", 36, 82);

sprite_change_offset("parry", 36, 84);
sprite_change_offset("roll_forward", 36, 84);
sprite_change_offset("roll_backward", 36, 84);
sprite_change_offset("airdodge", 36, 84);
sprite_change_offset("waveland", 36, 84);
sprite_change_offset("tech", 36, 82);

sprite_change_offset("jab", 52, 94);
sprite_change_offset("dattack", 36, 86);
	sprite_change_offset("dattack_air", 36, 86);
sprite_change_offset("ftilt", 36, 86);
sprite_change_offset("dtilt", 42, 82);
sprite_change_offset("utilt", 36, 118);
sprite_change_offset("nair", 36, 82);
sprite_change_offset("fair", 36, 82);
sprite_change_offset("bair", 54, 100);
sprite_change_offset("uair", 42, 114);
sprite_change_offset("dair", 48, 104);
sprite_change_offset("fstrong", 56, 106);
sprite_change_offset("ustrong", 58, 142);
sprite_change_offset("dstrong", 60, 86);
	sprite_change_offset("dstrong_fu", 60, 86);
sprite_change_offset("nspecial", 32, 84);
sprite_change_offset("fspecial", 38, 86);
	sprite_change_offset("fspecial_charge_overlay", 38, 86);
sprite_change_offset("uspecial", 36, 84);
sprite_change_offset("dspecial", 36, 86);
sprite_change_offset("taunt", 56, 106);
	
sprite_change_offset("plat", 76, 22);
sprite_change_offset("dennisheadout", 82, 312);

sprite_change_offset("h_fall", 32, 24);
sprite_change_offset("h_move", 32, 24);
sprite_change_offset("h_turn", 32, 24);
	sprite_change_offset("h_b_fall", 32, 24);
	sprite_change_offset("h_b_move", 32, 24);
	sprite_change_offset("h_b_turn", 32, 24);
		sprite_change_offset("h_mask", 32, 50);
sprite_change_offset("blueytank_idle", 37, 62);
	sprite_change_offset("blueytank_mask", 37, 62);
	sprite_change_offset("blueytank_flash", 37, 62);
sprite_change_offset("blueytank_move", 37, 62);
sprite_change_offset("blueytank_turn", 37, 62);
sprite_change_offset("pizzadino_fall", 48, 64);
sprite_change_offset("pizzadino_move", 48, 64);
sprite_change_offset("pizzadino_turn", 48, 64);
	sprite_change_offset("pizzagirl_fall", 48, 64);
	sprite_change_offset("pizzagirl_move", 48, 64);
	sprite_change_offset("pizzagirl_turn", 48, 64);
		sprite_change_offset("pizzadino_mask", 48, 94);

sprite_change_offset("nspecial_proj", 72, 68);
sprite_change_offset("dair_proj", 24, 16);
sprite_change_offset("dair_proj2", 16, 16);
sprite_change_offset("dair_proj3", 14, 14);
sprite_change_offset("blueytank_proj", 10, 10);

sprite_change_offset("blueytank_hud", 20, 38);
sprite_change_offset("h_hud", 20, 38);
	sprite_change_offset("blueytank_hud_overlay", 20, 38);
sprite_change_offset("h_hud_overlay", 20, 38);
sprite_change_offset("uspecial_fuel", 23, 14);
sprite_change_offset("tauntpics", 35, 25);
	sprite_change_offset("tauntpics_cprgt", 35, 25);
sprite_change_offset("blueybottaunt", 35, 25);
sprite_change_offset("notaunt", 35, 25);
set_victory_bg( sprite_get( "victorybg" ));

sprite_change_offset("appear", 28, 28);
sprite_change_offset("tv", 18, 18);
sprite_change_offset("fspecial_hud_h", 18, 18);
sprite_change_offset("fspecial_hud_pizza", 18, 18);


if copyright {
	FStrongPictureSprite = sprite_get("tauntpics_cprgt");	
}	else {
	FStrongPictureSprite = sprite_get("tauntpics");	
}