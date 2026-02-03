if (get_player_color(player) != 8) { set_victory_theme( sound_get( "victory" )); }
if (get_player_color(player) == 8) { set_victory_theme( sound_get( "EA_victory" )); }

set_victory_bg( sprite_get( "victory_screen" ));

sprite_change_offset("idle", 64, 108);
sprite_change_offset("mecha_hurt", 22, 88);
sprite_change_offset("hurt", 64, 108);
sprite_change_offset("crouch", 64, 108);
sprite_change_offset("mecha_crouch", 22, 68);
sprite_change_offset("walk", 64, 108);
sprite_change_offset("walkturn", 64, 108);
sprite_change_offset("mecha_dashstart", 32, 80); //Start up hurtbox
sprite_change_offset("mecha_dash", 42, 78); //Dashing hurtbox
sprite_change_offset("dash", 64, 98);
sprite_change_offset("dashstart", 64, 108);
sprite_change_offset("dashstop", 64, 108);
sprite_change_offset("dashturn", 64, 108);

sprite_change_offset("jumpstart", 64, 108);
sprite_change_offset("jump", 64, 108);
sprite_change_offset("doublejump", 64, 108);
sprite_change_offset("mecha_jump", 34, 76); //Double Jump hurtbox
sprite_change_offset("walljump", 64, 108);
sprite_change_offset("pratfall", 62, 98);
sprite_change_offset("land", 64, 108);
sprite_change_offset("landinglag", 64, 108);
sprite_change_offset("landinglag2", 64, 108);
sprite_change_offset("land2", 64, 108);

sprite_change_offset("boosters_light", 35, 30);
sprite_change_offset("boosters", 35, 30);
sprite_change_offset("booster_startup_light", 32, 30);
sprite_change_offset("booster_startup", 32, 30);

sprite_change_offset("parry", 64, 108);
sprite_change_offset("roll_forward", 64, 108); sprite_change_offset("roll_afterimage", 64, 108);
sprite_change_offset("roll_backward", 64, 108); sprite_change_offset("roll2", 64, 108);
sprite_change_offset("airdodge", 64, 108);
sprite_change_offset("airdodge2", 64, 108);
sprite_change_offset("airdodge3", 64, 108);
sprite_change_offset("airdodge_ai", 64, 108);
sprite_change_offset("roll_forward_ai", 64, 108);
sprite_change_offset("waveland", 64, 108);
sprite_change_offset("tech", 64, 108);

sprite_change_offset("jab", 64, 108);
sprite_change_offset("dattack", 64, 108);
sprite_change_offset("ftilt", 64, 108);
sprite_change_offset("dtilt", 64, 94);
sprite_change_offset("dtilt2", 64, 94);
sprite_change_offset("utilt", 64, 108);
sprite_change_offset("nair", 64, 94);
sprite_change_offset("fair", 64, 102);
sprite_change_offset("fair_land", 64, 108);
sprite_change_offset("bair", 84, 114);
sprite_change_offset("bair_land", 84, 108);
sprite_change_offset("uair", 64, 94);
sprite_change_offset("uair_land", 56, 105);
sprite_change_offset("dair", 62, 101);
sprite_change_offset("dair_land", 62, 110);
sprite_change_offset("fstrong", 64, 108);
sprite_change_offset("fstrong_explode", 50, 120);
sprite_change_offset("fstrong_burst_tail", 0, 80);
sprite_change_offset("fstrong_burst_trail", 10, 90); //Actually for Super form Down Special
sprite_change_offset("ustrong", 64, 108);
sprite_change_offset("dstrong", 64, 108);
sprite_change_offset("dstrong2", 64, 108);
sprite_change_offset("nspecial", 64, 108);
sprite_change_offset("nspecial_air", 52, 109);
sprite_change_offset("nspecial_2", 124, 168);
sprite_change_offset("nspecial_followup", 38, 99);
sprite_change_offset("nspecial_proj", 84, 74);
sprite_change_offset("nspecial_air_proj", 84, 74);
sprite_change_offset("nspecial_gunhit", 40, 15);
sprite_change_offset("nspecial_gunhit2", 40, 10);
sprite_change_offset("super_nspecial", 48, 91);
sprite_change_offset("super_nspecial_ball", 62, 62);
sprite_change_offset("nspecial_ball_explode", 126, 132);
sprite_change_offset("fspecial", 98, 108);
sprite_change_offset("fspecial2", 68, 112);
sprite_change_offset("fspecial_followup", 40, 80);
sprite_change_offset("fspecial_charged", 65, 86);
sprite_change_offset("fspecial_charge", 64, 120);
sprite_change_offset("fspecial2_afterimage", 26, 104);
sprite_change_offset("super_fspecial2_afterimage", 26, 104);
sprite_change_offset("fspecial3", 52, 104);
sprite_change_offset("uspecial", 68, 107);
sprite_change_offset("uspecial_ground", 64, 158);
sprite_change_offset("uspecial_ground4", 60, 109);
sprite_change_offset("uspecial_ground_followup2", 72, 116);
sprite_change_offset("super_uspecial", 60, 96);
sprite_change_offset("super_uspecial_beam_start", 12, 19);
sprite_change_offset("super_uspecial_beam_end", 24, 24);
sprite_change_offset("super_uspecial_beam_stretch", 24, 16);
sprite_change_offset("super_uspecial_beam_stretch2", 17, 17);
sprite_change_offset("super_uspecial_beam_stretch3", 24, 17);
sprite_change_offset("super_nspecial_beam_end", 30, 60);
sprite_change_offset("super_beam_small_inside", 27, 27);
sprite_change_offset("super_beam_small_trail", 27, 27);
sprite_change_offset("uspecial_teleportin", 64, 84);
sprite_change_offset("uspecial_proj", 64, 64);
sprite_change_offset("uspecial_proj2", 32, 32); //mini missile
sprite_change_offset("uspecial2_proj", 90, 28); //big missiles spawn
sprite_change_offset("uspecial2_proj2", 64, 34);
sprite_change_offset("uspecial2_proj3", 42, 20); //big missile turn into this half way
sprite_change_offset("uspecial_followup", 70, 110);
sprite_change_offset("dust", 8, 4);
sprite_change_offset("uspecial_proj_sparks", 24, 24);
sprite_change_offset("explode", 64, 64); //big missile death effect
sprite_change_offset("target", 60, 95);
sprite_change_offset("target_lock", 60, 45);
sprite_change_offset("target_indicator", 5, 48);
sprite_change_offset("target_numbers", -14, 49);
sprite_change_offset("dspecial", 68, 108);
sprite_change_offset("dspecial_followup_start", 46, 98);
sprite_change_offset("dspecial_ground", 64, 114);
sprite_change_offset("dspecial_ground_outline", 64, 114);
sprite_change_offset("dspecial_ground_outline2", 64, 114);
sprite_change_offset("dspecial_wall", 54, 102);
sprite_change_offset("dspecial_burst_tail", 0, 70);
sprite_change_offset("dspecial_burst_trail_end", 160, 160);
sprite_change_offset("super_dspecial", 40, 94);
sprite_change_offset("taunt", 64, 108);
sprite_change_offset("taunt1", 64, 108);
sprite_change_offset("taunt_transform", 60, 108);

sprite_change_offset("afterimage_charge", 68, 112);
//sprite_change_offset("gigabeam_stretch", 8, 190);

sprite_change_offset("arrow", 26, 28);
sprite_change_offset("lighspeed_orb", 12, 12);
//sprite_change_offset("lighspeed_line", 40, 80);
sprite_change_offset("lighspeed_line", 8, 60);

sprite_change_offset("shine", 36, 60);

sprite_change_offset("super_burst", 90, 90);

sprite_change_offset("emrl_blink", 7, 6);

sprite_change_offset("electric_1", 12, 8);
sprite_change_offset("electric_2", 12, 8);
sprite_change_offset("electric_3", 12, 8);
sprite_change_offset("electric_4", 12, 8);
sprite_change_offset("electric_5", 12, 8);
sprite_change_offset("ring", 120, 140);

sprite_change_offset("intro0", 180, 114);
sprite_change_offset("intro1", 64, 64);
sprite_change_offset("intro2", 68, 62);
sprite_change_offset("intro3", 64, 64);
sprite_change_offset("intro4", 64, 64);
sprite_change_offset("intro5", 64, 64);
sprite_change_offset("intro6", 64, 64);
sprite_change_offset("intro7", 64, 64);
sprite_change_offset("intro8", 64, 64);

sprite_change_offset("shockwave", 30, 0);
sprite_change_offset("taunt_aura", 0, 14);
sprite_change_offset("electric_effect", 10, 40);
sprite_change_offset("foresight", 64, 108);
sprite_change_offset("super_foresight", 64, 108);
sprite_change_offset("harsh_hit2", 20, 300);
sprite_change_offset("harsh_hit", 32, 32);
sprite_change_offset("timestop_BG", 160, 120);

sprite_change_offset("plat", 64, 94);