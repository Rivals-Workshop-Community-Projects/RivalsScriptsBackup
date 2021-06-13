//64分は一ブロック分
//64//128//192//256//320//384//448//512//576//640//704//768//832//896//960//1024//1088//1152//1216//1280//1344//1408//1472//1536//1600//1664//1728//1792//1856//1920//1984//2048
//2112//2176//2240//2304//2368//2432//2496//2560//2624//2688//2752//2816//2880//2944//3008//3072//3136//3200//3264//3328//3392//////////////////
//set_view_position(x+1300, y +500);//1p視点

set_view_position(x+512, y +164);//1p視点

with oPlayer {
    if (variable_instance_exists(id, "temp_level")) {
	x = 900
	y = 200
        state = PS_DEAD;
        jump_down = true;
		has_airdodge = false;
		state_timer = 0;
		hsp = 0;
		vsp = 900;
		can_move = false;
		left_down = true;
		right_down = true;
		up_down = true;
		down_down = true;
		shield_down = true;
		max_djumps = 0;
		can_fast_fall = false;
		invincible = true;
		invince_time = 10;



	}
}