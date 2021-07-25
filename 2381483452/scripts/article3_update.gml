visible = false;
image_alpha++;
if image_alpha >= 500 {
image_alpha = random_func_2(1, 180, 1);
	var marg = 150;

	create_hitbox(AT_JAB, 1, random_func_2(0, room_width-marg*2, 1)+marg, room_height+2000)
} 