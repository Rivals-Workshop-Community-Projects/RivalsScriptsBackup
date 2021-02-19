if attack == AT_DATTACK && !player_id.hitpause{
	damage = get_hitbox_value(attack,hbox_num,HG_DAMAGE)+abs(player_id.hsp)
	kb_value = get_hitbox_value(attack,hbox_num,HG_BASE_KNOCKBACK)+abs(player_id.hsp)
}
/*
if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}