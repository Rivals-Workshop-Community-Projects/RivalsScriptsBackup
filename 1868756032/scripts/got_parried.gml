//Stop velocity for parried automoves
if ((my_hitboxID.attack == AT_DATTACK) or (my_hitboxID.attack == AT_DTILT)
	or (my_hitboxID.attack == AT_NAIR)) {
	automove_parried = 1;
}

if (my_hitboxID.attack == AT_NSPECIAL) and my_hitboxID.hbox_num = 1 {
	window = 7
	window_timer = 0
	sound_stop(sound_get("inhale"))
}

jetcharge = 0
needlecharge = 0;
if instance_exists(obj_article1) {
if obj_article1.state == 3 obj_article1.lifetime = 10
}
