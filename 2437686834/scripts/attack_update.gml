// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



if !(instance_exists(fruit))
{
move_cooldown[AT_NSPECIAL] = 1
}



if attack == AT_FSPECIAL {
	


if jump_pressed
{
// -= 10
//clamp(hsp, -1, 1)
//set_state( PS_PRATFALL )
}
}





if attack == AT_DAIR {
	


if has_hit = true
{
set_state( PS_FIRST_JUMP )
move_cooldown[AT_DAIR] = 100
}
}

if attack == AT_DTILT {


if has_hit = true
{
if window = 4
window = 5
}
}

if attack == AT_DATTACK {


if has_hit = true
{
can_attack = true
can_strong = true
}
}

if attack == AT_DSPECIAL {
move_cooldown[AT_DSPECIAL] = 100
}


if attack == AT_DTILT {
set_state = PS_PARRY
can_jump = true;
can_attack = true;
can_strong = true;
//move_cooldown[AT_DTILT] = 80
}

if attack == AT_USPECIAL and window = 5 {
bomb_exists = false
}

if attack == AT_USPECIAL and window = 5 {
set_state( PS_PRATFALL );
}



if !free
bomb_exists = true



if attack == AT_USPECIAL and window = 4 and window_timer = 1 {
sound_play(sound_get("powerjump"))
}

//if !free
//move_cooldown[AT_FSPECIAL] = 0

if attack == AT_FSPECIAL {
can_jump = false;
djumps = 2;
has_walljump = false;
move_cooldown[AT_FSPECIAL] = 100
can_fast_fall = false

if (window = 1 and window_timer = 1) or window = 8
{
is_up = false
is_down = false
is_forward = false
is_up = false
is_down = false
is_forward = true
is_down_ani = false
is_forward_ani = false
is_up_ani = false
//y -= 24
}

if up_down
{
is_up = true
is_down = false
is_forward = false
}

if down_down
{
is_up = false
is_down = true
is_forward = false
}

if (spr_dir = 1 and right_down) or (spr_dir = -1 and left_down)
{
is_up = false
is_down = false
is_forward = true
}

if is_up and window_timer = 1
{
is_up_ani = true
is_forward_ani = false
is_down_ani = false
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialup"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
}

if is_down and window_timer = 1
{
is_down_ani = true
is_forward_ani = false
is_up_ani = false
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecialdown"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED, 6);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
}

if is_forward and window_timer = 1
{
is_forward_ani = true
is_up_ani = false
is_down_ani = false
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, -4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 6*bite_dir);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 6*bite_dir);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 6*bite_dir);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 6*bite_dir);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 6*bite_dir);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 6*bite_dir);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
}



}
else
{
is_up = false
is_down = false
is_forward = false
is_up = false
is_down = false
is_forward = true
is_down_ani = false
is_forward_ani = false
is_up_ani = false
}

if (attack == AT_DTILT) {
if (window == 2 && window_timer == 1){
//instance_create( x, y, "obj_articlesolid" );
}
}

if (state == PS_PARRY) {
sound_stop(sound_get("charge1"))
}


//if !instance_exists(obj_article1)
{
if got_fruit = false or will_toss = false and current_fruit = 0
{
if (attack == AT_NSPECIAL && !hitpause) {
	switch (window) {
		case 1: //startup window.
    
			//we only want to perform this code on the first frame of this window.
			if (window_timer != 1) break;
			//reset the charge timer variable.
			charge_timer = 0;
			current_fruit = 0;
			
      
			break;
		
		case 2: //charging window.
    
			//if the special button is held down (change if needed), charge this attack.
			if (window = 2) and !shield_pressed  and window_timer < 170 and will_toss = false{
				{
				//charge_timer += 1;
				if window_timer = 0
				current_fruit = 0;
				
				if window_timer = 10
				can_toss = true;
				
				if window_timer = 21
				current_fruit = 1;;
				
				if window_timer = 41
				current_fruit = 2;
				
				if window_timer = 62
				current_fruit = 3;
				
				if window_timer = 82
				current_fruit = 4;
				
				if window_timer = 103
				current_fruit = 5;
				
				if window_timer = 123
				current_fruit = 6;
				
				if window_timer = 144
				current_fruit = 7;
				
				if window_timer >= 164
				current_fruit = 8
				
				if special_pressed and can_toss = true
				will_toss = true;
				
				if shield_pressed
				exit;
				}
			
			}
			//when the button is released, transition to the next window.
			else {
				//skip to the next window
				if window == 2
				window = 3;
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 40);
				set_window_value( AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 56 );
				set_window_value( AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4 );
				stored_fruit = current_fruit
				got_fruit = true;
			}
      
			break;
		
	}
}
}
else
{
if (special_pressed or will_toss = true) and (attack == AT_NSPECIAL && !hitpause) {
window = 3;
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value( AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 47 );
set_window_value( AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 9 );
}
if (attack == AT_NSPECIAL && !hitpause) and window_timer = 15
{
if special_down and current_fruit != 8
{
	window = 2
if current_fruit = 0
window_timer = 0;
				
if current_fruit = 1
window_timer = 21;
				
if current_fruit = 2
window_timer = 41;
				
if current_fruit = 3
window_timer = 62;
				
if current_fruit = 4
window_timer = 82;
				
if current_fruit = 5
window_timer = 103;
				
if current_fruit = 6
window_timer = 123;
				
if current_fruit = 7
window_timer = 144;
				
if current_fruit = 8
window_timer = 164

will_toss = false
got_fruit = false
}
if got_fruit = true
{
current_fruit = stored_fruit
fruit = instance_create(x + 40*spr_dir, y - 30, "obj_article1");
stored_fruit = 0;
got_fruit = false;
can_toss = false;
will_toss = false;
current_fruit = 0
}
}
}
}



if (attack == AT_DTILT && !hitpause) {
	switch (window) {
		case 1: //startup window.
    
			//we only want to perform this code on the first frame of this window.
			if (window_timer != 1) break;
			//reset the charge timer variable.
			charge_timer = 0;
      
			break;
		
		case 2: //charging window.
    
			//if the special button is held down (change if needed), charge this attack.
			if (attack_down) {
				charge_timer += 1;
				
			
			}
			//when the button is released, transition to the next window.
			 if !(attack_down) or charge_timer > 75
			 {
				//skip to the next window
				if window == 2
				window = 3;
				window_timer = 0;
				if charge_timer < 40
				charge_timer = 40
			
				set_window_value( AT_DTILT, 4, AG_WINDOW_HSPEED, charge_timer/4);
				set_hitbox_value( AT_DTILT, 1, HG_DAMAGE, charge_timer/14 );
				set_hitbox_value( AT_DTILT, 1, HG_BASE_KNOCKBACK, charge_timer/14 );
			}
      
			break;
		
	}
}

if (get_player_color(player) == 8)
{
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("AA"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("EE"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("OO"));
}

