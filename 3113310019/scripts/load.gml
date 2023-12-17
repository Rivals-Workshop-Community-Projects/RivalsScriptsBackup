if (get_player_color(player) == 18){
	set_victory_theme(sound_get("finalfanfare"));
} else {
	set_victory_theme( sound_get( "winmusic" ));
}

sprite_change_offset("hurtbox", 64, 94);
sprite_change_offset("crouchbox", 64, 94);

sprite_change_offset("idle", 64, 94);
sprite_change_offset("crouch", 64, 94);
sprite_change_offset("walk", 64, 94);
sprite_change_offset("walkturn", 64, 94);
sprite_change_offset("dash", 96, 94);
sprite_change_offset("dashstart", 64, 94);
sprite_change_offset("dashstop", 64, 94);
sprite_change_offset("dashturn", 64, 94);

sprite_change_offset("jumpstart", 64, 94);
sprite_change_offset("jump", 64, 94);
sprite_change_offset("doublejump", 64, 94);
sprite_change_offset("walljump", 64, 94);
sprite_change_offset("pratfall", 64, 94);
sprite_change_offset("land", 64, 94);
sprite_change_offset("landinglag", 64, 94);

sprite_change_offset("parry", 64, 94);
sprite_change_offset("roll_forward", 64, 94);
sprite_change_offset("roll_backward", 64, 94);
sprite_change_offset("airdodge", 64, 94);
sprite_change_offset("waveland", 64, 94);
sprite_change_offset("tech", 64, 94);

sprite_change_offset("hurt", 64, 94);
sprite_change_offset("hurtground", 64, 94);
sprite_change_offset("uphurt", 64, 94);
sprite_change_offset("downhurt", 64, 94);
sprite_change_offset("bighurt", 64, 94);
sprite_change_offset("bouncehurt", 64, 94);
sprite_change_offset("spinhurt", 64, 94);

sprite_change_offset("jab", 64, 94);
sprite_change_offset("dattack", 96, 94);
sprite_change_offset("ftilt", 64, 94);
sprite_change_offset("dtilt", 96, 94);
sprite_change_offset("utilt", 96, 126);
sprite_change_offset("nair", 96, 94);
sprite_change_offset("fair", 64, 94);
sprite_change_offset("bair", 64, 94);
sprite_change_offset("uair", 96, 126);
sprite_change_offset("dair", 64, 126);
sprite_change_offset("fstrong", 96, 94);
sprite_change_offset("ustrong", 64, 94);
sprite_change_offset("dstrong", 96, 94);
sprite_change_offset("nspecial", 96, 94);
sprite_change_offset("nspecial_air", 96, 94);
sprite_change_offset("fspecial", 64, 94);
sprite_change_offset("fspecial_air", 64, 94);
sprite_change_offset("fthrow", 96, 94);
sprite_change_offset("fthrow_air", 96, 94);
sprite_change_offset("bthrow", 96, 94);
sprite_change_offset("bthrow_air", 96, 94);
sprite_change_offset("uspecial", 64, 94);
sprite_change_offset("dspecial", 64, 94);
sprite_change_offset("dspecial_air", 64, 94);
sprite_change_offset("taunt", 64, 94);
sprite_change_offset("plat", 64, 94);
sprite_change_offset("plat_back", 64, 94);

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
sprite_change_offset("umbrellaleaf_glide", 56, 86);
sprite_change_offset("umbrellaleaf_attacking", 64, 94);
sprite_change_offset("umbrellaleaf_mask", 64, 94);