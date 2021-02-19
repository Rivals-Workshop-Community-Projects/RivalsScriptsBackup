stopped_sounds = [];



if attack == AT_FSPECIAL && !phone_arrow_cooldown && luma != noone && luma.state != PS_ATTACK_AIR attack = AT_FSPECIAL_2;

var is_hbox = 0;
with pHitBox if player_id == other && attack == AT_FSPECIAL is_hbox = 1;

if attack == AT_NSPECIAL && (instance_exists(luma) || is_hbox){
	move_cooldown[AT_NSPECIAL] = 1;
	move_cooldown[AT_NSPECIAL_AIR] = 30;
	clear_button_buffer(PC_SPECIAL_PRESSED);
	
	hsp = 0;
	vsp = 0;
}

if attack == AT_DSPECIAL && free attack = AT_DSPECIAL_AIR;



user_event(13);