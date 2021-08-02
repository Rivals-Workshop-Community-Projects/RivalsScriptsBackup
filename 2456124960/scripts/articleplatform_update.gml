//hi
y = floor(y);
x = floor(x);
hsp = 0;
vsp = 0;

if (player_id.state == PS_ATTACK_AIR && (player_id.attack == AT_USPECIAL || player_id.attack == AT_USPECIAL_GROUND)) {
} else {
	image_index = 8;
}

exist_timer++;

if (exist_timer == 0) {
	image_index = 2;
} else if (exist_timer < 5) {
	image_index = 3;
} else if (exist_timer < 8) {
	image_index = 4;
} else if (exist_timer < 11) {
	image_index = 5;
} else if (exist_timer < 14) {
	image_index = 6;
} else if (exist_timer < 17) {
	image_index = 7;
} else {
	image_index = 8;
}

hsp = round(fake_hsp);
vsp = round(fake_vsp);

phone_blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
if (exist_timer < 40 && y < phone_blastzone_t + 300) {
	exist_timer += 10;
	madeHigh = 1;
}
if (exist_timer > 40) {fake_vsp += 0.001*(exist_timer - 40);}
if (madeHigh == 1) {fake_vsp += 0.001*(exist_timer - 40);}
//if (y > 1100) {instance_destroy();}

phone_blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
if (y > phone_blastzone_b + 500) {instance_destroy();}

fake_hsp *= 0.9;

fake_vsp = clamp (fake_vsp, 0, 15)

if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_USPECIAL_2 && player_id.window == 2) {
	fake_hsp += (player_id.right_down - player_id.left_down) * 1;
}
fake_hsp = clamp (fake_hsp, -6.9, 6.9);

print(string(fake_hsp));

if (!free && fake_vsp > 0) {instance_destroy();}