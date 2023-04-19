hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .115;
crouch_anim_speed = .12;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.5; //was 6.75
dash_speed = 5.75; //was 6.0
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .55;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 7;
djump_speed = 10.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.25; //was 5.5 //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .54;
hitstun_grav = .505;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.2; //was 1.35 //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .11; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 6;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_abs");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_sprites = true;

pandoria = noone;                               //article instance
in_affinity = false;                            //if in pandoria affinity range
affinity_countdown = 30;                        //time out of affinity before it starts decreasing
init_UNshader = false;                          //used for sword shading

aff_init_dash_speed = [initial_dash_speed, 7.0];                    //normal movement, max affinity value
aff_dash_speed = [dash_speed, 6.25];
aff_walk_speed = [walk_speed, 3.75];
aff_max_jump_hsp = [max_jump_hsp, 5.75];
aff_air_speed = [air_max_speed, 5];
aff_air_accel = [air_accel, 0.3];
aff_airdodge_speed = [air_dodge_speed, 8.0];

ustrong_loop = false;
nspec_fresh = true;

//pandoria sword is drawn separately for shader reasons
swordhold_swords = [sprite_get("pandy_idles_sword"), sprite_get("pandy_walks_sword"), sprite_get("pandy_walkturns_sword"),
                    sprite_get("pandy_crouch_sword"), sprite_get("pandy_dashstart_sword"), sprite_get("pandy_dash_sword"), 
                    sprite_get("pandy_dashstop_sword"), sprite_get("pandy_dashturn_sword"), sprite_get("pandy_jumpstarts_sword"), 
                    sprite_get("pandy_jumps_sword"), sprite_get("pandy_lands_sword"), sprite_get("pandy_nspec_sword"),
                    sprite_get("pandy_fspec_sword"), sprite_get("pandy_uspec_sword"), sprite_get("pandy_dspec_sword"),];

//dspecial sword throw visual handler
dspec_swords = [sprite_get("dspec_sword1"), sprite_get("dspec_sword2")]; //disappear, reappear
dspec_sword_handler = array_create(2, -1);
can_dspec = false; //dspecial cancel
dspec_buffer = false;

//afterimages
after_image = array_create(10, -1);
after_image_timer = -1;

//there is no purgatory worse than the one in your own mind
pandoria_colors =  [[make_color_rgb(147, 212, 242), make_color_rgb(66, 156, 201), make_color_rgb(197, 167, 232), make_color_rgb(71, 68, 73), make_color_rgb(255, 231, 201), make_color_rgb(255, 229, 158), make_color_rgb(126, 189, 173), make_color_rgb(65, 117, 104)],
               /*1*/[make_color_rgb(255, 129, 94), make_color_rgb(181, 25, 51), make_color_rgb(138, 41, 41), make_color_rgb(115, 107, 105), make_color_rgb(255, 231, 201), make_color_rgb(230, 201, 125), make_color_rgb(237, 111, 126), make_color_rgb(156, 49, 63)],
               /*2*/[make_color_rgb(0, 238, 255), make_color_rgb(46, 128, 184), make_color_rgb(63, 115, 184), make_color_rgb(87, 76, 102), make_color_rgb(222, 192, 154), make_color_rgb(0, 238, 255), make_color_rgb(124, 187, 217), make_color_rgb(56, 111, 138)],
               /*3*/[make_color_rgb(247, 238, 104), make_color_rgb(179, 170, 47), make_color_rgb(71, 68, 73), make_color_rgb(237, 247, 246), make_color_rgb(255, 239, 219), make_color_rgb(247, 238, 104), make_color_rgb(232, 209, 131), make_color_rgb(156, 134, 56)],
               /*4*/[make_color_rgb(255, 138, 253), make_color_rgb(176, 75, 134), make_color_rgb(237, 208, 245), make_color_rgb(100, 59, 110), make_color_rgb(255, 231, 201), make_color_rgb(172, 90, 224), make_color_rgb(255, 166, 234), make_color_rgb(219, 98, 191)],
               /*5*/[make_color_rgb(250, 231, 160), make_color_rgb(181, 163, 90), make_color_rgb(130, 32, 52), make_color_rgb(219, 233, 237), make_color_rgb(255, 231, 201), make_color_rgb(183, 184, 103), make_color_rgb(168, 187, 194), make_color_rgb(100, 120, 128)],
               /*6*/[make_color_rgb(141, 155, 235), make_color_rgb(63, 76, 150), make_color_rgb(25, 110, 156), make_color_rgb(156, 220, 230), make_color_rgb(255, 231, 201), make_color_rgb(163, 228, 246), make_color_rgb(98, 144, 163), make_color_rgb(57, 97, 115)],
               /*7*/[make_color_rgb(255, 150, 208), make_color_rgb(194, 72, 167), make_color_rgb(245, 133, 172), make_color_rgb(252, 242, 251), make_color_rgb(255, 231, 201), make_color_rgb(255, 150, 208), make_color_rgb(204, 141, 204), make_color_rgb(136, 58, 161)],
               /*8*/[make_color_rgb(60, 246, 249), make_color_rgb(65, 168, 224), make_color_rgb(69, 72, 123), make_color_rgb(246, 245, 250), make_color_rgb(255, 231, 201), make_color_rgb(250, 218, 155), make_color_rgb(89, 75, 76), make_color_rgb(59, 44, 46)],
               /*9*/[make_color_rgb(245, 119, 81), make_color_rgb(171, 31, 19), make_color_rgb(77, 79, 82), make_color_rgb(237, 107, 117), make_color_rgb(255, 231, 201), make_color_rgb(108, 217, 193), make_color_rgb(219, 81, 109), make_color_rgb(153, 33, 56)],
              /*10*/[make_color_rgb(165, 236, 253), make_color_rgb(87, 158, 176), make_color_rgb(177, 139, 106), make_color_rgb(248, 239, 222), make_color_rgb(255, 231, 201), make_color_rgb(141, 252, 253), make_color_rgb(248, 239, 222), make_color_rgb(181, 171, 151)],
              /*11*/[make_color_rgb(217, 201, 139), make_color_rgb(171, 149, 61), make_color_rgb(219, 96, 77), make_color_rgb(101, 88, 97), make_color_rgb(255, 231, 201), make_color_rgb(246, 206, 142), make_color_rgb(165, 157, 221), make_color_rgb(99, 90, 161)],
              /*12*/[make_color_rgb(116, 241, 253), make_color_rgb(64, 171, 181), make_color_rgb(94, 190, 254), make_color_rgb(139, 111, 205), make_color_rgb(255, 231, 201), make_color_rgb(105, 236, 254), make_color_rgb(144, 122, 200), make_color_rgb(67, 67, 156)],
              /*13*/[make_color_rgb(224, 162, 71), make_color_rgb(186, 98, 35), make_color_rgb(189, 224, 130), make_color_rgb(211, 105, 72), make_color_rgb(232, 194, 147), make_color_rgb(52, 217, 227), make_color_rgb(233, 149, 93), make_color_rgb(168, 82, 51)],
              /*14*/[make_color_rgb(92, 242, 185), make_color_rgb(3, 171, 106), make_color_rgb(237, 245, 252), make_color_rgb(71, 68, 73), make_color_rgb(255, 231, 201), make_color_rgb(92, 242, 185), make_color_rgb(120, 194, 187), make_color_rgb(50, 135, 127)],
              /*15*/[make_color_rgb(200, 103, 252), make_color_rgb(110, 50, 179), make_color_rgb(109, 94, 121), make_color_rgb(87, 77, 73), make_color_rgb(235, 203, 165), make_color_rgb(200, 103, 252), make_color_rgb(135, 133, 145), make_color_rgb(89, 86, 102)],
              /*16*/[make_color_rgb(98, 213, 222), make_color_rgb(61, 133, 163), make_color_rgb(237, 188, 90), make_color_rgb(94, 116, 147), make_color_rgb(217, 184, 145), make_color_rgb(83, 199, 235), make_color_rgb(88, 86, 112), make_color_rgb(46, 45, 77)]];
                    //[make_color_rgb(), make_color_rgb(), make_color_rgb(), make_color_rgb(), make_color_rgb(), make_color_rgb(), make_color_rgb(), make_color_rgb()],

vfx_dirflash = hit_fx_create( sprite_get( "vfx_directionflash" ), 12 );
vfx_cancelring = hit_fx_create( sprite_get( "vfx_cancelring" ), 12 );
vfx_reappear = hit_fx_create( sprite_get( "vfx_reappear" ), 12 );
vfx_npulse = hit_fx_create( sprite_get( "vfx_npulse" ), 12 );
vfx_nblast = hit_fx_create( sprite_get( "vfx_nblast" ), 20 );
vfx_fspecdis = hit_fx_create( sprite_get( "vfx_fspecdis" ), 12 );
vfx_uspecbolt = hit_fx_create( sprite_get( "pandy_ubolt" ), 6 );
vfx_ublast = hit_fx_create( sprite_get( "pandy_ublast" ), 16 );
vfx_kanji = hit_fx_create( sprite_get( "vfx_kanji" ), 25 );
hfx_elecbig = hit_fx_create( sprite_get( "hfx_elecbig" ), 24 );
hfx_spark_hit = hit_fx_create( sprite_get( "hfx_sparkhit" ), 15 );


//voice acting
if(get_synced_var(player) > 2 || get_synced_var(player) < 0){
    va_enabled = 0;
}else{
    va_enabled = get_synced_var(player);
}

if(va_enabled == 1){
    
    //ENGLISH
    va_freq_atk = 0.7;      //voice line frequency when using normals
    va_freq_spec = 1;       //voice line frequency when using specials (and ustrong/dattack since those are based on specific moves as well)
    va_freq_gothit = 0.5;   //voice line frequency when getting hit. pandoria hit freq is manually set at 1 rn in article1_update
    va_freq_panspec = 0.7;  //voice line frequency when using pandoria specials
    
    va_cd_max = 60;         //voice line cooldown.
    va_cd = 0;              //current VA cooldown
    va_type = -1;           //index for which VA subarray to use
    va_current = noone;     //previously played voice line
    
    va_lines = [
        //0: intro
        [sound_get("vaen_z_thunderboltzeke"), sound_get("vaen_z_letsgo"), sound_get("vaen_z_nosweat")],
        //1: win
        [sound_get("vaen_z_didwewin"), sound_get("vaen_z_tremble"), sound_get("vaen_z_nevergiveless"), sound_get("vaen_z_next"), sound_get("vaen_p_awesometeam")],
        //2: death
        [sound_get("vaen_z_zekenatorfalls"), sound_get("vaen_z_notagain"), sound_get("vaen_z_oof"), sound_get("vaen_p_stayontoes")],
        //3: death at low percent
        [sound_get("vaen_z_pissoff"), sound_get("vaen_z_what"), sound_get("vaen_z_yourekidding")],
        //4: got hit (small)
        [sound_get("vaen_z_gah"), sound_get("vaen_z_agh"), sound_get("vaen_z_ouch")],
        //5: got hit (big)
        [sound_get("vaen_z_auhyuh"), sound_get("vaen_z_oof"), sound_get("vaen_z_gah")],
        //6: taunt
        [sound_get("vaen_z_thunderboltzeke")],
        //7: light attack
        [sound_get("vaen_z_hah"), sound_get("vaen_z_hoh"), sound_get("vaen_z_bamwithperiod")],
        //8: heavy attack
        [sound_get("vaen_z_hyah"), sound_get("vaen_z_bam"), sound_get("vaen_z_yah")],
        //9: nspec
        [sound_get("vaen_z_nspec"), sound_get("vaen_z_nspec"), sound_get("vaen_z_yah")],
        //10: fspec
        [sound_get("vaen_z_fspec1"), sound_get("vaen_z_fspec1"), sound_get("vaen_z_fspec2"), sound_get("vaen_z_blowthemaway")/*, sound_get("vaen_z_watchme")*/],
        //11: uspec
        [sound_get("vaen_z_uspec"), sound_get("vaen_z_uspec"), sound_get("vaen_z_outtahere")],
        //12: dattack
        [sound_get("vaen_z_datk"), sound_get("vaen_z_bam"), sound_get("vaen_z_hyah")],
        //13: ustrong
        [sound_get("vaen_z_hyah"), sound_get("vaen_z_yah"), sound_get("vaen_z_outtahere")],
        //14: dspecial pandoria swap
        [sound_get("vaen_z_pandoria"), sound_get("vaen_z_pandoria"), sound_get("vaen_z_dontslack"), sound_get("vaen_z_goforit"), sound_get("vaen_z_itsonyou"), sound_get("vaen_p_nowme"), sound_get("vaen_p_nowme")],
        //15: max affinity
        [sound_get("vaen_p_uptospeed"), sound_get("vaen_z_letsdothis"), sound_get("vaen_z_feelinit"), sound_get("vaen_z_nostoppingus")],
        
        //16: pandoria nspec
        [sound_get("vaen_p_nspec")],
        //17: pandoria fspec
        [sound_get("vaen_p_fspec"), sound_get("vaen_p_hyah")],
        //18: pandoria uspec
        [sound_get("vaen_p_uspec")],
        //19: pandoria got hit
        [sound_get("vaen_p_ngah")]
        ];
}else if(va_enabled == 2){
    
    //JAPANESE
    va_freq_atk = 0.7;      //voice line frequency when using normals
    va_freq_spec = 1;       //voice line frequency when using specials (and ustrong/dattack since those are based on specific moves as well)
    va_freq_gothit = 0.5;   //voice line frequency when getting hit. pandoria hit freq is manually set at 1 rn in article1_update
    va_freq_panspec = 0.7;  //voice line frequency when using pandoria specials
    
    va_cd_max = 80;         //voice line cooldown. JP lines are generally longer
    va_cd = 0;              //current VA cooldown
    va_type = -1;           //index for which VA subarray to use
    va_current = noone;     //previously played voice line
    
    va_lines = [ //sound_get("vajp_z_"),
        //0: intro
        [sound_get("vajp_z_thunderboltzeke"), sound_get("vajp_z_letsgo"), sound_get("vajp_z_nosweat")],
        //1: win
        [sound_get("vajp_z_didwewin"), sound_get("vajp_z_tremble"), sound_get("vajp_z_nevergiveless"), sound_get("vajp_z_next"), sound_get("vajp_p_awesometeam")],
        //2: death
        [sound_get("vajp_z_zekenatorfalls"), sound_get("vajp_z_notagain"), sound_get("vajp_z_oof"), sound_get("vajp_p_stayontoes")],
        //3: death at low percent
        [sound_get("vajp_z_pissoff"), sound_get("vajp_z_what"), sound_get("vajp_z_yourekidding")],
        //4: got hit (small)
        [sound_get("vajp_z_gah"), sound_get("vajp_z_agh"), sound_get("vajp_z_ouch")],
        //5: got hit (big)
        [sound_get("vajp_z_ouch"), sound_get("vajp_z_oof"), sound_get("vajp_z_gah")],
        //6: taunt
        [sound_get("vajp_z_thunderboltzeke")],
        //7: light attack
        [sound_get("vajp_z_hah"), sound_get("vajp_z_hmm"), sound_get("vajp_z_hoh")],
        //8: heavy attack
        [sound_get("vajp_z_hmph"), sound_get("vajp_z_hyah")],
        //9: nspec
        [sound_get("vajp_z_hoh"), sound_get("vajp_z_hyah"), sound_get("vajp_z_hah")],
        //10: fspec
        [/*sound_get("vajp_z_fspec1"), sound_get("vajp_z_fspec1"),*/sound_get("vajp_z_hmph"), sound_get("vajp_z_fspec2"), sound_get("vajp_z_watchme")],
        //11: uspec
        [sound_get("vajp_z_uspec"), sound_get("vajp_z_uspec"), sound_get("vajp_z_outtahere")],
        //12: dattack
        [sound_get("vajp_z_datk"), sound_get("vajp_z_hmph")],
        //13: ustrong
        [sound_get("vajp_z_outtahere"), sound_get("vajp_z_hmph")],
        //14: dspecial pandoria swap
        [sound_get("vajp_z_pandoria"), sound_get("vajp_z_pandoria"), sound_get("vajp_z_dontslack"), sound_get("vajp_z_goforit"), sound_get("vajp_z_itsonyou"), sound_get("vajp_p_nowme"), sound_get("vajp_p_nowme")],
        //15: max affinity
        [sound_get("vajp_p_uptospeed"), sound_get("vajp_z_letsdothis"), sound_get("vajp_z_feelinit"), sound_get("vajp_z_nostoppingus")],
        
        //16: pandoria nspec
        [sound_get("vajp_p_nspec")],
        //17: pandoria fspec
        [sound_get("vajp_p_hup")],
        //18: pandoria uspec
        [sound_get("vajp_p_hup")],
        //19: pandoria got hit
        [sound_get("vajp_p_yup")]
        ];
}

