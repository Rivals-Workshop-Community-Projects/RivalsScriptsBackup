sprite_change_offset("idle", 46, 82);
sprite_change_offset("hurt", 30, 76);
sprite_change_offset("bighurt", 50, 76);
sprite_change_offset("hurtground", 27, 77);
sprite_change_offset("hurt_crystalized", 12, 38);
sprite_change_offset("crouch", 78, 92);
sprite_change_offset("walk", 74, 104);
sprite_change_offset("walkturn", 56, 110);
sprite_change_offset("dash", 64, 88);
sprite_change_offset("dashstart", 64, 88);
sprite_change_offset("dashstop", 84, 82);
sprite_change_offset("dashturn", 84, 92);

sprite_change_offset("jumpstart", 80, 132);
sprite_change_offset("jump", 84, 126);
sprite_change_offset("doublejump", 108, 88);
sprite_change_offset("walljump", 21, 96);
sprite_change_offset("pratfall", 44, 76);
sprite_change_offset("land", 80, 132);
sprite_change_offset("landinglag", 80, 132);

sprite_change_offset("parry", 83, 90);
sprite_change_offset("roll_forward", 54, 88);
sprite_change_offset("roll_backward", 54, 88);
sprite_change_offset("airdodge", 90, 80);
sprite_change_offset("waveland", 74, 80);
sprite_change_offset("tech", 78, 70);

sprite_change_offset("jab", 80, 86);
sprite_change_offset("dattack", 136, 126);
sprite_change_offset("ftilt", 96, 128);
sprite_change_offset("dtilt", 80, 64);
sprite_change_offset("utilt", 80, 128);
sprite_change_offset("nair", 96, 106);
sprite_change_offset("fair", 80, 106);
sprite_change_offset("bair", 80, 96);
sprite_change_offset("uair", 96, 140);
sprite_change_offset("dair", 100, 120);
sprite_change_offset("fstrong", 90, 122);
sprite_change_offset("ustrong", 80, 114);
sprite_change_offset("dstrong", 106, 134);
sprite_change_offset("nspecial", 116, 108);
sprite_change_offset("fspecial", 116, 108);
sprite_change_offset("uspecial", 116, 132);
sprite_change_offset("dspecial", 48, 94);
sprite_change_offset("taunt", 78, 102);
sprite_change_offset("dance", 18, 60);

sprite_change_offset("plat", 90, 110);

sprite_change_offset("nspecial_proj", 64, 94);
sprite_change_offset("artc_dspec", 24, 24);
sprite_change_offset("artc_dspec_mask", 26, 56);
sprite_change_offset("hud_savemeter", 27, 0);

sprite_change_offset("fx_dspec_star", 129, 129);
sprite_change_offset("fx_dspec_teleport", 92, 106);
sprite_change_offset("fx_savestate", 64, 64);
sprite_change_offset("fx_strike", 20, 71);
sprite_change_offset("fx_strike_up", 51, 90);
sprite_change_offset("fx_strike_down", 51, 30);
sprite_change_offset("fx_gouge", 45, 64);
sprite_change_offset("vfx_strike", 0, 71);
sprite_change_offset("nspec_proj", 150, 110);
sprite_change_offset("rune_proj", sprite_get_xoffset(asset_get("sword_fsmash_proj_loop")), sprite_get_yoffset(asset_get("sword_fsmash_proj_loop")) - 70);
sprite_change_offset("rune_proj_end", sprite_get_xoffset(asset_get("sword_fsmash_proj_end")), sprite_get_yoffset(asset_get("sword_fsmash_proj_end")) - 70);

for(var i = 1; i <= 8; i++){
    sprite_change_offset("portrait_frame_" + string(i), -80, -3);
}

set_victory_bg(sprite_get("victorybg"));
set_victory_theme(sound_get("charavictory"));

//skin handler
user_event(0);

//this color setup is here cuz we need the colorO array to check chara's current color
save_flash_col = make_color_rgb(
    colorO[7*4 + 0]*255,
    colorO[7*4 + 1]*255,
    colorO[7*4 + 2]*255
);