//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_USTRONG){
	can_move = false;
	can_fast_fall = false;
	can_wall_jump = true;
}

if (attack == AT_DSTRONG) {
    if (window == 3 && window_timer == 1){
        take_damage( player, -1, 5 );
    }
}

if (attack == AT_DSTRONG && window == 3){
	soft_armor = 999999;
}

if (attack == AT_FSPECIAL && window == 2 && djumps == 0 && jump_pressed && !free){
	vsp = -8;
}

if (attack == AT_FSPECIAL && window == 1 && window_timer == 9){
	move_cooldown[AT_NTHROW] = 40;
}

if (attack == AT_FSPECIAL && window == 2 && !move_cooldown[AT_NTHROW]){
	window = 3;
	window_timer = 0;
	destroy_hitboxes();
}

if (attack == AT_FSPECIAL && window == 2 && has_hit_player){
	window = 4;
	window_timer = 0;
	destroy_hitboxes();
}

if (attack == AT_FSPECIAL && window == 1){
	clear_button_buffer(PC_SPECIAL_PRESSED);
	sukalander = 0;
}

if (attack == AT_FSPECIAL && window == 2 && window_timer == 1 && !free){
	sukalander = 0;
}

if (attack == AT_FSPECIAL && window == 2 && window_timer == 1 && free){
	sukalander = 1;
}

if (attack == AT_FSPECIAL && !free && sukalander = 1){
	destroy_hitboxes();
	sukalander = 0;
	window = 3;
	window_timer = 0;
}

if (attack == AT_FSPECIAL && window == 2 && special_pressed){
	destroy_hitboxes();
	sukalander = 0;
	window = 5;
	window_timer = 0;
	vsp = -6;
	move_cooldown[AT_FSPECIAL] = 999999;
}

if (attack == AT_DSPECIAL && window == 1 && window_timer == 1){
	clear_button_buffer(PC_JUMP_PRESSED);
	move_cooldown[AT_UTHROW] = 12;
}

if (attack == AT_DSPECIAL && window == 2 && !free){
	destroy_hitboxes();
	window = 3;
	window_timer = 0;
}

if (attack == AT_DSPECIAL && window == 1 && djumps == 0 || attack == AT_DSPECIAL && window == 2 && djumps == 0){
	can_jump = true;
}

if (attack == AT_DSPECIAL && window == 2 && free && special_down && !move_cooldown[AT_UTHROW]){
	vsp = vsp+4;
}

if (attack == AT_DSPECIAL && window == 2 && free && !move_cooldown[AT_UTHROW]){
	can_move = true;
}

if (attack == AT_DSPECIAL && window == 2 && free && has_hit_player && special_down){
	old_vsp = -22;
	has_hit_player = false;
	move_cooldown[AT_UTHROW] = 5;
}

if (attack == AT_DSPECIAL && window == 2 && free && has_hit_player && !special_down){
	old_vsp = -10;
	has_hit_player = false;
	move_cooldown[AT_UTHROW] = 5;
}

if (attack == AT_BAIR && window == 1 && window_timer == 1 && spr_dir == 1 && !move_cooldown[AT_NTHROW]){
	spr_dir = -1;
	move_cooldown[AT_NTHROW] = 5;
}

if (attack == AT_BAIR && window == 1 && window_timer == 1 && spr_dir == -1 && !move_cooldown[AT_NTHROW]){
	spr_dir = 1;
	move_cooldown[AT_NTHROW] = 5;
}

if (attack == AT_UAIR && window == 2 && window_timer == 1 && ska_j_bounce != 2){
	ska_j_bounce = ska_j_bounce+1;
}

if (attack == AT_USPECIAL && (window == 2 or window == 3)){
	soft_armor = 999999;
}

if (attack == AT_USPECIAL){
	move_cooldown[AT_USPECIAL] = 999999;
}

if (attack == AT_DAIR && window == 1 && window_timer == 1 && left_down){
	spr_dir = -1;
}

if (attack == AT_DAIR && window == 1 && window_timer == 1 && right_down){
	spr_dir = 1;
}

if (attack == AT_DAIR && window == 1 && window_timer >= 10){
	move_cooldown[AT_DTHROW] = 22;
}

if (attack == AT_DAIR && window == 2 && !free){
	destroy_hitboxes();
	window = 3;
	window_timer = 0;
}

if (attack == AT_DAIR && window == 2 && !move_cooldown[AT_DTHROW]){
	destroy_hitboxes();
	window = 4;
	window_timer = 0;
}

if (attack == AT_DAIR && !free && window == 3 && window_timer >= 2){
	can_jump = true;
	move_cooldown[AT_DAIR] = 11;
}

if (attack == AT_USTRONG && window == 4 && !free){
	window = 5;
	window_timer = 0;
}

if (attack == AT_FSTRONG && window == 4 && window_timer >= 8 && (attack_down or right_strong_down or left_strong_down or strong_down)){
	destroy_hitboxes();
	window = 6;
	window_timer = 0;
}

if (attack == AT_FSTRONG && window == 6 && window_timer >= 10){
	destroy_hitboxes();
	window = 7;
	window_timer = 0;
}

if (attack == AT_TAUNT && window == 1 && window_timer == 31 && taunt_down){
	window = 1;
	window_timer = 0;
}