//Chicken Goujons with Potato Wedges
/*
-----Ingredients - Serves 2 Adults-----
200g of floury potatoes, scrubbed (such as Rooster or Maris Piper)
4 teaspoons of olive oil
25g of plain flour
1 egg
2 tablespoons of low fat milk
50g of fresh white breadcrumbs (or use dried often known as panko)
25g of porridge oats
2 boneless and skinless chicken fillets
100g of lambs lettuce (or use any variety that is available)
7 cherry tomatoes
Salt and freshly ground black pepper
-----Method-----
1. Preheat the oven to 200°C/ 400°F/ Gas Mark 6.
2. Using a small knife, cut the potatoes into evenly-sized wedges. Place in a pan of boiling water and cook for 3-4 minutes until almost tender but still holding their shape. 
3. Arrange the wedges on a baking sheet lined with parchment paper and drizzle with 2 teaspoons of olive oil, tossing to coat. Season lightly with salt if you desire and put on the top shelf of the oven to roast for 25 minutes until cooked through and golden brown. Turn them over half way through to ensure they cook evenly.
4. Meanwhile, put the flour in a shallow dish and seasonly lightly with salt and black pepper. Break the egg into a separate bowl and add the milk, then beat to combine with a fork. Mix the breadcrumbs and oats in a separate bowl and line the three bowls up alongside each other with an empty plate ready for the coated chicken.
5. Using a small sharp knife or scissors, cut the chicken into strips. In small batches of 2-3 pieces, toss the chicken strips in the flour and toss to coat, shaking off any excess. Dip in the beaten egg mixture and then roll on the breadcrumbs. Put on the plate while you repeat with the remaining chicken. 
6. Remember to wash your hands and work surface with warm soapy water after handling raw chicken. 
7. Arrange the chicken goujons on a separate baking sheet lined with parchment paper and the remaining olive oil. Place in the oven and cook for 15-20 minutes until cooked through and tender.
8. Arrange the chicken goujons on plates with the potato wedges and arrange the lettuce with cherry tomatoes that you've cut in half alongside to serve. 
*/


//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL){
    trigger_b_reverse();
}

if (attack = AT_FSPECIAL) {
	can_move = false
	can_fast_fall = false
	if window != 4 can_wall_jump = true
	if window = 1 {
		edgecancel_fspecial = false
		if runeB { set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1) }
		else { set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7) }
		grabbedID = noone;
	}
	if window = 1 and window_timer > 8{

		if down_down {
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 13);
			set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 145);
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_down"));
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -26);
		}
		else {
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -13);
			set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 200);
			set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
			set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -44);
		}
	}
	if window = 2 or window = 3 {
		if !free {
			edgecancel_fspecial = true
		}
		if edgecancel_fspecial {
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
			if free { vsp = 0 state = PS_IDLE move_cooldown[AT_FSPECIAL] = 20}
			
		}
	}
	if window = 3 {
		hsp *= 0.7
		vsp *= 0.7
		if window_timer = 15 move_cooldown[AT_FSPECIAL] = 30
	}
	if has_hit {
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
	}
	if window = 4 {

		if (shield_down or shield_pressed) and window_timer > 2 {
			state = PS_IDLE
			hsp = 1*spr_dir
			vsp = -5
			clear_button_buffer( PC_SHIELD_PRESSED );	
			hitstop = 4
			hitpause = 1
			old_vsp = vsp
			old_hsp = hsp
		}
		if window_timer = 15 {
			window = 5
			window_timer = 0
		}
	}
	if window = 5 {
		if window_timer = 1 {
			if left_down spr_dir = 1
			else {if right_down spr_dir = -1
			else spr_dir*= -1}
			hsp = -spr_dir*6
			vsp = -7
		}
	}
}

if attack = AT_USPECIAL {
	if window = 1 and window_timer = 1{
	fallingloops = 0
	gonnadothesecondkick = 0
	}
	can_fast_fall = 0
	can_wall_jump = 1
	if window = 3 {
		vsp *= 0.9
		if special_pressed {gonnadothesecondkick = 1}
		if window_timer > 10 {
			if gonnadothesecondkick {window = 4 window_timer = 0}
				else if window_timer = 15{ 
					if runeB state = PS_IDLE_AIR
					else state = PS_PRATFALL
				}
			}
	if window_timer > 4 can_fast_fall = 1
	}
	if window = 5{
	if window_timer = 2 and free {
		fallingloops += 1
		window_timer = 0
		}
	if abs(hsp) > 2.5 hsp = 2.5*sign(hsp)
	if fallingloops > 10 or runeD {
		can_jump = 1 
		if shield_pressed {state = PS_IDLE}
		can_attack = 1
		//if (left_down or right_down) and special_pressed { //this code made it too free
		//	attack = AT_FSPECIAL
		//	if left_down spr_dir = -1
		//	if right_down spr_dir = 1
		//	window = 1
		//	window_timer = 0
		//}
		}
	}
	if window = 6 and has_hit {
		can_strong = 1
		can_ustrong = 1
	}
}
if attack = AT_JAB and window = 9 {
	if window_timer = 14 {
		x += 12*spr_dir
	}
}
if attack = AT_DATTACK and window = 3 {
	if window_timer = 10 and has_hit {
		x += 18*spr_dir
	}
	if window_timer = 15 and !has_hit {
		x += 18*spr_dir
	}
}

if attack = AT_DATTACK and has_hit_player {
	can_ustrong = true
}

if attack = AT_FTILT and has_hit_player {
	//if window = 3 can_attack = true
}

if attack = AT_NSPECIAL {
	if window = 1 and window_timer = 1 {
	nspec_charge = 0
	spawn_hit_fx( x-60*spr_dir, y-20, 139 )
	sound_play(asset_get("sfx_upbcharge"))
	}
	if window = 1{
	if !free and place_meeting(x,y+1,my_table_plat) {
	my_table.hsp += spr_dir
	}
	if window_timer = 12 and special_down {
	nspec_charge += 1
	window_timer = 11
	if nspec_charge = 30 {window = 2 window_timer = 0 sound_play(sound_get("ding"))}
	}
	if down_down {
	if !free and place_meeting(x,y+1,my_table_plat) hsp = my_table.hsp/2
	if !free y -= 1
	
	can_fast_fall = 0
	fall_through = 1
	}
	}
	if window = 2 {
	if window_timer = 1{
		if left_down spr_dir = -1
		if right_down spr_dir = 1
	}
	if 10 > nspec_charge {
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 9);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 40);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -38);
	set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 70);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 80);
	}
	else {
		if 30 > nspec_charge {
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 11);
			set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.9);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 44);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -44);
			set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 80);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 90);
		}
		else {
			if 30 = nspec_charge {
				set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 15);
				set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
				set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 15);
				set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
				set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 44);
				set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
				set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
				set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 110);
			}
		}
	}
	}
	if window = 3 {
	move_cooldown[AT_NSPECIAL] = 40
	if 30 = nspec_charge {
		nspec_charge = 0
		spawn_hit_fx( x+45*spr_dir, y-20, 143 )
		sound_play(asset_get("sfx_ell_explosion_medium"))
	}
	else if nspec_charge > 10 {
		nspec_charge = 0
		spawn_hit_fx( x+60*spr_dir, y-20, 3 )
		sound_play(asset_get("sfx_ell_strong_attack_explosion"))
	}
	}
	
}

if attack = AT_DSPECIAL and window = 2 {
	if window_timer = 1 and free vsp -= 5
	if instance_exists(my_table) and my_table != noone and window_timer = 1 {
		my_table.state = 1
		my_table.state_timer = 0
		my_table_plat.state = 1
		my_table_plat.state_timer = 0
		my_table_plat = noone
	}
	if window_timer = 1 madetable = 0
	if window_timer = 15 and madetable = 0{
		move_cooldown[AT_DSPECIAL] = 420
		if !free or collision_rectangle( x-10, y-2, x+10, y+48, asset_get("par_block"), true, true ) {
			my_table = instance_create(x,y-96,"obj_article1")
			my_table.hp = 2
			my_table_plat = instance_create(x,y-96,"obj_article_platform")
		}
		else {
			fallingtable = create_hitbox( AT_DSPECIAL, 1, x, y-48 )
			fallingtable.hp = 2
		}
		madetable = 1
	}
}

if attack = AT_TAUNT and window = 4 and window_timer = 15 and taunt_down {
window_timer = 14
}