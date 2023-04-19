var load_x = 47;
var load_y = 72;

sprite_change_offset("idle", load_x, load_y, true);
sprite_change_offset("idle_air", load_x, load_y, true);
sprite_change_offset("crouch", load_x, load_y, true);
sprite_change_offset("walk", load_x, load_y, true);
sprite_change_offset("walkturn", load_x, load_y, true);
sprite_change_offset("dash", load_x, load_y, true);
sprite_change_offset("dashstart", load_x, load_y, true);
sprite_change_offset("dashstop", load_x, load_y, true);
sprite_change_offset("dashturn", load_x, load_y, true);

sprite_change_offset("hurt", load_x, load_y, true);
sprite_change_offset("bighurt", load_x, load_y, true);
sprite_change_offset("hurtground", load_x, load_y, true);
sprite_change_offset("uphurt", load_x, load_y, true);
sprite_change_offset("downhurt", load_x, load_y, true);
sprite_change_offset("bouncehurt", load_x, load_y, true);
sprite_change_offset("spinhurt", load_x, load_y, true);

sprite_change_offset("jumpstart", load_x, load_y, true);
sprite_change_offset("jump", load_x, load_y, true);
sprite_change_offset("doublejump", load_x, load_y, true);
sprite_change_offset("walljump", load_x, load_y, true);
sprite_change_offset("pratfall", load_x, load_y, true);
sprite_change_offset("land", load_x, load_y, true);
sprite_change_offset("landinglag", load_x, load_y, true);

sprite_change_offset("parry", load_x, load_y, true);
sprite_change_offset("roll_forward", load_x, load_y, true);
sprite_change_offset("roll_backward", load_x, load_y, true);
sprite_change_offset("airdodge", load_x, load_y, true);
sprite_change_offset("waveland", load_x, load_y, true);
sprite_change_offset("tech", load_x, load_y, true);

sprite_change_offset("jab", load_x, load_y, true);
sprite_change_offset("dattack", load_x, load_y, true);
sprite_change_offset("ftilt", load_x, load_y, true);
sprite_change_offset("dtilt", load_x, load_y, true);
sprite_change_offset("utilt", load_x, load_y, true);
sprite_change_offset("nair", load_x, load_y, true);
sprite_change_offset("fair", load_x, load_y, true);
sprite_change_offset("bair", load_x, load_y, true);
sprite_change_offset("uair", load_x, load_y, true);
sprite_change_offset("dair", load_x, load_y, true);
sprite_change_offset("fstrong", load_x, load_y, true);
sprite_change_offset("ustrong", load_x, load_y, true);
sprite_change_offset("dstrong", load_x, load_y, true);
sprite_change_offset("nspecial", load_x, load_y, true);
sprite_change_offset("fspecial", load_x, load_y, true);
sprite_change_offset("fthrow", load_x, load_y, true);
sprite_change_offset("uspecial", load_x, load_y, true);
sprite_change_offset("dspecial", load_x, load_y, true);
sprite_change_offset("taunt", load_x, load_y, true);

// projectiles/articles
load_x *= 2;
load_y *= 2;

sprite_change_offset("cheese", load_x, load_y - 16);
sprite_change_offset("cheese_land_fx", load_x, load_y - 26);
sprite_change_offset("cheese_destroy_fx", load_x, load_y);

sprite_change_offset("pizza", load_x, load_y);
sprite_change_offset("pizza_land_fx", load_x, load_y - 2);
sprite_change_offset("pizza_destroy_fx", load_x, load_y);

// plat
sprite_change_offset("plat", 32, 0);
