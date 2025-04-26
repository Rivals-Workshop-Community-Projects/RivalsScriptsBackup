if (get_player_color(player) == 18){
	set_victory_theme(sound_get("finalfanfare"));
} else {
	set_victory_theme( sound_get( "winmusic" ));
}

sprite_change_offset("hurtbox", 64, 94);
sprite_change_offset("crouchbox", 64, 94);

sprite_change_offset("idle", 32, 47, true);
sprite_change_offset("crouch", 32, 47, true);
sprite_change_offset("walk", 32, 47, true);
sprite_change_offset("walkturn", 32, 47, true);
sprite_change_offset("dash", 48, 47, true);
sprite_change_offset("dashstart", 32, 47, true);
sprite_change_offset("dashstop", 32, 47, true);
sprite_change_offset("dashturn", 32, 47, true);

sprite_change_offset("jumpstart", 32, 47, true);
sprite_change_offset("jump", 32, 47, true);
sprite_change_offset("doublejump", 32, 47, true);
sprite_change_offset("walljump", 32, 47, true);
sprite_change_offset("pratfall", 32, 47, true);
sprite_change_offset("land", 32, 47, true);
sprite_change_offset("landinglag", 32, 47, true);

sprite_change_offset("parry", 32, 47, true);
sprite_change_offset("roll_forward", 16, 47, true);
sprite_change_offset("roll_backward", 32, 47, true);
sprite_change_offset("airdodge", 32, 47, true);
sprite_change_offset("waveland", 32, 47, true);
sprite_change_offset("tech", 32, 47, true);
sprite_change_offset("tech_forward", 16, 47, true);
sprite_change_offset("tech_backward", 32, 47, true);

sprite_change_offset("hurt", 16, 47, true);
sprite_change_offset("hurtground", 16, 47, true);
sprite_change_offset("uphurt", 32, 47, true);
sprite_change_offset("downhurt", 16, 47, true);
sprite_change_offset("bighurt", 16, 47, true);
sprite_change_offset("bouncehurt", 32, 47, true);
sprite_change_offset("spinhurt", 32, 47, true);

sprite_change_offset("jab", 32, 47, true);
sprite_change_offset("dattack", 48, 47, true);
sprite_change_offset("ftilt", 32, 47, true);
sprite_change_offset("dtilt", 48, 47, true);
sprite_change_offset("utilt", 48, 63, true);
sprite_change_offset("nair", 32, 47, true);
sprite_change_offset("fair", 32, 47, true);
sprite_change_offset("bair", 32, 47, true);
sprite_change_offset("uair", 48, 63, true);
sprite_change_offset("dair", 32, 63, true);
sprite_change_offset("fstrong", 48, 47, true);
sprite_change_offset("ustrong", 32, 47, true);
sprite_change_offset("dstrong", 48, 47, true);
sprite_change_offset("nspecial", 48, 47, true);
sprite_change_offset("nspecial_air", 48, 47, true);
sprite_change_offset("fspecial", 32, 47, true);
sprite_change_offset("fspecial_air", 32, 47, true);
sprite_change_offset("fthrow", 48, 47, true);
sprite_change_offset("fthrow_air", 48, 47, true);
sprite_change_offset("bthrow", 48, 47, true);
sprite_change_offset("bthrow_air", 48, 47, true);
sprite_change_offset("uspecial", 32, 47, true);
sprite_change_offset("uspecial_air", 32, 47, true);
sprite_change_offset("dspecial", 32, 47, true);
sprite_change_offset("dspecial_air", 32, 47, true);
sprite_change_offset("taunt", 32, 47, true);
sprite_change_offset("plat", 32, 15, true);
sprite_change_offset("plat_back", 32, 47, true);

sprite_change_offset("melon", 32, 32);
sprite_change_offset("melon_big", 32, 32);
sprite_change_offset("melon_twirl", 32, 32);
sprite_change_offset("melon_collision", 32, 32);
sprite_change_offset("splat", 96, 96);
sprite_change_offset("splat_small", 64, 72);
sprite_change_offset("pumpkin", 64, 94);
sprite_change_offset("umbrellaleaf_open", 64, 94);
sprite_change_offset("umbrellaleaf_idle", 64, 94);
sprite_change_offset("umbrellaleaf_idle_air", 64, 94);
sprite_change_offset("umbrellaleaf_close", 64, 94);
sprite_change_offset("umbrellaleaf_bounce", 64, 126);
sprite_change_offset("umbrellaleaf_glide", 64, 94);
sprite_change_offset("umbrellaleaf_attacking", 64, 94);
sprite_change_offset("umbrellaleaf_mask", 64, 94);