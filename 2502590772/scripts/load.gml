

sprite_change_offset("pm_hurtbox", 18, 56);
sprite_change_offset("pm_hurtbox_crouch", 20, 30);
sprite_change_offset("pm_hurtbox_air", 18, 50);
sprite_change_offset("pm_hurtbox_dash", 22, 42);

sprite_change_offset_pm("idle", 40, 78);
sprite_change_offset_pm("crouch", 32, 64);
sprite_change_offset_pm("hurt", 26, 94);
sprite_change_offset_pm("jumpstart", 46, 78);
sprite_change_offset_pm("jump", 32, 60);
sprite_change_offset_pm("doublejump", 32, 62);
sprite_change_offset_pm("walljump", 32, 62);
sprite_change_offset_pm("idle", 40, 78);
sprite_change_offset_pm("walk", 34, 78);
sprite_change_offset_pm("walkturn", 50, 78);
sprite_change_offset_pm("dash", 46, 78);
sprite_change_offset_pm("dashstart", 46, 78);
sprite_change_offset_pm("dashstop", 46, 78);
sprite_change_offset_pm("dashturn", 46, 78);

sprite_change_offset_pm("hurt",         46, 78);
sprite_change_offset_pm("bighurt",      46, 78);
sprite_change_offset_pm("hurtground",   46, 78);
sprite_change_offset_pm("bouncehurt",   46, 78);
sprite_change_offset_pm("spinhurt",     46, 78);
sprite_change_offset_pm("uphurt",       46, 78);
sprite_change_offset_pm("downhurt",     46, 78);
sprite_change_offset_pm("tumble",       46, 78);

sprite_change_offset_pm("jumpstart", 46, 78);
sprite_change_offset_pm("doublejump", 32, 59);
sprite_change_offset_pm("jump", 38, 72);
sprite_change_offset_pm("walljump", 40, 66);
sprite_change_offset_pm("pratfall", 36, 72);
sprite_change_offset_pm("land", 46, 78);
sprite_change_offset_pm("landinglag", 46, 78);

sprite_change_offset_pm("parry", 46, 80);
sprite_change_offset_pm("roll_forward", 40, 66);
sprite_change_offset_pm("roll_backward", 40, 66);
sprite_change_offset_pm("airdodge", 38, 70);
sprite_change_offset_pm("waveland", 38, 80);
sprite_change_offset_pm("tech", 38, 80);

sprite_change_offset_pm("jab", 54, 84);//30, 66);
sprite_change_offset_pm("dattack", 108, 198);
sprite_change_offset_pm("ftilt", 54, 66);
sprite_change_offset_pm("dtilt", 30, 44);
sprite_change_offset_pm("utilt", 102, 118);
sprite_change_offset_pm("nair", 100, 129);
sprite_change_offset_pm("fair", 50, 60);
sprite_change_offset_pm("bair", 120, 129)
sprite_change_offset_pm("dair", 102, 138);
sprite_change_offset_pm("uair", 102, 130);
sprite_change_offset_pm("fstrong", 34, 64);
sprite_change_offset_pm("fstrong_2", 108, 68);
sprite_change_offset_pm("ustrong", 74, 158);
sprite_change_offset_pm("ustrong_2", 104, 198);
sprite_change_offset_pm("dstrong", 104, 118);
sprite_change_offset_pm("dstrong_2", 104, 118);
sprite_change_offset_pm("nspecial", 112, 129);
sprite_change_offset_pm("fspecial", 78, 158);
sprite_change_offset_pm("m_fspecial_2", 78, 158);
sprite_change_offset_pm("uspecial", 100, 133);
sprite_change_offset_pm("uspecial_vertical", 105, 137);
sprite_change_offset_pm("dspecial", 60, 136);
sprite_change_offset_pm("taunt", 36, 64);

sprite_change_offset("m_intro", 46, 94);
sprite_change_offset("intro", 54, 106);

sprite_change_offset_pm("plat", 64, 94);

sprite_change_offset_pm("nspecial_proj", 160, 94);








//articles/projectiles
sprite_change_offset("fspecial_proj_plusle", 108, 32);
sprite_change_offset("fspecial_proj_minun",  42, 38);
sprite_change_offset("fspecial_proj_minun_article_mask",  8, 8);
sprite_change_offset("pluszap", 80, 130);

sprite_change_offset("baton", 60, 60);

sprite_change_offset("debug_cursor", 8, 8);


sprite_change_offset_pm_fx("fxchargeboom1", 64, 64);
sprite_change_offset_pm_fx("fxchargeboom2", 64, 64);
sprite_change_offset_pm_fx("fxchargeboom3", 64, 64);
sprite_change_offset_pm_fx("fxchargedespawn1", 64, 64);
sprite_change_offset_pm_fx("fxchargedespawn2", 64, 64);
sprite_change_offset_pm_fx("fxchargedespawn3", 64, 64);



sprite_change_offset_pm_fx("fxpowerup", 48, 50); //48, 56
sprite_change_offset_pm_fx("fxpowerupfront", 30, 82);

sprite_change_offset_pm_fx("fxarrow", 14, 40);
sprite_change_offset_pm_fx("fxbuff", 89, 89);
sprite_change_offset_pm_fx("fxstatic", 106, 140);
sprite_change_offset_pm_fx("fxdash", 44, 32);
sprite_change_offset_pm_fx("fxthunder", 16, 192);
sprite_change_offset_pm_fx("fxthundertell", 3, 400);
sprite_change_offset_pm_fx("fxcharge", 64, 64);
sprite_change_offset_pm_fx("fxparrycancel", 32, 56);
sprite_change_offset("fxbatoncaught", 90, 96);
sprite_change_offset("fxfstrongtrail", 15, 44);
sprite_change_offset("fxspecialhold", 32, 16);

set_victory_theme(sound_get("victory"));


#define sprite_change_offset_pm(spr_name, x_pos, y_pos)
//sets the sprite offset for both plusle and minun's sprites.
sprite_change_offset(spr_name, x_pos, y_pos);
sprite_change_offset("m_" + spr_name, x_pos, y_pos);
return;



#define sprite_change_offset_pm_fx(spr_name, x_pos, y_pos)
//sets the sprite offset for both plusle and minun's vfx sprites.
sprite_change_offset(spr_name + "plus", x_pos, y_pos);
sprite_change_offset(spr_name + "minus", x_pos, y_pos);
return;

