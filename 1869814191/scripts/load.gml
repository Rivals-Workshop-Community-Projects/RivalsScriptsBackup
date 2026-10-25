sprite_change_offset("intro", 196, 140);
sprite_change_offset("idle", 50, 80); //done
sprite_change_offset("hurt", 50, 80);
sprite_change_offset("hurtground", 50, 80);
sprite_change_offset("downhurt", 50, 80);
sprite_change_offset("uphurt", 50, 80);
sprite_change_offset("bighurt", 50, 80);
sprite_change_offset("crouch", 50, 80);
sprite_change_offset("walk", 50, 80);
sprite_change_offset("walkturn", 50, 80); //wanna keep the funny frame but idk?
sprite_change_offset("dash", 50, 86);
sprite_change_offset("dashstart", 50, 86);
sprite_change_offset("dashstop", 50, 86);
sprite_change_offset("dashturn", 35, 86);

sprite_change_offset("jumpstart", 50, 80);
sprite_change_offset("jump", 50, 80);
sprite_change_offset("doublejump", 50, 80);
sprite_change_offset("walljump", 50, 80);
sprite_change_offset("pratfall", 50, 80);
sprite_change_offset("land", 50, 80);
sprite_change_offset("landinglag", 50, 80);

sprite_change_offset("parry", 50, 86);
sprite_change_offset("roll_forward", 50, 80);
sprite_change_offset("roll_backward", 50, 80);
sprite_change_offset("airdodge", 50, 80);
sprite_change_offset("waveland", 50, 80);
sprite_change_offset("tech", 50, 80);

sprite_change_offset("jab", 80, 138);
sprite_change_offset("dattack", 100, 100);
sprite_change_offset("dattack_air", 100, 100);
sprite_change_offset("dattack_bones_head", 8, 0);
sprite_change_offset("dattack_bones_base", 0, 0);
sprite_change_offset("dattack_bones_base_rev", 0, 0);
sprite_change_offset("ftilt", 64, 68); //done
sprite_change_offset("dtilt", 50, 80);
sprite_change_offset("utilt", 118, 118); //done

sprite_change_offset("fstrong", 104, 100);
sprite_change_offset("ustrong", 38, 184); //wip
//sprite_change_offset("ustrong", 50, 180); //wip
sprite_change_offset("dstrong", 118, 118);
sprite_change_offset("dstrong_bone", 38, 90);
sprite_change_offset("dstrong_bone_mask", 12, 22);
sprite_change_offset("dstrong_alert", 50, 80);
sprite_change_offset("dstrong_bones", 50, 80);

sprite_change_offset("nair", 125, 145); //done
sprite_change_offset("fair", 64, 86); //done
sprite_change_offset("bair", 90, 80); //done
sprite_change_offset("uair", 48, 124);
sprite_change_offset("dair", 120, 138); //done

sprite_change_offset("nspecial", 58, 80);
sprite_change_offset("nspecial_air", 58, 80);
//sprite_change_offset("fspecial", 52, 80);
//sprite_change_offset("fspecial_air", 52, 80);
sprite_change_offset("uspecial", 50, 102);
sprite_change_offset("uspecial_air", 50, 102);

sprite_change_offset("fspecial", 120, 90);

sprite_change_offset("dspecial", 100, 118);
sprite_change_offset("dspecial_air", 100, 106);
sprite_change_offset("taunt", 118, 118); //done
sprite_change_offset("ketchup", 50, 80);

sprite_change_offset("plat", 64, 94);

//bone
sprite_change_offset("bone_spin", 32, 64);
sprite_change_offset("bone_vertical", 32, 64);
sprite_change_offset("bone_horizontal", 32, 64);
sprite_change_offset("baby_bone", 32, 64);
sprite_change_offset("baby_blue_bone", 32, 64);
sprite_change_offset("blue_bone_horizontal", 32, 64);
sprite_change_offset("blue_bone_vertical", 32, 64);
sprite_change_offset("bones", 58, 80);

sprite_change_offset("bone_mask_vertical", 37, 64);
sprite_change_offset("bone_mask_horizontal", 32, 64);

//Gaster Blaster stuff
sprite_change_offset("gaster_blaster", 50, 48);
sprite_change_offset("gaster_blaster_ready", 50, 48);
sprite_change_offset("gaster_blaster_firing", 50, 48);
sprite_change_offset("gaster_blaster_beam", 632, 48);

sprite_change_offset("blaster_beam", 0, 13);
sprite_change_offset("blaster_beam_start", 0, 13);
sprite_change_offset("blaster_beam_end", 0, 21);


//Souls
sprite_change_offset("blue_soul", 13, 13);
sprite_change_offset("blank_soul", 13, 13);
sprite_change_offset("arrows", 45, 45);
//diddy kong
sprite_change_offset("banana", 30, 34);
//kirby support
sprite_change_offset("kirb", 48, 64);
//feri support
sprite_change_offset("feri_costume_sans", 84, 114);
sprite_change_offset("sansferi", 84, 114);
//danganronpa
sprite_change_offset("sansganronpa", 31, 0);
//last resort
sprite_change_offset("portrait_sans", 27, 39);
//greenflower
sprite_change_offset("signsans", 18, 41);

//set_victory_theme(sound_get("dogsong")); // "geeettttttt dunked on!!!"
set_victory_theme(sound_get("mus_win_sans")); // song that might play if you fight sans
if get_player_color(player) == 24 set_victory_theme(sound_get("itainteasybeinggreen.mp3"));
if get_player_color(player) == 25 set_victory_theme(sound_get("eyeforaneye"));
if get_player_color(player) == 26 set_victory_theme(sound_get("starlight"));

set_victory_bg(sprite_get( "v_background" ));

sprite_offset_center("blue_bone");
sprite_offset_center("alert_exclamation");

sprite_offset_center("bone_spin");
sprite_offset_center("bone_spin_blue");
sprite_offset_center("bone_spin_orange");
sprite_offset_center("bone_mask");

sprite_change_offset("dtilt_bone", 32, 44);

sprite_change_offset("arrow", 4, 12);
sprite_change_offset("dair_bone", 24, 35);
sprite_change_offset("dtilt_bone_mask", 24, 35);
sprite_change_offset("dstrong_bone_mask", 12, 20);
//sprite_change_offset("dtilt_proj", 16, 18);

//visual effects
sprite_change_offset("hfx_smallboned", 100, 100);
sprite_change_offset("hfx_bigboned", 100, 100);
sprite_change_offset("uspecial_vfx", 68, 92);
sprite_offset_center("hfx_karma");
sprite_offset_center("hfx_karma_big");

sprite_change_offset("hfx_smallboned_blue", 100, 100);

sprite_offset_center("vfx_miss");
sprite_offset_center("vfx_sleep");

sprite_change_offset("sleep", 50, 80);

sprite_offset_center("blue_soul");
sprite_offset_center("monster_soul");

user_event(3);

#define sprite_offset_center(_ind)
sprite_change_offset(_ind,
round(sprite_get_width(sprite_get(_ind))/2), 
round(sprite_get_height(sprite_get(_ind))/2));