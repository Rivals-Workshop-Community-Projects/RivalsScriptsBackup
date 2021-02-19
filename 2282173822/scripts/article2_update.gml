var target_x = player_id.x;
var target_y = player_id.y;

spr_dir = player_id.spr_dir;

if !player_id.can_board_cloud image_alpha = lerp(image_alpha, 0.5, 0.25);


switch(state){
	
	case 0: //Spawning
		var s_t_max = 10;
		image_index = (state_timer > 4);
		
		if (state_timer == s_t_max) setState(1);
		
	case 1: //Idle
		image_index += 0.2;
		target_x += sin(state_timer / 16) * 4 - 50 * player_id.spr_dir;
		target_y += sin(state_timer / 16) * 4 - 40;
		if !player_id.snail && !(player_id.attacking && (player_id.attack == AT_USPECIAL || player_id.attack == AT_FSPECIAL)) setState(2);
		break;
		
	case 2: //Dying
		var s_t_max = 6;
		image_index = (state_timer < 3);
		target_y -= 40 - abs(sin(state_timer * 3.14 / s_t_max) * 32);
		target_x -= abs(sin(state_timer * 3.14 / s_t_max) * 10) * spr_dir;
		if (state_timer == s_t_max){
			instance_destroy();
			exit;
		}
		break;
}

x = lerp(x, target_x, 0.3);
y = lerp(y, target_y, 0.3);



//Make time progress
if !hitstop{
    state_timer++;
}

exist_timer++;



#define setState(new_state)

state = new_state;
state_timer = 0;
image_index = 0;

switch(state){
	case 2:
		image_index = 1;
	case 0:
		sprite_index = player_id.spr_alto_spawn;
		break;
	case 1:
		sprite_index = player_id.spr_alto_idle;
		break;
}