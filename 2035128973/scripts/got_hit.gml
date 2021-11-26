//uspecBan = false;

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
	if (attack == AT_NSPECIAL && state == 2)
		asCharge = 0;
}

if (enemy_hitboxID.type == 1 && instance_exists(boneMark) && hit_player_obj == boneMark) with (obj_article3) if (player_id == other.id && state == 1)
{
    player_id.boneObj = noone;
    instance_destroy();
}