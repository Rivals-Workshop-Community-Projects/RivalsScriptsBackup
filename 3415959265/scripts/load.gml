//load.gml
//this script is usually used to put in all our sprites' offsets

//ground movement
sprite_change_offset("idle",            57, 63);
sprite_change_offset("crouch",          55, 63);
sprite_change_offset("walk",            60, 63);
sprite_change_offset("walkturn",        57, 63);
sprite_change_offset("dash",            57, 63);
sprite_change_offset("dashstart",       57, 63);
sprite_change_offset("dashstop",        57, 63);
sprite_change_offset("dashturn",        57, 63);

//air movement
sprite_change_offset("jumpstart",       57, 63);
sprite_change_offset("jump",            57, 60);
sprite_change_offset("doublejump",      57, 60);
sprite_change_offset("walljump",        58, 60);
sprite_change_offset("pratfall",        57, 63);
sprite_change_offset("land",            57, 63);
sprite_change_offset("landinglag",      57, 63);

//parry button
sprite_change_offset("1_parry",           42, 63);
sprite_change_offset("1_roll_forward",    36, 63);
sprite_change_offset("1_roll_backward",   42, 63);

sprite_change_offset("2_roll_forward",    36, 63);
sprite_change_offset("2_roll_backward",   42, 63);

sprite_change_offset("3_roll_forward",    36, 63);
sprite_change_offset("3_roll_backward",   42, 63);

sprite_change_offset("parry",           42, 63);
sprite_change_offset("roll_forward",    36, 63);
sprite_change_offset("roll_backward",   42, 63);
sprite_change_offset("airdodge",        57, 63);
sprite_change_offset("waveland",        57, 63);
sprite_change_offset("tech",            57, 63);

//hurt
sprite_change_offset("hurt",            57, 63); //default hurt names: bighurt, hurt, downhurt, bouncehurt, uphurt, hurtground
sprite_change_offset("1_hurt",          57, 63); 
sprite_change_offset("2_hurt",          57, 63); 
sprite_change_offset("3_hurt",          57, 63); 
sprite_change_offset("hurt_tumble",     57, 63); //normally called "spinhurt"
sprite_change_offset("1_hurt_tumble",   57, 63); //normally called "spinhurt"
sprite_change_offset("2_hurt_tumble",   57, 63); //normally called "spinhurt"
sprite_change_offset("3_hurt_tumble",   57, 63); //normally called "spinhurt"
sprite_change_offset("bouncehurt",      57, 63);
sprite_change_offset("1_bouncehurt",    57, 63);
sprite_change_offset("2_bouncehurt",    57, 63);
sprite_change_offset("3_bouncehurt",    57, 63);

//normals
sprite_change_offset("jab",             58, 63, true); //this "true" alligns the hurtboxes when using small_sprites
sprite_change_offset("utilt",           56, 63, true);
sprite_change_offset("ftilt",           57, 63, true);
sprite_change_offset("dtilt",           57, 63, true);
sprite_change_offset("dattack",         57, 63, true);
sprite_change_offset("ustrong",         57, 63, true);
sprite_change_offset("fstrong",         57, 63, true);
sprite_change_offset("dstrong",         57, 63, true);
sprite_change_offset("nair",            57, 63, true);
sprite_change_offset("uair",            57, 63, true);
sprite_change_offset("fair",            57, 63, true);
sprite_change_offset("bair",            57, 63, true);
sprite_change_offset("dair",            57, 63, true);

//specials
sprite_change_offset("nspecial",            57, 63, true);
sprite_change_offset("nspecial_air",        57, 63, true);
sprite_change_offset("uspecial",            57, 63, true);
sprite_change_offset("fspecial",            57, 63, true);
sprite_change_offset("fspecial_air",        57, 63, true);
sprite_change_offset("dspecial",            57, 63, true);
sprite_change_offset("dspecial_air",        57, 63, true);
sprite_change_offset("2_dspecial_2",        57, 63, true);
sprite_change_offset("1_dspecial_2",        57, 63, true);
sprite_change_offset("sparking_exit",       57, 63, true);
sprite_change_offset("sparking_exit_air",   57, 63, true);
sprite_change_offset("2_sparking_exit",     57, 63, true);
sprite_change_offset("2_sparking_exit_air", 57, 63, true);
sprite_change_offset("transform",           57, 63, true);

//article
sprite_change_offset("artc_mask",       33, 62);
sprite_change_offset("artc_mask2",      33, 50);
sprite_change_offset("artc_spawn",      82, 130);
sprite_change_offset("artc_prepping",   82, 130);
sprite_change_offset("artc_prepped",    82, 130);
sprite_change_offset("artc_idle",       82, 130);
sprite_change_offset("artc_hit",        82, 130);
sprite_change_offset("artc_atk_start",  82, 130);
sprite_change_offset("artc_atk",        82, 130);
sprite_change_offset("artc_atk_end",    82, 130);
sprite_change_offset("artc_timeout",    82, 130);
sprite_change_offset("artc_slam_start", 82, 130);
sprite_change_offset("artc_slam_atk",   82, 130);
sprite_change_offset("artc_slam_end",   82, 130);


//misc
sprite_change_offset("css_idle",         57, 63);
sprite_change_offset("wait0",            57, 63, true);
sprite_change_offset("wait1",            57, 63, true);
sprite_change_offset("wait2",            57, 63, true);
sprite_change_offset("wait3",            57, 63, true);
sprite_change_offset("wait4",            57, 63, true);

sprite_change_offset("1_wait0",            57, 63, true);
sprite_change_offset("1_wait1",            57, 63, true);
sprite_change_offset("1_wait2",            57, 63, true);
sprite_change_offset("1_wait3",            57, 63, true);

sprite_change_offset("2_wait0",            57, 63, true);
sprite_change_offset("2_wait1",            57, 63, true);
sprite_change_offset("2_wait2",            57, 63, true);
sprite_change_offset("2_wait3",            55, 63, true);


sprite_change_offset("taunt",             57, 63, true);
sprite_change_offset("1_taunt",           57, 63, true);
sprite_change_offset("2_taunt",           57, 63, true);
sprite_change_offset("3_taunt",           53, 63, true);


//VFX
sprite_change_offset("hfx_small_fg",     96, 96, true);
sprite_change_offset("hfx_medium_fg",    96, 96, true);
sprite_change_offset("hfx_big_fg",       158, 140, true);
sprite_change_offset("hfx_grab",         64, 64, true);
sprite_change_offset("vfx_teleport",     64, 64, true);
sprite_change_offset("vfx_teleport",     64, 64, true);
sprite_change_offset("vfx_dspecial_burst2",     96, 96, true);
sprite_change_offset("vfx_dspecial_shine",     64, 64, true);


sprite_change_offset("hfx_tb_1",       158, 140, true);
sprite_change_offset("hfx_tb_2",       158, 140, true);
sprite_change_offset("hfx_tb_3",       158, 140, true);
sprite_change_offset("hfx_tb_4",       158, 140, true);
sprite_change_offset("hfx_tb_5",       158, 140, true);


sprite_change_offset("vfx_mark_detonate",       64, 64, true);
sprite_change_offset("vfx_mark",                64, 64, true);


sprite_change_offset("vfx_dspecial_charge_end",     64, 64, true);
sprite_change_offset("vfx_guardian_tbmarker",       32, 32, true);



sprite_change_offset("intro",           58, 63, true); 
sprite_change_offset("plat_post",       32, 47); //draws platform over the player
sprite_change_offset("plat",            32, 47); //don't use this
sprite_change_offset("plat_pre",        32, 41); //draws platform behind the player

sprite_change_offset("hud_player_arrow",3, 2);
sprite_change_offset("offscreen_icons", 16, 16);
sprite_change_offset("offscreen_arrow", 16, 16);

//effects




//WORKSHOP COMPATS
sprite_change_offset("wsc_sonictrick",  53, 56, true); 
sprite_change_offset("transform",      52, 63, true);
sprite_change_offset("wsc_mamizoutransform",      24, 48, true);

//skin
user_event(15);