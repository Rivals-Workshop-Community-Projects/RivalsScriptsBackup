if (custom_clone){

//Sprite, hitbox numbers and sizes
{
    set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab_hologram"));
    set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack_hologram"));
    set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_hologram"));
    set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_hologram"));
    set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_hologram"));
    set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_hologram"));
    set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_hologram"));
    set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_hologram"));
    set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_hologram"));
    set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_hologram"));
    set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_hologram"));
    set_attack_value(AT_BAIR, AG_AIR_SPRITE, sprite_get("bair_hologram"));
    set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_hologram"));
    set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_hologram"));
    set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_hologram"));
    set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air_hologram"));
    
    set_num_hitboxes(AT_JAB, 1);
    set_num_hitboxes(AT_FTILT, 1);
    set_num_hitboxes(AT_DTILT, 1);
    set_num_hitboxes(AT_UTILT, 3);
    set_num_hitboxes(AT_DATTACK, 2);
    set_num_hitboxes(AT_FSTRONG, 3);
    set_num_hitboxes(AT_USTRONG, 3);
    set_num_hitboxes(AT_DSTRONG, 2);
    set_num_hitboxes(AT_NAIR, 3);
    set_num_hitboxes(AT_FAIR, 1);
    set_num_hitboxes(AT_BAIR, 2);
    set_num_hitboxes(AT_UAIR, 7);
    set_num_hitboxes(AT_DAIR, 2);
    set_num_hitboxes(AT_FSPECIAL, 13);
    set_num_hitboxes(AT_FSPECIAL_AIR, 13);
    
    set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 100);
    set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 100);
    set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 100);
    set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 100);
    set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 100);
    set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 100);
}

//Lockout Stuff
{    
    set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_DAIR, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_DAIR, 2, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_DATTACK, 2, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_NAIR, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_NAIR, 2, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_NAIR, 3, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 2, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 3, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 4, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 5, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 6, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 7, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 8, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 9, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 10, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 11, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 12, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UAIR, 13, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UTILT, 2, HG_HIT_LOCKOUT, 0);
    set_hitbox_value(AT_UTILT, 3, HG_HIT_LOCKOUT, 0);
}

//Aerials category and landinglag
{
    set_attack_value(AT_NAIR, AG_CATEGORY, 0);
    set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 0);
    set_attack_value(AT_FAIR, AG_CATEGORY, 0);
    set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 0);
    set_attack_value(AT_BAIR, AG_CATEGORY, 0);
    set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 0);
    set_attack_value(AT_DAIR, AG_CATEGORY, 0);
    set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0);
    set_attack_value(AT_UAIR, AG_CATEGORY, 0);
    set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 0);
    set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 0);
    set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 0);
    set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_TYPE, 0);
}

//Visual and sounds effects
{
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 128);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
}

//Hitbox Groups
{
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 13, HG_HITBOX_GROUP, 4);
}

if (has_rune("H")){
    set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_DAIR, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_DAIR, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_DATTACK, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_DATTACK, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_DSPECIAL_2, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_DSPECIAL_2, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_DSTRONG, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_DSTRONG, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_DSTRONG_2, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_DSTRONG_2, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_DSTRONG_2, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_DSTRONG_2, 4, HG_EFFECT, 11);
    set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DSTRONG_2, 4, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_DTHROW, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_DTHROW, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_DTHROW, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_DTHROW, 4, HG_EFFECT, 11);
    set_hitbox_value(AT_DTHROW, 5, HG_EFFECT, 11);
    set_hitbox_value(AT_DTHROW, 6, HG_EFFECT, 11);
    set_hitbox_value(AT_DTHROW, 7, HG_EFFECT, 11);
    set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DTHROW, 3, HG_BASE_HITPAUSE, 10);
    set_hitbox_value(AT_DTHROW, 4, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_DTHROW, 5, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_DTHROW, 6, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_DTHROW, 7, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_DTILT, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 15);
    
    set_hitbox_value(AT_FAIR, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 15);
    
    set_hitbox_value(AT_FSPECIAL, 13, HG_EFFECT, 11);
    set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_HITPAUSE, 15);
    
    set_hitbox_value(AT_FSPECIAL_AIR, 13, HG_EFFECT, 11);
    set_hitbox_value(AT_FSPECIAL_AIR, 13, HG_BASE_HITPAUSE, 15);
    
    set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_FSTRONG, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 15);
    
    set_hitbox_value(AT_FSTRONG_2, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_FSTRONG_2, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_FSTRONG_2, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_FSTRONG_2, 4, HG_EFFECT, 11);
    set_hitbox_value(AT_FSTRONG_2, 5, HG_EFFECT, 11);
    set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_FSTRONG_2, 3, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_FSTRONG_2, 4, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_FSTRONG_2, 5, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_FTHROW, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_FTHROW, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_FTHROW, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_FTHROW, 4, HG_EFFECT, 11);
    set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_FTHROW, 3, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_FTHROW, 4, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_FTILT, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 15);
    
    set_hitbox_value(AT_JAB, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_NAIR, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_NAIR, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_NAIR, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 10);
    set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 10);
    set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 15);
    
    set_hitbox_value(AT_NTHROW, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_NTHROW, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_NTHROW, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_NTHROW, 3, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_TAUNT_2, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_TAUNT_2, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_TAUNT_2, 2, HG_BASE_HITPAUSE, 15);
    
    set_hitbox_value(AT_UAIR, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_UAIR, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_UAIR, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_UAIR, 4, HG_EFFECT, 11);
    set_hitbox_value(AT_UAIR, 5, HG_EFFECT, 11);
    set_hitbox_value(AT_UAIR, 6, HG_EFFECT, 11);
    set_hitbox_value(AT_UAIR, 7, HG_EFFECT, 11);
    set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_UTHROW, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_UTHROW, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_UTHROW, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_UTHROW, 2, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_UTHROW, 3, HG_BASE_HITPAUSE, 15);
    
    set_hitbox_value(AT_USTRONG_2, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_USTRONG_2, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_USTRONG_2, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_USTRONG_2, 4, HG_EFFECT, 11);
    set_hitbox_value(AT_USTRONG_2, 5, HG_EFFECT, 11);
    set_hitbox_value(AT_USTRONG_2, 6, HG_EFFECT, 11);
    set_hitbox_value(AT_USTRONG_2, 7, HG_EFFECT, 11);
    set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_USTRONG_2, 4, HG_BASE_HITPAUSE, 15);
    set_hitbox_value(AT_USTRONG_2, 5, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_USTRONG_2, 6, HG_BASE_HITPAUSE, 12);
    set_hitbox_value(AT_USTRONG_2, 7, HG_BASE_HITPAUSE, 12);
    
    set_hitbox_value(AT_UTILT, 1, HG_EFFECT, 11);
    set_hitbox_value(AT_UTILT, 2, HG_EFFECT, 11);
    set_hitbox_value(AT_UTILT, 3, HG_EFFECT, 11);
    set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 10);
    set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 10);
    set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 15);
}

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_hologram"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 5);
    
    max_fall = 4;
    gravity_speed = 0.2;
    hitstun_grav = 0.4;
    air_friction = 0.03;
    knockback_adj = 0;
    
    land_sound = noone;
    
    dont_tumble = true;
    go_through = true;
    fall_through = true;
    hologram_start = false;
    im_the_clone = true;
    ai_disabled = true;
    visible = false;
    draw_indicator = false;
    

	with pet_obj {
		if variable_instance_exists(self,"clone_comp"){
			clone_comp = true;
		}
	}

    
    
}