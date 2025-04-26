// load.gml

// Main Offset is 100, 130
var mainX = 100/2;
var mainY = 130/2;

// Grounded Basic
sprite_change_offset("idle", mainX, mainY);
sprite_change_offset("crouch", mainX, mainY);
sprite_change_offset("crawl", mainX, mainY);
sprite_change_offset("crawl_racer", mainX, mainY); // f*ck my stupid chungus life!
sprite_change_offset("crawl_kooper", mainX, mainY); // f*ck my stupid chungus life!
sprite_change_offset("crawl_koops", mainX, mainY); // f*ck my stupid chungus life!
sprite_change_offset("walk", mainX, mainY);
sprite_change_offset("walkturn", mainX, mainY);
sprite_change_offset("dash", mainX, mainY);
sprite_change_offset("dashstart", mainX, mainY);
sprite_change_offset("dashstop", mainX, mainY);
sprite_change_offset("dashturn", mainX, mainY);

// Hurts
sprite_change_offset("hurt", mainX, mainY);
sprite_change_offset("bighurt", mainX, mainY);
sprite_change_offset("bighurt_racer", mainX, mainY);
sprite_change_offset("bighurt_kooper", mainX, mainY);
sprite_change_offset("bighurt_koops", mainX, mainY);
sprite_change_offset("hurtground", mainX, mainY);
sprite_change_offset("bouncehurt", mainX, mainY);
sprite_change_offset("spinhurt", mainX, mainY);
sprite_change_offset("uphurt", mainX, mainY);
sprite_change_offset("downhurt", mainX, mainY);

sprite_change_offset("_koopa_hurtbox", mainX*2, mainY*2);
sprite_change_offset("_koopa_crouchbox", mainX*2, mainY*2);

// Hud Stuff
sprite_change_offset("_ui_hud", 0, -2);
sprite_change_offset("_ui_hud_racer", 0, -2);
sprite_change_offset("_ui_hud_kooper", 0, -2);
sprite_change_offset("_ui_hud_koops", 0, -2);
sprite_change_offset("_ui_hurt", 0, -2);
sprite_change_offset("_ui_hurt_racer", 0, -2);
sprite_change_offset("_ui_hurt_kooper", 0, -2);
sprite_change_offset("_ui_hurt_koops", 0, -2);

// Air Basic
sprite_change_offset("jumpstart", mainX, mainY);
sprite_change_offset("jump", mainX, mainY);
sprite_change_offset("doublejump", mainX, mainY);
sprite_change_offset("walljump", mainX, mainY);
sprite_change_offset("pratfall", mainX, mainY);
sprite_change_offset("land", mainX, mainY);
sprite_change_offset("landinglag", mainX, mainY);

// Defense
sprite_change_offset("parry", mainX, mainY);
sprite_change_offset("roll_forward", mainX, mainY);
sprite_change_offset("roll_backward", mainX, mainY);
sprite_change_offset("airdodge", mainX, mainY);
sprite_change_offset("waveland", mainX, mainY);
sprite_change_offset("tech", mainX, mainY);

// Grounded Normals
sprite_change_offset("jab", mainX, mainY, true);
sprite_change_offset("dattack", mainX, mainY, true);
sprite_change_offset("ftilt", mainX, mainY, true);
sprite_change_offset("dtilt", mainX, mainY, true);
sprite_change_offset("utilt", mainX, mainY, true);

// Aerials
sprite_change_offset("nair", mainX, mainY, true);
sprite_change_offset("fair", mainX, mainY, true);
sprite_change_offset("bair", mainX, mainY, true);
sprite_change_offset("uair", mainX, mainY, true);
sprite_change_offset("dair", mainX, mainY, true);

// Strongs
sprite_change_offset("fstrong", mainX, mainY, true);
sprite_change_offset("ustrong", mainX, mainY, true);
sprite_change_offset("dstrong", mainX, mainY, true);

// Specials
sprite_change_offset("nspecial", mainX, mainY, true);
sprite_change_offset("fspecial", mainX, mainY, true);
sprite_change_offset("fspecial_stylish_indicator", mainX*2, mainY*2, true);
sprite_change_offset("fspecial_movevfx", 114, 118, true);
sprite_change_offset("uspecial", mainX, mainY, true);
sprite_change_offset("uspecial_wingfront", mainX*2, mainY*2, true);
sprite_change_offset("uspecial_wingback", mainX*2, mainY*2, true);
sprite_change_offset("dspecial", mainX, mainY, true);

// Koopa Shell
sprite_change_offset("shell_idle", mainX*2, mainY*2);
sprite_change_offset("shell_hurtbox", mainX*2, mainY*2);	// hurtbox
sprite_change_offset("shell_drop", mainX*2, mainY*2);
sprite_change_offset("shell_impact",mainX*2 + 8*2, mainY*2);
sprite_change_offset("shell_spin", mainX*2, mainY*2);

sprite_change_offset("shell_hud", 12, 18);


// Taunt(s)
sprite_change_offset("taunt", mainX, mainY);	// bah bah!
sprite_change_offset("taunt_shell", mainX, mainY);	// shell taunt

// Respawn Plat
sprite_change_offset("plat", mainX, mainY);
sprite_change_offset("plat_real", mainX*2, mainY*2, true);

// indicator
sprite_change_offset("indicator", 7, 10);

// VFX
sprite_change_offset("vfx_shell_hit_lrg", 140, 140, true);
sprite_change_offset("vfx_shell_hit_med", 100, 100, true);
sprite_change_offset("vfx_shell_hit_sml", 80, 80, true);

sprite_change_offset("vfx_stylish", 6 * 2, 20 * 2, true);

// Misc. Stuff
sprite_change_offset("_arrow", 7, 0);
sprite_change_offset("nspecial_proj", 64, 94);

sprite_change_offset("_ui_offscreen", 16, 16);
sprite_change_offset("_ui_offscreen_racer", 16, 16);
sprite_change_offset("_ui_offscreen_kooper", 16, 16);
sprite_change_offset("_ui_offscreen_koops", 16, 16);

//Victory Background
set_victory_bg(sprite_get("victory_background"));