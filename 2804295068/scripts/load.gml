set_victory_theme( sound_get( "winmusic" ));

sprite_change_offset("idle", 64, 94);
sprite_change_offset("hurt", 64, 94);
sprite_change_offset("hurtground", 64, 94);
sprite_change_offset("uphurt", 64, 94);
sprite_change_offset("downhurt", 64, 94);
sprite_change_offset("bighurt", 64, 94);
sprite_change_offset("bouncehurt", 64, 94);
sprite_change_offset("spinhurt", 64, 94);
sprite_change_offset("crouch", 64, 94);
sprite_change_offset("walk", 64, 94);
sprite_change_offset("walkturn", 64, 94);
sprite_change_offset("dash", 64, 94);
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

sprite_change_offset("jab", 48, 94);
sprite_change_offset("dattack", 32, 94);
sprite_change_offset("ftilt", 64, 94);
sprite_change_offset("dtilt", 48, 94);
sprite_change_offset("utilt", 64, 94);
sprite_change_offset("btilt", 64, 94);
sprite_change_offset("nair", 64, 94);
sprite_change_offset("fair", 64, 94);
sprite_change_offset("bair", 64, 94);
sprite_change_offset("uair", 64, 94);
sprite_change_offset("dair", 64, 94);
sprite_change_offset("fstrong", 64, 94);
sprite_change_offset("fstrong_airraid", 64, 94);
sprite_change_offset("ustrong", 64, 126);
sprite_change_offset("dstrong", 128, 94);
sprite_change_offset("nspecial", 64, 94);
sprite_change_offset("fspecial", 64, 94);
sprite_change_offset("uspecial", 64, 94);
sprite_change_offset("uspecial_air", 64, 94);
sprite_change_offset("uspecial_torched", 64, 94);
sprite_change_offset("dspecial", 64, 94);
sprite_change_offset("taunt_trumpet", 64, 94);
sprite_change_offset("taunt_costume", 64, 158);

sprite_change_offset("plat", 64, 94);

sprite_change_offset("pea", 64, 64);
sprite_change_offset("firepea", 64, 64);
sprite_change_offset("bean_bomb", 64, 64);
sprite_change_offset("bean_bomb_flashing", 64, 64);
sprite_change_offset("torchwood", 64, 94);
sprite_change_offset("torchwood_mask", 64, 94);
sprite_change_offset("torchwood_exhaust", 64, 94);

sprite_change_offset("final_smash", 64, 94);
sprite_change_offset("pea_big", 64, 64);
sprite_change_offset("firepea_big", 64, 64);

sprite_change_offset("peashooter_hurtbox", 64, 94);
sprite_change_offset("crouchbox", 64, 94);
sprite_change_offset("wait", 64, 94);
sprite_change_offset("wait2", 64, 94);

sprite_change_offset("jab_kirby", 32, 62);
sprite_change_offset("helpless", 64, 94);

if (get_player_color(player) == 7){
	set_victory_portrait( sprite_get( "gb_portrait" ));
	set_victory_sidebar( sprite_get( "gb_result_small" ));
}
if (get_player_color(player) == 14){
	if object_index == oPlayer {
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("cosmic_portrait"));
        set_ui_element(UI_HUD_ICON, sprite_get("cosmic_hud"));
        set_ui_element(UI_HUDHURT_ICON, sprite_get("cosmic_hurt"));
        set_ui_element(UI_OFFSCREEN, sprite_get("cosmic_offscreen"));
        set_ui_element(UI_CHARSELECT, sprite_get("cosmic_charselect"));
        set_ui_element(UI_WIN_SIDEBAR, sprite_get("cosmic_result_small"));
    }
}
sprite_change_offset("cosmic_offscreen", 16, 18);