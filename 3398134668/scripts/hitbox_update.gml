// hitbox_update is a script called every frame for each of your character's hitboxes. Always from the prespective of the hitbox.
if (attack == AT_NSPECIAL)
{
	player_id.attack_cooldown[AT_NSPECIAL] = 120;
}

if (hitbox_timer % 4 == 0)
{
	spawn_hit_fx(x,y,player_id.proj_trail_vfx);
}
