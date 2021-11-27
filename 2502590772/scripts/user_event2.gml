//user_event2.gml
//Init.gml assets. Called in init.gml.

// Font
font_fname = asset_get("fName");


// Hurtbox sprites
hurtbox_spr         = sprite_get("pm_hurtbox");//asset_get("ex_guy_hurt_box");
crouchbox_spr       = sprite_get("pm_hurtbox_crouch");//asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = sprite_get("pm_hurtbox_air"); // -1 = use hurtbox_spr
hitstun_hurtbox_spr = sprite_get("pm_hurtbox_air"); // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("bounce");
djump_sound         = sound_get("bounce2");
air_dodge_sound     = asset_get("sfx_quick_dodge");


// Character-specific assets

// Sprites
spr_active_hud = sprite_get("active_hud");
spr_active_hud_back = sprite_get("active_hud_back");
spr_hud_baton = sprite_get("hud_baton");
spr_hud_plusminus = sprite_get("hud_plusminus");

spr_hh_buff_arrow_effect = get_fx_sprite_pm("fxarrow");
spr_hh_buff_powerup_effect = get_fx_sprite_pm("fxpowerup");
spr_hh_buff_powerup_front_effect = get_fx_sprite_pm("fxpowerupfront");

spr_batoncaught = sprite_get( "fxbatoncaught" );
spr_thunder = get_fx_sprite_pm("fxthunder");
spr_hurtbox_dash = sprite_get("pm_hurtbox_dash");

spr_dspecial_chargeboom[0] = get_fx_sprite_pm("fxchargeboom1");
spr_dspecial_chargeboom[1] = get_fx_sprite_pm("fxchargeboom2");
spr_dspecial_chargeboom[2] = get_fx_sprite_pm("fxchargeboom3");

// SFX
sfx_hh_dashboost = asset_get("sfx_absa_orb_miss"); /*placeholder*/
sfx_hh_buff_attack_hit = asset_get("sfx_absa_singlezap1");

// VFX
vfx_pluszap = hit_fx_create( sprite_get( "pluszap" ), 40 );
vfx_batoncaught = hit_fx_create( sprite_get( "fxbatoncaught" ), 28 );
vfx_hh_dashboost = hit_fx_create_pm("fxdash", 20);
vfx_uspecial_sweetspot_marker = 305;//hit_fx_create_pm("fxbuff", 14);//305; 
vfx_uspecial_trail = hit_fx_create_pm_opposite("fxstatic", 7);//305; 
vfx_hh_buff_hit_effect = hit_fx_create_pm_opposite("fxbuff", 21);
vfx_hh_buff_static = hit_fx_create_pm_opposite("fxstatic", 21);

vfx_dstrong_thundertell = hit_fx_create_pm("fxthundertell", 18);

vfx_dspecial_chargedespawn[0] = hit_fx_create_pm("fxchargedespawn1", 14);
vfx_dspecial_chargedespawn[1] = hit_fx_create_pm("fxchargedespawn2", 16);
vfx_dspecial_chargedespawn[2] = hit_fx_create_pm("fxchargedespawn3", 16);

vfx_fstrong2_trail = hit_fx_create(sprite_get("fxfstrongtrail"), 16);



#define get_fx_sprite_pm(fx_name)
var acronym;
if species_id == (0 + is_solo_player) acronym = "plus";
else acronym = "minus";
return sprite_get(fx_name + acronym);

#define get_fx_sprite_pm_opposite(fx_name)
//gets the opposite sprite.
var acronym;
if species_id == (1 - is_solo_player) acronym = "plus";
else acronym = "minus";
return sprite_get(fx_name + acronym);

#define hit_fx_create_pm(fx_name, fx_length)
return hit_fx_create( get_fx_sprite_pm(fx_name), fx_length );


#define hit_fx_create_pm_opposite(fx_name, fx_length)
return hit_fx_create( get_fx_sprite_pm_opposite(fx_name), fx_length );