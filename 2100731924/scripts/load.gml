sprite_change_offset("idle", 18, 62);
sprite_change_offset("hurtbox", 18, 62);
sprite_change_offset("hurt", 25, 54);
sprite_change_offset("hitstun_hurtbox", 25, 54);
sprite_change_offset("bighurt", 25, 54);
sprite_change_offset("spinhurt", 43, 64);
sprite_change_offset("downhurt", 29, 42);
sprite_change_offset("uphurt", 38, 58);
sprite_change_offset("crouch", 20, 60);
sprite_change_offset("crouchbox", 20, 60);
sprite_change_offset("walk", 18, 64);
sprite_change_offset("walkturn", 22, 62);
sprite_change_offset("dash", 36, 70);
sprite_change_offset("dashstart", 30, 70);
sprite_change_offset("dashstop", 32, 70);
sprite_change_offset("dashturn", 34, 70);

sprite_change_offset("jumpstart", 32, 80);
sprite_change_offset("jump", 30, 70);
sprite_change_offset("doublejump", 36, 76);
sprite_change_offset("walljump", 44, 81);
sprite_change_offset("pratfall", 30, 64);
sprite_change_offset("land", 32, 80);
sprite_change_offset("landinglag", 32, 80);

sprite_change_offset("parry", 30, 90);
sprite_change_offset("roll_forward", 34, 66);
sprite_change_offset("roll_backward", 32, 68);
sprite_change_offset("airdodge", 40, 76);
sprite_change_offset("waveland", 32, 80);
sprite_change_offset("tech", 30, 96);

sprite_change_offset("jab", 18, 62);
sprite_change_offset("dattack", 40, 78);
sprite_change_offset("ftilt", 38, 74);
sprite_change_offset("dtilt", 34, 78);
sprite_change_offset("utilt", 22, 98);
sprite_change_offset("nair", 38, 58);
sprite_change_offset("fair", 36, 72);
sprite_change_offset("bair", 50, 78);
sprite_change_offset("uair", 42, 78);
sprite_change_offset("dair", 40, 74);
sprite_change_offset("fstrong", 48, 96);
sprite_change_offset("fstrong_2", 56, 76);
sprite_change_offset("ustrong", 70, 126);
sprite_change_offset("ustrong_2", 26, 74);
sprite_change_offset("dstrong", 30, 86);
sprite_change_offset("nspecial", 28, 70);
sprite_change_offset("fspecial", 36, 96);
sprite_change_offset("fspecial_back_throw", 44, 90);
sprite_change_offset("fspecial_2", 58, 94);
sprite_change_offset("fspecial_2_ground", 58, 94);
sprite_change_offset("uspecial", 40, 98);
sprite_change_offset("uspecial_2", 38, 102);
sprite_change_offset("dspecial", 18, 64);
sprite_change_offset("dspecial_air", 42, 84);
sprite_change_offset("taunt", 30, 94);
sprite_change_offset("taunt_batitless", 56, 96);
sprite_change_offset("taunt_feri", 40, 84);
sprite_change_offset("taunt_tco", 28, 80);
sprite_change_offset("taunt_tco_paper", 2, 267);
sprite_change_offset("taunt_trum_alto", 34, 72);
sprite_change_offset("textbox", 148, 100);

sprite_change_offset("intro", 56, 96);
sprite_change_offset("intro_ea", 30, 96);
sprite_change_offset("intro_abyss", 56, 96);

sprite_change_offset("plat", 64, 94);

set_victory_theme(sound_get("notdotbatit"));

//projectiles
sprite_change_offset("dspecial_air_proj", 18, 25);
sprite_change_offset("nspecial_proj", 51, 24);
//hud
sprite_change_offset("dspecial_air_proj_HUD_cooldown_indicator", sprite_get_xoffset(sprite_get("dspecial_air_proj")), sprite_get_yoffset(sprite_get("dspecial_air_proj")));
sprite_change_offset("dspecial_air_proj_HUD_cooldown_indicator_mask", sprite_get_xoffset(sprite_get("dspecial_air_proj_HUD_cooldown_indicator")), sprite_get_yoffset(sprite_get("dspecial_air_proj_HUD_cooldown_indicator")));
sprite_change_offset("dspecial_air_proj_HUD_cooldown_indicator_mask_overlay", sprite_get_width(sprite_get("dspecial_air_proj_HUD_cooldown_indicator_mask_overlay"))/2, sprite_get_height(sprite_get("dspecial_air_proj_HUD_cooldown_indicator_mask_overlay")));

//batit
sprite_change_offset("batit", 8, 48);
sprite_change_offset("batit_intro", 12, 54);
sprite_change_offset("batit_dead", 12, 54);
sprite_change_offset("batit_ftilt", 62, 126);
sprite_change_offset("batit_utilt", 28, 66);
sprite_change_offset("batit_kicked", 22, 63);
sprite_change_collision_mask("batit_kicked", false, 2, 14, 21, 31, 64, 0);
sprite_change_offset("batit_kicked_up", 18, 60);
sprite_change_collision_mask("batit_kicked_up", false, 2, 10, 29, 27, 61, 0);
sprite_change_offset("batit_kicked_up_fall", 18, 60);
sprite_change_offset("batit_hurt", 22, 63);
if(!sprite_get_xoffset(sprite_get("batit_explode"))){
    sprite_change_collision_mask("batit_explode", true, 0, 0, 0, 0, 0, 0); // this breaks the sprite if it runs more than once
}
sprite_change_offset("batit_explode", 56, 88);
sprite_change_offset("batit_nspecial", 62, 126);
sprite_change_offset("batit_fstrong", 30, 60);
sprite_change_collision_mask("batit_fstrong", false, 2, 22, 28, 39, 61, 0);
sprite_change_offset("batit_fstrong_charge", 30, 60);
sprite_change_collision_mask("batit_fstrong_charge", false, 2, 22, 28, 39, 61, 0);
sprite_change_offset("batit_ustrong", 20, 96);
sprite_change_offset("batit_ustrong_charge", 20, 96);
sprite_change_offset("batit_taunt", 26, 60);
//batit projectiles
sprite_change_offset("batit_proj", 34, 15);
sprite_change_offset("batit_utilt_proj", 31, 26);
sprite_change_offset("batit_nspecial_proj", 34, 32);
sprite_change_offset("batit_nspecial_particle_fx", 8, 8);
//hfx
sprite_change_offset("batit_leaf_break", 32, 32);
sprite_change_offset("batit_leaf_hfx", 32, 32);
sprite_change_offset("batit_strong_hfx", 80, 80);
sprite_change_offset("batit_sweetspot_hfx", 116, 168);
sprite_change_offset("leaf_fx", 64, 64);
//ui
sprite_change_offset("batit_icon", 20, 26);
sprite_change_offset("batit_hud_bar", 0, 0);
sprite_change_offset("batit_hud_hp", 0, 0);

//feri support
sprite_change_offset("feri_costume_joshua_and_batit", 84, 114);

//kirby support
sprite_change_offset("kirby_nspecial_joshua", 54, 98);
sprite_change_offset("kirby_nspecial_icon", 8, 10);

//miiverse support
sprite_change_offset("miiverse_joshua", 60, 30);