sprite_change_offset("idle", 126, 134);
sprite_change_offset("crouch", 126, 134);
sprite_change_offset("walk", 126, 134);
sprite_change_offset("walkturn", 126, 134);
sprite_change_offset("dash", 126, 134);
sprite_change_offset("dashstart", 126, 134);
sprite_change_offset("dashstop", 126, 134);
sprite_change_offset("dashturn", 126, 134);

sprite_change_offset("jumpstart", 126, 134);
sprite_change_offset("jump", 126, 134);
sprite_change_offset("doublejump", 126, 134);
sprite_change_offset("walljump", 126, 134);
sprite_change_offset("pratfall", 136, 134);
sprite_change_offset("land", 126, 134);
sprite_change_offset("landinglag", 126, 134);

sprite_change_offset("parry", 126, 134);
sprite_change_offset("roll_forward", 126, 134);
sprite_change_offset("roll_backward", 126, 134);
sprite_change_offset("airdodge", 126, 134);
sprite_change_offset("waveland", 126, 134);
sprite_change_offset("tech", 126, 134);

sprite_change_offset("jab", 136, 134);
sprite_change_offset("dattack", 136, 134);
sprite_change_offset("ftilt", 136, 134);
sprite_change_offset("dtilt", 136, 134);
sprite_change_offset("utilt", 136, 134);
sprite_change_offset("utilt_dissipation", 136, 134);
sprite_change_offset("nair", 136, 134);
sprite_change_offset("nair_dissipation1", 136, 134);
sprite_change_offset("nair_dissipation2", 136, 134);
sprite_change_offset("fair", 136, 134);
sprite_change_offset("fair_dissipation", 136, 134);
sprite_change_offset("bair", 136, 134);
sprite_change_offset("bair_dissipation1", 136, 134);
sprite_change_offset("bair_dissipation2", 136, 134);
sprite_change_offset("bair_dissipation3", 136, 134);
sprite_change_offset("uair", 136, 134);
sprite_change_offset("uair_dissipation", 136, 134);
sprite_change_offset("dair", 136, 134);
sprite_change_offset("fstrong", 136, 134);
sprite_change_offset("ustrong", 136, 164);
sprite_change_offset("dstrong", 136, 134);
sprite_change_offset("nspecial", 136, 134);
sprite_change_offset("nspecial_2", 136, 134);
sprite_change_offset("fspecial", 136, 134);
sprite_change_offset("uspecial", 136, 134);
sprite_change_offset("uspecial_dissipation1", 136, 134);
sprite_change_offset("uspecial_dissipation2", 136, 134);
sprite_change_offset("dspecial", 136, 134);
sprite_change_offset("dspecial_dissipation", 136, 134);
sprite_change_offset("taunt", 126, 134);

sprite_change_offset("plat", 136, 134);

sprite_change_offset("proj_present", 20, 20);
sprite_change_offset("proj_fspecial", 30, 20);
sprite_change_offset("proj_tree", 48, 64);
sprite_change_offset("art_tree", 48, 146);
sprite_change_offset("art_tree_mask", 48, 148);

//hurts
sprite_change_offset("hurtground", 136, 134);
sprite_change_offset("hurt", 136, 134);
sprite_change_offset("bighurt", 136, 134);
sprite_change_offset("uphurt", 136, 134);
sprite_change_offset("downhurt", 136, 134);

//vfx
sprite_change_offset("fx_small_centershine"     , 174, 168);
sprite_change_offset("fx_small_flashlight"      , 174, 168);
sprite_change_offset("fx_small_flare1"          , 174, 168);
sprite_change_offset("fx_small_flare2"          , 174, 168);
sprite_change_offset("fx_medium_flare1"         , 174, 168);
sprite_change_offset("fx_medium_flare2"         , 174, 168);
sprite_change_offset("fx_small_circle"          , 174, 168);
sprite_change_offset("fx_medium_circle"         , 174, 168);
sprite_change_offset("fx_large_circle"          , 174, 168);

//misc
set_victory_theme(sound_get("sfx_padoru"));
if get_player_color(player) == 19 {
    set_victory_bg(sprite_get("brawl_victory")); // victory_background.png
}


