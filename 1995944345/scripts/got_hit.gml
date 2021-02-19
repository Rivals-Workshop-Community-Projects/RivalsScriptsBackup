move_cooldown[AT_USPECIAL] = 0;

if blocklimit > 0 && prev_state == PS_CROUCH && block_cur >= blocktime && orig_knock < blocklimit && blockcool <= 0 {
block_cur = 0;
blockcool = blockcool_max
var fx = spawn_hit_fx(x, y, fx_sprites[3])
fx.depth = hit_player_obj.depth-4
state_timer = 3
old_vsp = 0;
state = PS_HITSTUN_LAND
free = false;
state_timer = blockstun;

if orig_knock < blocklimit*0.5 {
sound_play(sound_get("block0"))
} else if orig_knock < blocklimit*0.8 {
sound_play(sound_get("block1"))
} else {
sound_play(asset_get("sfx_frog_nspecial_shove"))
}

blocked = 1;

hitstop += 4;
hit_player_obj.hitstop += 4
}

//Fspecial latch on, outdated.
/*if attack == AT_FSPECIAL_2 && (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
take_damage(player,hit_player_obj.player,-(enemy_hitboxID.damage))
fspecial_health -= enemy_hitboxID.damage;

} else */
var e = enemy_hitboxID.damage
if reflects_left > 0 {
	reflects_left--;
	take_damage(player, hit_player_obj.player, -enemy_hitboxID.damage)
	take_damage(hit_player_obj.player, player, enemy_hitboxID.damage)
	e = 0
}

{
	if instance_exists(mushins) && mushins.state == 0 && mushins.damage < mushins.damagelim {
		rem = max(-(get_player_damage(player) - mushins.damagemin), 0) //Remainder. Will only absorb the damage that brought the player above minimum.
		e = max(e-rem, 0);
		
		
		var d = mushins.damage
		mushins.damage += e
		
		rem = max(mushins.damage-mushins.damagelim, 0)
		if e > 0 set_player_damage(player, floor(mushins.damagemin+rem))
		if rem == 0 {
			mushins.image_index = 5
			X_alpha = 1;
		}
		
		sendspores = max(sendspores, e)
		
	}
if enemy_hitboxID.type == 1 && enemy_hitboxID.kb_value > 0 && selfstab{selfstab = 0; sound_play(asset_get("sfx_syl_nspecial_flowerhit"));}
}


