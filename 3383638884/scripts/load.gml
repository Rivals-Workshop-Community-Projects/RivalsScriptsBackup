set_victory_theme(sound_get("victory_theme"));

//sprite offsets
//general
sprite_change_offset("idle", 40, 56);
sprite_change_offset("s_taunt_idle", 40, 56);
sprite_change_offset("wait", 40, 56);
sprite_change_offset("walk", 40, 56);
sprite_change_offset("walkturn", 40, 48);
sprite_change_offset("dashstart", 40, 56);
sprite_change_offset("dashstop", 40, 56);
sprite_change_offset("dash", 40, 56);
sprite_change_offset("dashturn", 40, 56);
sprite_change_offset("jumpstart", 40, 48);
sprite_change_offset("jump", 40, 48);
sprite_change_offset("doublejump", 40, 56);
sprite_change_offset("walljump", 34, 56);
sprite_change_offset("wallcling", 34, 56);
sprite_change_offset("land", 40, 56);
sprite_change_offset("landinglag", 40, 56);
sprite_change_offset("crouch", 40, 48);

//tilts
sprite_change_offset("jab", 24, 64);
sprite_change_offset("jab_hurt", 48, 128);
sprite_change_offset("ftilt", 40, 56);
sprite_change_offset("ftilt_hurt", 80, 112);
sprite_change_offset("dtilt", 56, 63);
sprite_change_offset("dtilt_hurt", 112, 126);
sprite_change_offset("dtilt_mach", 56, 63);
sprite_change_offset("dtilt_mach_hurt", 112, 126);
sprite_change_offset("utilt", 44, 63);
sprite_change_offset("utilt_hurt", 88, 126);
sprite_change_offset("dattack", 32, 42);
sprite_change_offset("dattack_hurt", 64, 84);

//aerials
sprite_change_offset("bair", 48, 56);
sprite_change_offset("bair_hurt", 96, 112);
sprite_change_offset("nair", 40, 56);
sprite_change_offset("nair_hurt", 80, 112);
sprite_change_offset("uair", 40, 56);
sprite_change_offset("uair_hurt", 80, 112);
sprite_change_offset("dair", 40, 56);
sprite_change_offset("dair_hurt", 80, 112);
sprite_change_offset("fair", 40, 56);
sprite_change_offset("fair_hurt", 80, 112);

//specials
sprite_change_offset("dspecial", 48, 56);
sprite_change_offset("dspecial_hurt", 96, 112);
sprite_change_offset("clone", 40, 32);
sprite_change_offset("clone_mask", 40, 32);
sprite_change_offset("nspecial", 40, 56);
sprite_change_offset("parry_taunt", 40, 56);
sprite_change_offset("peddito_taunt", 40, 56);
sprite_change_offset("machrun", 40, 56);
sprite_change_offset("supertaunt1", 40, 56);
sprite_change_offset("supertaunt2", 40, 56);
sprite_change_offset("supertaunt3", 40, 56);
sprite_change_offset("uspecial", 40, 56);
sprite_change_offset("uspecial_glow", 40, 24);
sprite_change_offset("uspecial_hurt", 80, 112);

//strongs
sprite_change_offset("fstrong", 42, 54);
sprite_change_offset("fstrong_hurt", 84, 108);
sprite_change_offset("fstrong_proj", 20, 18);
sprite_change_offset("fstrong_brown", 42, 54);
sprite_change_offset("dstrong", 64, 72);
sprite_change_offset("dstrong_hurt", 128, 144);
sprite_change_offset("ustrong", 40, 56);
sprite_change_offset("ustrong_hurt", 80, 112);

//hurt
sprite_change_offset("pratfall", 40, 56);
sprite_change_offset("uair_pratfall", 40, 56);
sprite_change_offset("crystalized", 24, 43);
sprite_change_offset("hurt", 40, 56);
sprite_change_offset("bighurt", 40, 56);
sprite_change_offset("hurtground", 40, 56);
sprite_change_offset("downhurt", 40, 56);
sprite_change_offset("spinhurt", 40, 56);
sprite_change_offset("stun", 40, 56);

//dodges
sprite_change_offset("parry", 32, 48);
sprite_change_offset("parried", 32, 48);
sprite_change_offset("airdodge", 40, 52);
sprite_change_offset("roll_forward", 40, 56);
sprite_change_offset("roll_backward", 40, 56);
sprite_change_offset("tech", 40, 56);
sprite_change_offset("waveland", 40, 56);

//misc hitboxes
sprite_change_offset("dashbox", 80, 110);
hurtbox_spr = sprite_get("dashbox");
sprite_change_offset("crouchbox", 80, 90);
crouchbox_spr = sprite_get("crouchbox");

//taunts
sprite_change_offset("head_off", 40, 64);

//misc
set_victory_bg(sprite_get("victory_bg"));
sprite_change_offset("plat", 17, 0);
sprite_change_offset("intro", 27, 72);
sprite_change_offset("entrance", 27, 72);
sprite_change_offset("taunt_fx", 48, 72);
sprite_change_offset("sparks", 40, 56);
sprite_change_offset("projectile", 16, 16);
sprite_change_offset("peppino_intro", 20, 48);
sprite_change_offset("noise_intro", 15, 47);

//animation speeds
idle_anim_speed = 0.15;
walk_anim_speed = 0.25;
dash_anim_speed = 0.4;
walk_speed = 4.5;
walk_accel = 0.5;


//miiverse
sprite_change_offset("_miiverse", 60, 30);

//kirby
sprite_change_offset("_kirby_nspecial", 40, 62);
sprite_change_offset("_kirby_nspecial_hurt", 40, 62);

//MunoPhone Touch
sprite_change_offset("phone_open", 34, 48);
