var load_x_old = 105
var load_y_old = 124

var load_x = 32*2
var load_y = 58*2

var load_x_2 = 52*2
var load_y_2 = 62*2

sprite_change_offset("crouchbox", 48, 25); 
sprite_change_offset("hurt_crouch", 48, 25); // yes, this is necessary
                                             // for whatever reason, crouchbox_spr cannot be assigned to attacks.

sprite_change_offset("intro1", 130*2, 193*2); //listen.
sprite_change_offset("intro2", 130*2, 193*2); //listen.

sprite_change_offset("idle", load_x, load_y);
sprite_change_offset("idle_plat", load_x, load_y);
sprite_change_offset("hurt", load_x, load_y);
sprite_change_offset("bighurt", load_x, load_y);
sprite_change_offset("downhurt", load_x, load_y);
sprite_change_offset("uphurt", load_x, load_y);
sprite_change_offset("hurtground", load_x, load_y);
sprite_change_offset("spinhurt", load_x, load_y);

sprite_change_offset("crouch", load_x, load_y);
sprite_change_offset("walk", load_x, load_y);
sprite_change_offset("walkturn", load_x, load_y);
sprite_change_offset("dash", load_x, load_y);
sprite_change_offset("dashstart", load_x, load_y);
sprite_change_offset("dashstop", load_x, load_y);
sprite_change_offset("dashturn", load_x, load_y);
sprite_change_offset("crawl", load_x, load_y);
sprite_change_offset("crawlturn", load_x, load_y);

sprite_change_offset("jumpstart", load_x, load_y);
sprite_change_offset("jump", load_x, load_y);
sprite_change_offset("jump_strap", load_x, load_y);
sprite_change_offset("doublejump", load_x, load_y);
sprite_change_offset("doublejump_strap", load_x, load_y);
sprite_change_offset("walljump", load_x, load_y);
sprite_change_offset("pratfall", load_x, load_y);
sprite_change_offset("land", load_x, load_y);
sprite_change_offset("landinglag", load_x, load_y);

sprite_change_offset("parry", load_x, load_y);
sprite_change_offset("roll_forward", load_x, load_y);
sprite_change_offset("roll_backward", load_x, load_y);
sprite_change_offset("airdodge", load_x, load_y);
sprite_change_offset("waveland", load_x, load_y);
sprite_change_offset("tech", load_x, load_y);
sprite_change_offset("jab", load_x, load_y);
sprite_change_offset("dattack", load_x, load_y);
sprite_change_offset("ftilt", load_x, load_y);
sprite_change_offset("dtilt", load_x, load_y);
sprite_change_offset("utilt", load_x, load_y);
sprite_change_offset("nair", load_x, load_y);
sprite_change_offset("nair_strap", load_x, load_y);
sprite_change_offset("fair", load_x, load_y);
sprite_change_offset("fair_strap", load_x, load_y);
sprite_change_offset("bair", load_x, load_y);
sprite_change_offset("bair_strap", load_x, load_y);
sprite_change_offset("uair", load_x, load_y);
sprite_change_offset("uair_strap", load_x, load_y);
sprite_change_offset("dair",load_x, load_y);
sprite_change_offset("dair_strap", load_x, load_y);
sprite_change_offset("fstrong", load_x, load_y);
sprite_change_offset("ustrong", load_x, load_y);
sprite_change_offset("dstrong", load_x, load_y);
sprite_change_offset("nspecial", load_x, load_y);
sprite_change_offset("nspecial_air", load_x, load_y);
sprite_change_offset("nspecial_air_strap", load_x, load_y);
sprite_change_offset("nspecial_eaover", 38, 52);
sprite_change_offset("fspec_base", load_x, load_y);
sprite_change_offset("fspec_air", load_x, load_y);
sprite_change_offset("fspec_air_strap", load_x, load_y);
sprite_change_offset("fspec_eaover", 36, 48);
sprite_change_offset("fspec_swing", load_x, load_y);
sprite_change_offset("fspec_swing_strap", load_x, load_y);

sprite_change_offset("uspecial", load_x, load_y);
sprite_change_offset("dspecial", load_x, load_y);
sprite_change_offset("dspecial_air", load_x, load_y);
sprite_change_offset("dspecial_air_strap", load_x, load_y);

sprite_change_offset("taunt", load_x, load_y);
sprite_change_offset("taunt_2", load_x, load_y);

// plat is a null texture
sprite_change_offset("plat_idle", load_x, load_y);
sprite_change_offset("plat_idle_ea", load_x, load_y);
sprite_change_offset("plat_fly", load_x, load_y);
sprite_change_offset("plat_fly_ea", load_x, load_y);

sprite_change_offset("nspecial_proj", 64, 94);

//                  --other sprite offsets (no small_sprites)--               //
// includes projectiles, vfx, articles

sprite_change_offset("grapple_assist_mask_1"    , 0,  42);
sprite_change_offset("grapple_assist_mask_-1"   , 290,  42);

sprite_change_offset("parachute"                , load_x, load_y);
sprite_change_offset("parachute_col"            , load_x, load_y);
sprite_change_offset("parachute_ea"             , load_x, load_y);

sprite_change_offset("fspec_proj"               , 6,  14);
sprite_change_offset("fspec_proj_ea"               , 6,  14);
sprite_change_offset("rope", 0, 4);
sprite_change_offset("rope_ea", 0, 4);

sprite_change_offset("drone", 62, 72);
sprite_change_offset("drone_primed", 62, 72);
sprite_change_offset("drone_blur", 62, 72);
sprite_change_offset("drone_ea", 62, 72);
sprite_change_offset("drone_primed_ea", 62, 72);
sprite_change_offset("drone_blur_ea", 62, 72);
sprite_change_offset("drone_mask", 28, 20);

sprite_change_offset("dspecial_art", load_x, load_y);
sprite_change_offset("dspecial_art_ea", load_x, load_y);
sprite_change_offset("dspecial_art_mask", load_x, load_y);
sprite_change_offset("dspec_proj", load_x, load_y);
sprite_change_offset("dspec_proj_ea", load_x, load_y);
sprite_change_offset("dspec_warn", 26, 26);
sprite_change_offset("dspec_warn_ea", 26, 26);

sprite_change_offset("ustrong_vfx", load_x, load_y);
sprite_change_offset("vfx_dspec_button", 38, 38);
sprite_change_offset("dspec_explode", 104, 136);
sprite_change_offset("dspec_explode_gr", 104, 136);
sprite_change_offset("fstrong_hfx1", 53, 48);
sprite_change_offset("fstrong_hfx2", 53, 48);

sprite_change_offset("fx_medium_circle1", 174, 168);
