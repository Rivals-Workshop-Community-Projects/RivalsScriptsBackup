sprite_change_offset("idle", 48, 94);
sprite_change_offset("crouch", 48, 94);
sprite_change_offset("walk", 48, 94);
sprite_change_offset("walkturn", 48, 94);
sprite_change_offset("dash", 48, 94);
sprite_change_offset("dashstart", 48, 94);
sprite_change_offset("dashstop", 48, 94);
sprite_change_offset("dashturn", 48, 94);

sprite_change_offset("jumpstart", 48, 94);
sprite_change_offset("jump", 48, 94);
sprite_change_offset("doublejump", 48, 94);
sprite_change_offset("walljump", 48, 94);
sprite_change_offset("pratfall", 48, 94);
sprite_change_offset("land", 48, 94);
sprite_change_offset("landinglag", 48, 94);

sprite_change_offset("parry", 48, 94);
sprite_change_offset("roll_forward", 48, 94);
sprite_change_offset("roll_backward", 48, 94);
sprite_change_offset("airdodge", 48, 94);
sprite_change_offset("airdodge_forward", 48, 94);
sprite_change_offset("airdodge_downforward", 48, 94);
sprite_change_offset("airdodge_upforward", 48, 94);
sprite_change_offset("airdodge_up", 48, 94);
sprite_change_offset("waveland", 48, 94);
sprite_change_offset("tech", 48, 94);

sprite_change_offset("hurt", 48, 94);
sprite_change_offset("bighurt", 48, 94);
sprite_change_offset("bouncehurt", 48, 94);
sprite_change_offset("spinhurt", 48, 94);
sprite_change_offset("uphurt", 48, 94);
sprite_change_offset("downhurt", 48, 94);


sprite_change_offset("jab", 48, 94);
sprite_change_offset("dattack", 48, 94);
sprite_change_offset("ftilt", 48, 94);
sprite_change_offset("dtilt", 48, 94);
sprite_change_offset("utilt", 48, 94);
sprite_change_offset("nair", 80, 94);
sprite_change_offset("fair", 80, 94);
sprite_change_offset("bair", 80, 94);
sprite_change_offset("uair", 80, 94);
sprite_change_offset("dair", 80, 94);
sprite_change_offset("fstrong", 48, 94);
sprite_change_offset("ustrong", 80, 94);
sprite_change_offset("dstrong", 80, 94);
sprite_change_offset("nspecial", 48, 94);
sprite_change_offset("nspecial_air", 48, 94);
sprite_change_offset("fspecial", 48, 94);
sprite_change_offset("fspecial_air", 48, 94);
sprite_change_offset("uspecial", 48, 126);
sprite_change_offset("uspecial_air", 48, 126);
sprite_change_offset("dspecial", 48, 94);
sprite_change_offset("dspecial_air", 48, 94);
sprite_change_offset("taunt", 48, 94);
sprite_change_offset("taunt_2", 48, 94);
sprite_change_offset("taunt_doggo", 32, 62);
sprite_change_offset("final_smash", 48, 94);
sprite_change_offset("final_smash_lasers", 0, 56);
sprite_change_offset("final_smash_laser", 0, 56);
sprite_change_offset("final_smash_lasere", 0, 56);
sprite_change_offset("final_smash", 48, 94);
sprite_change_offset("final_smash_cinematic", 240, 0);

sprite_change_offset("plat", 64, 32);

sprite_change_offset("nspecial_explosion", 112, 112);
sprite_change_offset("nspecial_explosion_mask", 112, 112);
sprite_change_offset("dspecial_proj", 32, 32);

sword_sprite_change_offset("idle", 80, 78);
sword_sprite_change_offset("walkturn", 80, 78);
sword_sprite_change_offset("hurt", 80, 78);
sword_sprite_change_offset("bighurt", 80, 78);
sword_sprite_change_offset("spinhurt", 80, 78);
sword_sprite_change_offset("uphurt", 80, 78);
sword_sprite_change_offset("downhurt", 80, 78);
sword_sprite_change_offset("final_smash", 128, 78);
sprite_change_offset("sword_mask", 80, 80);
sprite_change_offset("sword_hurtbox", 80, 78);

sprite_change_offset("sword0_ftilt", 128, 62);
sprite_change_offset("sword0_bair", 128, 62);
sprite_change_offset("sword0_utilt", 128, 142);
sprite_change_offset("sword0_uair", 80, 142);
sprite_change_offset("sword0_dtilt", 96, 46);
sprite_change_offset("sword0_dair", 128, 142);

sprite_change_offset("sword1_fstrong", 96, 62);
sprite_change_offset("sword1_ustrong", 112, 142);
sprite_change_offset("sword1_dstrong", 160, 62);

sprite_change_offset("sword0_nspecial", 96, 78);
sprite_change_offset("sword1_nspecial", 96, 78);

sprite_change_offset("sword0_fspecial", 112, 78);
sprite_change_offset("sword1_fspecial", 112, 78);

sprite_change_offset("sword_deathfx", 64, 64);
sprite_change_offset("sword_deathfx2", 0, 264);
sprite_change_offset("hud_healthbar_back", 0, 48);
sprite_change_offset("sword_arrow", 4, 12);

sprite_change_offset("plasma_hit_green1", 62, 62);
sprite_change_offset("plasma_hit_green2", 94, 94);
sprite_change_offset("plasma_hit_tip", 108, 108);
sprite_change_offset("sword_deathfx2", 0, 264);

sprite_change_offset("miiverse", 60, 30);

#define sword_sprite_change_offset(name, off_x, off_y)
sprite_change_offset("sword0" + "_" + name, off_x, off_y);
sprite_change_offset("sword1" + "_" + name, off_x, off_y);