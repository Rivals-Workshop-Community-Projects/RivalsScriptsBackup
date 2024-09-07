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
juice -= 0.25;

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

if (player_id.in_adventure) {
	adventure_timer--;
	if (adventure_timer < 0) {
		instance_destroy();
        exit;
	}
} else {
	phone_blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
	if (exist_timer < 40 && y < phone_blastzone_t + 300) {
		exist_timer += 10;
		//madeHigh = 1;
	}
	if (madeHigh == 1) {fake_vsp += 0.001*(exist_timer - 40);}

	phone_blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
	if (y > phone_blastzone_b + 500) {
        instance_destroy();
        exit;
    }
}

//if (exist_timer > 40) {fake_vsp += 0.001*(exist_timer - 40);}
if (juice < 0) {fake_vsp += 0.3;}
fake_hsp *= 0.9;

fake_vsp = clamp (fake_vsp, 0, 15)

//player_id.onPlatform = false;
if ((point_distance(x, y, player_id.x, player_id.y) < 55) && abs(player_id.y - y) < 10 && player_id.free == false) {
    player_id.onPlatform = true;
}

if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_USPECIAL_2 && player_id.window == 2 && juice > 0) {
	fake_hsp += (player_id.right_down - player_id.left_down) * (0.5 + (juice / 120));
	juice -= 0.35;
	adventure_timer = 300;
}
if (juice > 90) {
    fake_hsp = clamp (fake_hsp, -10, 10);
} else {
    fake_hsp = clamp (fake_hsp, -6.9, 6.9);
}

//print(string(juice));

if (!free && fake_vsp > 0) {
    instance_destroy();
    exit;
}

if (hsp > 7) {
    if (can_make_hb_right >= 1) {
        hb = create_hitbox(AT_USPECIAL, 3, x + 40, y + 7);
    }
    can_make_hb_right = -10;
} else {
    if (instance_exists(hb)) {
        instance_destroy(hb);
    }
    can_make_hb_right++;
}

if (hsp < -7) {
    if (can_make_hb_left >= 1) {
        hb2 = create_hitbox(AT_USPECIAL, 3, x - 40, y + 7);
    }
    can_make_hb_left = -10;
} else {
    if (instance_exists(hb2)) {
        instance_destroy(hb2);
    }
    can_make_hb_left++;
}

if (instance_exists(hb)) {
	hb.x = x+hsp+40;
	hb.y = y+vsp+7;
}
if (instance_exists(hb2)) {
	hb2.x = x+hsp-40;
	hb2.y = y+vsp+7;
}