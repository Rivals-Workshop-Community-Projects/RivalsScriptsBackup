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

if (exist_timer > 40) {fake_vsp += 0.001*(exist_timer - 40);}
if (y > 1100) {instance_destroy();}

fake_hsp *= 0.9;

fake_vsp = clamp (fake_vsp, 0, 20)

if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_USPECIAL_2 && player_id.window == 2) {
	fake_hsp += (player_id.right_down - player_id.left_down) * 0.8;
}

if (!free && fake_vsp > 0) {instance_destroy();}