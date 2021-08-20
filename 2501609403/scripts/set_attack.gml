//set_attack

//Changes VFX on log alt
if log_alt = true {
	set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, fx_logsmallhit2);
	set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, fx_logsmallhit2);
	set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
	set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
	set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
	set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, fx_logsmallhit2);
	set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, fx_logsmallhit2);
	set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, fx_logsmallhit2);
	set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
	set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
	set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
	set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, fx_logsmallhit2);
	set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
	set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
	set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, fx_logsmallhit2);
	set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, fx_logsmallhit2);
	set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, fx_logsmallhit2);
	set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, fx_logsmallhit2 );
}

//Nspecial
if (attack == AT_NSPECIAL){
	//Changes the Rage Ball Sprite based on damage delt to urself
	if (get_player_damage(player) >= 30){
		set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj5.2"));
		rage_sprite = 1;
		if (get_player_damage(player) >= 60){
			set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj5.3"));
			rage_sprite = 2;
		}
	} else {
		set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj5"));
		rage_sprite = 0;
	}
	//Updates Damage of Rage Ball
	set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, (1.6 + (0.114 * get_player_damage( player ))));
}

//Taunt 2
if (attack == AT_TAUNT && down_down){
	attack = AT_TAUNT_2
}

user_event(13);