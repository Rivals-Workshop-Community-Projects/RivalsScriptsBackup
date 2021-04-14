sprite_change_offset("idle", 36, 72);
sprite_change_offset("hurt", 32, 62);
sprite_change_offset("hurtground", 20, 58);
sprite_change_offset("uphurt", 20, 58);
sprite_change_offset("downhurt", 20, 64);
sprite_change_offset("bighurt", 20, 58);
sprite_change_offset("crouch", 36, 72);
sprite_change_offset("walk1", 36, 72);
sprite_change_offset("walk2", 36, 72);
sprite_change_offset("walkturn", 36, 72);
sprite_change_offset("dash", 36, 72);
sprite_change_offset("dashstart", 36, 72);
sprite_change_offset("dashstop", 36, 72);
sprite_change_offset("dashturn", 36, 72);

sprite_change_offset("jumpstart", 26, 52);
sprite_change_offset("jump", 26, 120);
sprite_change_offset("doublejump", 26, 118);
sprite_change_offset("walljump", 26, 110);
sprite_change_offset("pratfall", 36, 118);
sprite_change_offset("land", 25, 52);
sprite_change_offset("landinglag", 25, 50);
sprite_change_offset("parried", 26, 118);

sprite_change_offset("parry", 80, 120);
sprite_change_offset("roll_forward", 36, 118);
sprite_change_offset("roll_backward", 36, 118);
sprite_change_offset("airdodge", 94, 101);
sprite_change_offset("waveland", 26, 118);
sprite_change_offset("tech", 50, 118);

sprite_change_offset("jab", 36, 118);
sprite_change_offset("dattack", 30, 118);
sprite_change_offset("ftilt", 32, 118);
sprite_change_offset("dtilt", 25, 118);
sprite_change_offset("utilt", 72, 118);
sprite_change_offset("nair", 50, 118);
sprite_change_offset("fair", 30, 118);
sprite_change_offset("bair", 59, 118);
sprite_change_offset("uair", 30, 118);
sprite_change_offset("dair", 32, 118);
sprite_change_offset("fstrong", 90, 198);
sprite_change_offset("ustrong", 40, 192);
sprite_change_offset("dstrong", 32, 118);
sprite_change_offset("nspecial", 32, 118);
sprite_change_offset("fspecial", 32, 118);
sprite_change_offset("uspecial", 100, 200);
sprite_change_offset("dspecial", 32, 118);
sprite_change_offset("taunt", 40, 198);

sprite_change_offset("plat", 98, 94);

sprite_change_offset("nspecial_proj", 64, 60);
sprite_change_offset("dspecial_proj", 64, 48);
sprite_change_offset("fspecial_proj", 130, 70);
sprite_change_offset("debuff", 10, 2);
sprite_change_offset("explode", 22, 10);
sprite_change_offset("uspecialfling", 100, 200);
sprite_change_offset("uspecialcancel", 100, 200);
sprite_change_offset("hit_fx_tada", 67, 85);
sprite_change_offset("hit_fx_swirl", 47, 53);

/*
only one sprite now for dstrong since it was the same animation for all 3 spikes
new offset to accomodate the empty space on the sprites getting taken out to make it more compact
and some dark wizardry to make the mask offset work
*/
sprite_change_offset("dstrong_proj_1", 24, 94);
sprite_change_offset("dstrong_proj_1mask", 24, 94);
sprite_change_collision_mask("dstrong_proj_1mask", true, 2, 0, 0, 48, 85, 0 );
