//              --character sprite offsets (has small_sprites)--              //

sprite_change_offset("hurtbox"              , 21, 70);
sprite_change_offset("hurtbox_crouch"       , 21, 56); 

load_x = 68*2+1
load_y = 109*2
sprite_change_offset("idle"                 , load_x, load_y); 
sprite_change_offset("crouch"               , load_x, load_y);
sprite_change_offset("walk"                 , load_x, load_y);
sprite_change_offset("walkturn"             , load_x, load_y);
sprite_change_offset("dash"                 , load_x, load_y);
sprite_change_offset("dashstart"            , load_x, load_y);
sprite_change_offset("dashstop"             , load_x, load_y);
sprite_change_offset("dashturn"             , load_x, load_y);

sprite_change_offset("hurt"                 , load_x, load_y);
sprite_change_offset("hurtground"           , load_x, load_y);
sprite_change_offset("bighurt"              , load_x, load_y);
sprite_change_offset("spinhurt"             , load_x, load_y);
sprite_change_offset("uphurt"               , load_x, load_y);
sprite_change_offset("downhurt"             , load_x, load_y);

sprite_change_offset("jumpstart"            , load_x, load_y);
sprite_change_offset("jump"                 , load_x, load_y);
sprite_change_offset("doublejump"           , load_x, load_y);
sprite_change_offset("walljump"             , load_x, load_y);
sprite_change_offset("pratfall"             , load_x, load_y); //
sprite_change_offset("land"                 , load_x, load_y);
sprite_change_offset("landinglag"           , load_x, load_y);

sprite_change_offset("parry"                , load_x, load_y);
sprite_change_offset("roll_forward"         , load_x, load_y);
sprite_change_offset("roll_backward"        , load_x, load_y);
sprite_change_offset("airdodge"             , load_x, load_y);
sprite_change_offset("waveland"             , load_x, load_y);
sprite_change_offset("tech"                 , load_x, load_y); //

sprite_change_offset("jab"                  , load_x, load_y); //
sprite_change_offset("dattack"              , load_x, load_y); //
sprite_change_offset("ftilt"                , load_x, load_y); //
sprite_change_offset("dtilt"                , load_x, load_y);
sprite_change_offset("utilt"                , load_x, load_y); //
sprite_change_offset("nair"                 , load_x, load_y); //
sprite_change_offset("fair"                 , load_x, load_y); //
sprite_change_offset("bair"                 , load_x, load_y); //
sprite_change_offset("uair"                 , load_x, load_y); //
sprite_change_offset("dair"                 , load_x, load_y); //
sprite_change_offset("fstrong"              , load_x, load_y);
sprite_change_offset("tricorn"              , load_x, load_y);
sprite_change_offset("ustrong"              , load_x, load_y); //
sprite_change_offset("ustrong2"             , load_x, load_y); //
sprite_change_offset("dstrong"              , load_x, load_y);
sprite_change_offset("nspecial"             , load_x, load_y);
sprite_change_offset("fspecial"             , load_x, load_y); //
sprite_change_offset("fspec_hardlight"             , load_x, load_y); //

sprite_change_offset("fspecial_air"         , load_x, load_y); //

sprite_change_offset("uspecial"             , load_x, load_y); //
sprite_change_offset("dspecial"             , load_x, load_y); 
sprite_change_offset("dspecial_call"        , load_x, load_y);
sprite_change_offset("dspecial_open"        , load_x, load_y); 

sprite_change_offset("taunt"                , load_x, load_y);
sprite_change_offset("taunt_war"            , load_x, load_y);
sprite_change_offset("taunt_uke"                , load_x, load_y);

sprite_change_offset("tele"                 , load_x, load_y);
sprite_change_offset("intro"                 , load_x, load_y);
sprite_change_offset("intro_pod"                 , 105*2, 132*2);
sprite_change_offset("pod_idle"                 , 105*2, 132*2);


//                  --other sprite offsets (no small_sprites)--               //
// includes projectiles, vfx, articles

// unsorted, move later
sprite_change_offset("hopoo"                , 72, 42);
sprite_change_offset("warbanner"            , 27, 70);
sprite_change_offset("warbanner_mask"       , 27, 70);

sprite_change_offset("hud_arrow"                , 7, 10);

sprite_change_offset("uspec_proj"               , 10, 10);

sprite_change_offset("dspec_chest_mask"         , 144, 224);
sprite_change_offset("dspec_smallchest"         , 144, 224);
sprite_change_offset("dspec_smallchest_landvfx" , 144, 224);
sprite_change_offset("dspec_smallchest_outline" , 144, 224);
sprite_change_offset("dspec_largechest"         , 144, 224);
sprite_change_offset("dspec_largechest_landvfx" , 144, 224);
sprite_change_offset("dspec_largechest_outline" , 144, 224);
sprite_change_offset("dspec_trishop"            , 144, 224);
sprite_change_offset("dspec_trishop_outline"    , 144, 224);
sprite_change_offset("dspec_cac_bomb"           , 144, 224);
sprite_change_offset("dspecial_arrows"          , 60,   0);

sprite_change_offset("trishop_bg_lines"         , 61, 50);
sprite_change_offset("trishop_bg_sidefill"      , 61, 50);
sprite_change_offset("trishop_bg_centerfill"    , 61, 50);

sprite_change_offset("item"                     , 11, 11);

sprite_change_offset("item_temp_warbanner_spawn", 88, 180);
sprite_change_offset("item_temp_warbanner_idle" , 60, 114);
sprite_change_offset("item_temp_warbanner_despawn", 60, 114);
sprite_change_offset("item_firetile_mask"       , 14, 38);
sprite_change_offset("item_tooth_orb"           , 14, 28);

sprite_change_offset("item_sucker_idle"         , 20, 40);
sprite_change_offset("item_sucker_walk"         , 20, 40);
sprite_change_offset("item_sucker_buff"         , 20, 40);
sprite_change_offset("item_sucker_taunt"        , 20, 40);
sprite_change_offset("item_sucker_mask"         , 16, 24);
sprite_change_offset("item_suckerdrop_red"      , 10, 18);
sprite_change_offset("item_suckerdrop_blue"     , 10, 18);
sprite_change_offset("item_suckerdrop_mask"     , 10, 18);

sprite_change_offset("vfx_explode_small"        , 66, 66);
sprite_change_offset("vfx_explode_large"        , 128, 128);
sprite_change_offset("vfx_explosion_large"      , 170, 170);
sprite_change_offset("vfx_explosion_medium"      , 170, 170);

sprite_change_offset("vfx_item_orb_c"           , 24, 24);
sprite_change_offset("vfx_item_orb_u"           , 24, 24);
sprite_change_offset("vfx_item_orb_r"           , 24, 24);
sprite_change_offset("vfx_item_fung"            , 44, 22);
sprite_change_offset("vfx_item_tooth_despawn"   , 16, 28);
sprite_change_offset("vfx_item_res"             , 254, 200);
sprite_change_offset("vfx_item_stompers"        , 25, 30);
sprite_change_offset("vfx_item_lopper_start"    , 36, 102); // small sprite'd
sprite_change_offset("vfx_item_lopper_active"   , 72, 204); // not small sprite'd (giik pls)
sprite_change_offset("vfx_item_kjaro"           , 70, 130);
sprite_change_offset("vfx_crit"                 , 144, 150);
sprite_change_offset("vfx_crit_lens"            , 144, 150);
sprite_change_offset("vfx_crit_blood"           , 144, 150);
sprite_change_offset("vfx_crit_shock"           , 144, 150);
sprite_change_offset("vfx_blast"                , 135, 150);
sprite_change_offset("vfx_bleed"                , 8, 10);
sprite_change_offset("vfx_bleed_2"              , 8, 10);
sprite_change_offset("vfx_sucker_buff_red"      , 6, 22);
sprite_change_offset("vfx_sucker_buff_blue"     , 6, 22);
sprite_change_offset("vfx_item_instincts"       , 27, 28);
sprite_change_offset("vfx_item_cell"            , 13, 33);
sprite_change_offset("vfx_item_dashlines_0"     , 10, 30);
sprite_change_offset("vfx_item_dashlines_1"     , 10, 30);
sprite_change_offset("vfx_item_dashlines_2"     , 10, 30);
sprite_change_offset("vfx_item_dashlines_3"     , 10, 30);
sprite_change_offset("vfx_bolt"                 , 24, 320);
sprite_change_offset("vfx_bolt_ground"          , 30, 20);
sprite_change_offset("vfx_bolt_large"           , 48, 320);
sprite_change_offset("vfx_bolt_large_ground"    , 54, 30);
sprite_change_offset("vfx_bolt_indicator"       , 12, 158);
sprite_change_offset("vfx_zap_small"            , 60, 62);

sprite_change_offset("vfx_zap_large"            , 100, 102);
sprite_change_offset("tricorn_hat"              , 16, 16);
sprite_change_offset("proj_missile1"            , 30, 12);
sprite_change_offset("proj_missile2"            , 30, 12);
sprite_change_offset("proj_firework"            , 30, 12);
sprite_change_offset("proj_dagger"              , 30, 12);
sprite_change_offset("proj_plimp"               , 30, 12);

sprite_change_offset("fx_small_circle1"         , 174, 168);
sprite_change_offset("fx_small_circle2"         , 174, 168);
sprite_change_offset("fx_small_circle3"         , 174, 168);
sprite_change_offset("fx_small_circle4"         , 174, 168);
sprite_change_offset("fx_small_circle_angled1"  , 174, 168);

sprite_change_offset("fx_medium_circle1"        , 174, 168);
sprite_change_offset("fx_medium_circle_angled1" , 174, 168);
sprite_change_offset("fx_medium_circle_angled2" , 174, 168);

sprite_change_offset("fx_large_circle1"         , 174, 168);
sprite_change_offset("fx_large_circle_angled1"  , 174, 168);


sprite_change_offset("fx_small_flare1_0"        , 174, 168);
sprite_change_offset("fx_small_flare1_1"        , 174, 168);
sprite_change_offset("fx_small_flare1_2"        , 174, 168);
sprite_change_offset("fx_small_flare1_3"        , 174, 168);

sprite_change_offset("fx_small_spark1_0"        , 174, 168);
sprite_change_offset("fx_small_spark1_1"        , 174, 168);
sprite_change_offset("fx_small_spark1_2"        , 174, 168);
sprite_change_offset("fx_small_spark1_3"        , 174, 168);

sprite_change_offset("fx_smaller_glowwhite0"    , 174, 168);
sprite_change_offset("fx_smaller_glowwhite1"    , 174, 168);
sprite_change_offset("fx_smaller_glowwhite2"    , 174, 168);
sprite_change_offset("fx_small_glowwhite0"      , 174, 168);
sprite_change_offset("fx_small_glowwhite1"      , 174, 168);
sprite_change_offset("fx_small_glowwhite2"      , 174, 168);

sprite_change_offset("fx_small_centershine"     , 174, 168);

sprite_change_offset("fx_small_shine0"          , 174, 168);
sprite_change_offset("fx_small_shine1"          , 174, 168);
sprite_change_offset("fx_small_shine2"          , 174, 168);
sprite_change_offset("fx_small_shine3"          , 174, 168);

sprite_change_offset("fx_small_flashlight1"     , 174, 168);



