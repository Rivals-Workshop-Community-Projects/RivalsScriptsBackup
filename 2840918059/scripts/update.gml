//Dspecial Prevent Use Off Stage
var stage_x = get_stage_data (SD_X_POS);

if (x < stage_x || x > room_width - stage_x){
	move_cooldown[AT_DSPECIAL] = 99999;
}

if (x > stage_x && x < room_width - stage_x){
	move_cooldown[AT_DSPECIAL] = 0;
}



//Ice Clone Gauge
if (GAUGE_CURRENT = 0){
	move_cooldown[AT_FSPECIAL] = 5;
}

if (GAUGE_CURRENT = 1){
	move_cooldown[AT_FSPECIAL] = 10;
}

if (GAUGE_CURRENT = 2){
	move_cooldown[AT_FSPECIAL] = 20;
}

if (GAUGE_CURRENT = 3){
	move_cooldown[AT_FSPECIAL] = 30;
}

if (GAUGE_CURRENT = 4){
	move_cooldown[AT_FSPECIAL] = 40;
}

if (GAUGE_CURRENT = 5){
	move_cooldown[AT_FSPECIAL] = 50;
}

if (GAUGE_CURRENT = 6){
	move_cooldown[AT_FSPECIAL] = 60;
}

if (GAUGE_CURRENT = 7){
	move_cooldown[AT_FSPECIAL] = 70;
}

if (GAUGE_CURRENT = 8){
	move_cooldown[AT_FSPECIAL] = 80;
}

if (GAUGE_CURRENT = 9){
	move_cooldown[AT_FSPECIAL] = 90;
}

if (GAUGE_CURRENT = 10){
	move_cooldown[AT_FSPECIAL] = 100;
}

if (GAUGE_CURRENT = 11){
	move_cooldown[AT_FSPECIAL] = 110;
}


if (GAUGE_CURRENT = GAUGE_MAX){
	move_cooldown[AT_FSPECIAL] = 0;
}



//Alt Colours Hit Effects
if (get_player_color( player ) == 1) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 127);

	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 127);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 127);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 127);

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 127);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 125);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 125);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 125);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 125);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 127);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 125);
}

if (get_player_color( player ) == 2) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 148);

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 3);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 3);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 3);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 148);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 3);
}

if (get_player_color( player ) == 3) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 120);

	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 120);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 120);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 120);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 120);

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 120);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 117);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 117);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 117);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 120);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_med"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 117);
}

if (get_player_color( player ) == 4) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 196);

	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 196);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 196);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 196);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 196);

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 196);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 13);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 13);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 13);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 196);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 13);
}

if (get_player_color( player ) == 5) {

	set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 161);

	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 161);
	set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 150);

	set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 150);

	set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 150);

	set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 150);
	set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_troupple_splash_big"));
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 161);

	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_troupple_fish_splash_out"));
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 150);
}







