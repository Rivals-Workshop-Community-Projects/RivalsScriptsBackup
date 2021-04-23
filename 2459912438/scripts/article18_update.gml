//
timer++;

image_xscale = 4*spr_dir;

can_deal_damage = false;
if timer > delay_time + 10 {
	can_deal_damage = true;
}

if timer < delay_time {
	if timer mod 6 == 0 {
		sound_play(sound_get("warning"));
	}
} else if timer == delay_time {
	sound_play(sound_get("rise"))
	sprite_index = sprite_get("leg_stab_proj_hurt");
	mask_index = sprite_get("leg_stab_proj_hurt");
	x += spr_dir*30;
	y += 10;
	hsp = -12*spr_dir;
} else if timer == delay_time + 20 {
	hsp = 0;
} else if timer == delay_time + 30 {
	hsp = 12*spr_dir;
} else if timer > delay_time + 30 && abs(x - spawnx) < 20 {
	instance_destroy();
}

