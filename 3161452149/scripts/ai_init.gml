exitscript = 1;
with oPlayer if self != other && player = other.player other.exitscript = 0;
if exitscript{
	//neutral attacks can happen all the time
	neutral_attacks = [AT_NSPECIAL, AT_FSPECIAL, AT_DSPECIAL];
	
	//moves that work when the CPU is far below
	//far_up_attacks = [AT_USPECIAL];
	
	//moves that work when far away from the enemy
	//far_side_attacks = [];
	
	//moves that work when the CPU is far above
	far_down_attacks = [AT_USPECIAL];
	
	//moves that work when in medium range from the enemy
	mid_side_attacks = [AT_FSTRONG, AT_DSTRONG];
	
	//moves that work when the CPU is close and below
	close_up_attacks = [AT_UTILT, AT_USTRONG, AT_NAIR, AT_UAIR];
	
	//moves that work when the CPU is close to the enemy
	close_side_attacks = [AT_JAB, AT_DTILT, AT_FTILT, AT_DATTACK, AT_FSTRONG, AT_DSTRONG, AT_USTRONG, AT_NAIR, AT_FAIR, AT_DAIR, AT_BAIR];
	
	//moves that work when the CPU is close and above
	close_down_attacks = [AT_DTILT, AT_NAIR, AT_DAIR];
	exit;
}
main_pl = noone;
clone_pl = self;
clone_inputs = [];
can_swap = 1;
cur_spr = sprite_index;
cur_img = image_index;
should_die = 0;
dont_recover = 1;
special_clone_swap = 1;
grabbed_invisible = 1;
input_dir = 1;
input_names_r = ["up_pressed", "up_down", "right_pressed", "right_down", "left_pressed", "left_down", "down_pressed", "down_down",
"strong_down", "up_strong_pressed", "up_strong_down", "right_strong_pressed", "right_strong_down", "left_strong_pressed", "left_strong_down", "down_strong_pressed", "down_strong_down",
"up_stick_pressed", "up_stick_down", "right_stick_pressed", "right_stick_down", "left_stick_pressed", "left_stick_down", "down_stick_pressed", "down_stick_down",
"up_hard_pressed", "right_hard_pressed", "left_hard_pressed", "down_hard_pressed",
"attack_pressed", "attack_down", "special_pressed", "special_down", "jump_pressed", "jump_down", "tap_jump_pressed", "shield_pressed", "shield_down", "taunt_pressed", "taunt_down", "joy_dir", "joy_pad_idle"];
input_names_l = ["up_pressed", "up_down", "left_pressed", "left_down", "right_pressed", "right_down", "down_pressed", "down_down",
"strong_down", "up_strong_pressed", "up_strong_down", "left_strong_pressed", "left_strong_down", "right_strong_pressed", "right_strong_down", "down_strong_pressed", "down_strong_down",
"up_stick_pressed", "up_stick_down", "left_stick_pressed", "left_stick_down", "right_stick_pressed", "right_stick_down", "down_stick_pressed", "down_stick_down",
"up_hard_pressed", "left_hard_pressed", "right_hard_pressed", "down_hard_pressed",
"attack_pressed", "attack_down", "special_pressed", "special_down", "jump_pressed", "jump_down", "tap_jump_pressed", "shield_pressed", "shield_down", "taunt_pressed", "taunt_down", "joy_dir", "joy_pad_idle"];
stick_fix = ["up_stick_pressed", "up_stick_down", "left_stick_pressed", "left_stick_down", "right_stick_pressed", "right_stick_down", "down_stick_pressed", "down_stick_down"];
special_state = 0;
projection = 0
draw_proj = 0;
action_timer = -1;
ai_going_right = 0;
ai_going_left = 0;
ai_target = noone;
extra_cool = 0;