//update
var hitmove = my_hitboxID.attack;
var hitbox_num = my_hitboxID.hbox_num;
var hit_damage_ = my_hitboxID.damage;

if(hitmove == AT_DSPECIAL)
{
	shake_camera(96, 25);
}

if(hitmove == AT_USPECIAL && hitbox_num == 4)
{
	sound_play(sound_get("lava_attack"));
	shake_camera(24, 25);
	lava_attack_timer = 0;
}