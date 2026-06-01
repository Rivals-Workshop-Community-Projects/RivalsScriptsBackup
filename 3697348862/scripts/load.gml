// load.gml

// Main Offset is 100, 130
var mainX = 100;
var mainY = 130;

// Hurtboxes
sprite_change_offset("__ti84_hurtbox", mainX, mainY);
sprite_change_offset("__ti84_crouchbox", mainX, mainY);

// Grounded Basic
sprite_change_offset("idle", mainX, mainY);
sprite_change_offset("crouch", mainX, mainY);
sprite_change_offset("walk", mainX, mainY);
sprite_change_offset("walkturn", mainX, mainY);
sprite_change_offset("dash", mainX, mainY);
sprite_change_offset("dashstart", mainX, mainY);
sprite_change_offset("dashstop", mainX, mainY);
sprite_change_offset("dashturn", mainX, mainY);

// Hurts
sprite_change_offset("hurt", mainX, mainY);
sprite_change_offset("bighurt", mainX, mainY);
sprite_change_offset("hurtground", mainX, mainY);
sprite_change_offset("bouncehurt", mainX, mainY);
sprite_change_offset("spinhurt", mainX, mainY);
sprite_change_offset("uphurt", mainX, mainY);
sprite_change_offset("downhurt", mainX, mainY);

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
sprite_change_offset("jab", mainX, mainY);
sprite_change_offset("dattack", mainX, mainY);
sprite_change_offset("ftilt", mainX, mainY);
sprite_change_offset("dtilt",  mainX, mainY);
sprite_change_offset("utilt", mainX, mainY);

// Aerials
sprite_change_offset("nair", mainX, mainY);
sprite_change_offset("fair", mainX, mainY);
sprite_change_offset("bair", mainX, mainY);
sprite_change_offset("uair", mainX, mainY);
sprite_change_offset("dair", mainX, mainY);

// Strongs
sprite_change_offset("fstrong", mainX, mainY);
sprite_change_offset("ustrong", mainX, mainY + 30);
sprite_change_offset("dstrong", mainX, mainY);

// Specials
sprite_change_offset("nspecial", mainX, mainY);
sprite_change_offset("nspecial_sd_card", mainX, mainY);	// projectile prototype sprite
sprite_change_offset("nspecial_number_pars", 50, 50);
sprite_change_offset("nspecial_number_proj", 50, 50);
sprite_change_offset("nspecial_numbers", 50, 50);

sprite_change_offset("fspecial", mainX, mainY);
sprite_change_offset("dspecial", mainX, mainY);
sprite_change_offset("__operators", 50, 50);
sprite_change_offset("__operators_hurt", 50, 50);

sprite_change_offset("_vfx_operator_spawn_add", 140, 140);
sprite_change_offset("_vfx_operator_spawn_sub", 140, 140);
sprite_change_offset("_vfx_operator_spawn_mlt", 140, 140);
sprite_change_offset("_vfx_operator_spawn_dvd", 140, 140);
sprite_change_offset("_vfx_operator_travel", 50, 50);
sprite_change_offset("_vfx_operator_arrow", 50, 50);

sprite_change_offset("uspecial", 60, 276);

// Taunt(s)
sprite_change_offset("taunt", mainX, mainY);
sprite_change_offset("taunt_left", mainX, mainY);
sprite_change_offset("taunt_ea", mainX, mainY);
sprite_change_offset("taunt_left_ea", mainX, mainY);

// Respawn Plat
sprite_change_offset("plat", mainX, mainY);

// Misc. Stuff
sprite_change_offset("_offscreen", 34, 34);
sprite_change_offset("_offscreen_operators", 34, 34);
sprite_change_offset("_arrow", 7, 0);
sprite_change_offset("nspecial_proj", 64, 94);

// vfx
sprite_change_offset("vfx_thunder_small", 128/2, 128/2);
sprite_change_offset("vfx_thunder_big", 112, 112);

//Victory Background
set_victory_bg(sprite_get("victory_background"));