xoff=48
yoff=38*2
airyoff=yoff+18

sprite_change_offset("spear", 32, 32);
sprite_change_offset("spearbox", 32, 32);
sprite_change_offset("speardet", 32, 32);
sprite_change_collision_mask( "spearbox", false, 2, 0, 0, 64, 64, 0)

sprite_change_offset("smoke", 32, 32);
sprite_change_offset("string", 0, 3);
sprite_change_offset("ftaunt", 70, 140);
sprite_change_offset("btaunt", 70, 140);
sprite_change_offset("tank", 16, 16);
sprite_change_offset("hitbox", xoff, yoff);
sprite_change_offset("duckbox", xoff, yoff);
sprite_change_offset("dts", xoff, yoff);

sprite_change_offset("big_tank", 0, 16);
sprite_change_offset("gas", 0, 12);

sprite_change_offset("idle", xoff, yoff);
sprite_change_offset("hurt", xoff, yoff);
sprite_change_offset("crouch", xoff, yoff);
sprite_change_offset("walk", xoff, yoff);
sprite_change_offset("walkturn", xoff, yoff);
sprite_change_offset("dash", xoff, yoff);
sprite_change_offset("dashstart", xoff, yoff);
sprite_change_offset("dashstop", xoff, yoff);
sprite_change_offset("dashturn", xoff, yoff);

sprite_change_offset("jumpstart", xoff, yoff);
sprite_change_offset("jump", xoff, yoff);
sprite_change_offset("doublejump", xoff, yoff);
sprite_change_offset("walljump", xoff, yoff);
sprite_change_offset("pratfall", xoff, yoff);
sprite_change_offset("land", xoff, yoff);
sprite_change_offset("landinglag", xoff, yoff);

sprite_change_offset("parry", xoff, yoff);
sprite_change_offset("roll_forward", xoff, yoff);
sprite_change_offset("roll_backward", xoff, yoff);
sprite_change_offset("airdodge", xoff, yoff);
sprite_change_offset("waveland", xoff, yoff);
sprite_change_offset("tech", xoff, yoff);

sprite_change_offset("jab", 70, 140);
sprite_change_offset("dattack", xoff, 100);
sprite_change_offset("ftilt", 90, yoff);
sprite_change_offset("dtilt", xoff, yoff);
sprite_change_offset("utilt", 70, 140);
sprite_change_offset("nair", 64, airyoff);
sprite_change_offset("fair", xoff, airyoff);
sprite_change_offset("bair", 80, yoff);
sprite_change_offset("uair", xoff, yoff+60);
sprite_change_offset("dair", 70, yoff);
sprite_change_offset("fstrong", xoff, airyoff-4);
sprite_change_offset("ustrong", xoff,yoff+60);
sprite_change_offset("dstrong", 70, 140);
sprite_change_offset("nspecial", xoff, yoff);
sprite_change_offset("detonate", xoff, yoff);
sprite_change_offset("fspecial", xoff, yoff);
sprite_change_offset("uspecial", xoff, yoff);
sprite_change_offset("dspecial", 64, yoff);
sprite_change_offset("taunt", xoff, yoff);

sprite_change_offset("plat", 64, 94);

set_victory_theme(sound_get("winlow"))