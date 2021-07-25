//Lasagne
/*
-----Ingredients - Serves 6 Adults-----
450g / 1lb of lean minced beef
1 medium onion
1 medium green or red pepper
8 button mushrooms
1 x 400g / 14 oz. tin of chopped tomatoes
2 dessertspoons of tomato sauce
1 clove of garlic
10 sheets of easi-cook lasagne sheets
Salt and pepper, to taste
Cheese sauce (see below)
-----Cheese Sauce-----
25g / 1 oz. of low-fat margarine
25g / 1 oz. of plain flour
425ml / ¾ pint of semi-skimmed milk
50g / 2 oz. low-fat cheddar cheese, grated
Pinch of salt and pepper, to taste
*/
if url != 2110996330 {player = -1; spawn_hit_fx(x,y,0)} //If you're here for food, ignore this
/*
-----Method-----
1. Pre-heat the oven to 180°C / 350°F / Gas Mark 4
2. Chop the onions, pepper, mushrooms and garlic
3. Put the mince into a large pan and fry until completely brown, stirring all the time with a wooden spoon
4. Drain off any excess fat before adding onions and garlic to mince and cook for 3 to 4 minutes
5. Add the chopped peppers, mushrooms, tin of tomatoes and tomato sauce to the mince mixture
6. Bring to the boil and leave to simmer on a low heat for 15 to 20 minutes
--To make cheese sauce:--
1. Melt the margarine in a saucepan
2. Add flour and cook over a low heat for 1 minute, stirring all the time
3. Remove from the heat and cool slightly
4. Add the milk, salt and pepper, whisking all the time
5. Return to the heat and bring to the boil. Keep whisking
6. Reduce heat and cook slowly for 5 minutes, then add the grated cheese 2 minutes before the end of the cooking time
-----Final Preparation:-----
1. Put a layer of meat sauce in the bottom of a casserole/lasagne dish, cover with easi-cook lasagne sheets
2. Make 1 or 2 more layers as above finishing with a layer of lasagne sheets. Cover the top layer with the cheese sauce
3. Sprinkle the top with grated cheese and bake for 30 to 40 minutes
*/
cancook = 1 

if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) {
	attacking = true;
}
else {
	attacking = false;
}

if free and taunt_pressed {
sound_play(sound_get("hamburger"))
clear_button_buffer( PC_TAUNT_PRESSED );
}

if maketable {
	maketable = 0
	my_table = instance_create(tablex,tabley-96,"obj_article1")
	my_table_plat = instance_create(tablex,tabley-96,"obj_article_platform")
	my_table.hsp = tablehsp
	my_table.hp = tablehealth
}


if boarded > 0 boarded -= 1
if !free and place_meeting(x,y+1,my_table_plat) boarded = 5

if hsptobe != 0 and free and boarded {hsp = hsptobe/2 hsptobe = 0}

//if taunt_pressed debug = 1

if state = PS_PRATFALL and !runeO {air_max_speed = 5 hurtboxID.sprite_index = asset_get("ex_guy_hurt_box")}
if state != PS_PRATFALL and air_max_speed = 5 air_max_speed = 4;
if tableproj {
	if !instance_exists(tableproj) tableproj = noone
	}
	
if stagger > 0 and !(get_gameplay_time() mod 30){
	stagger -= 1
	take_damage( player, -1, 1 )
}

if state = PS_AIR_DODGE and attack_pressed and runeE {
	state = PS_IDLE_AIR
}

if move_cooldown[AT_DSPECIAL] = 1 {
 sound_play(asset_get("sfx_shovel_hit_light1"))
 flash = 5
 }
 
if flash > 1 {
	flash -= 1
	outline_color = [ 100, 100, 100 ];
	init_shader();
}
if flash = 1 {
	flash = 0 
	outline_color = [0, 0, 0 ];
	init_shader();
}


if runesUpdated {
	if runeA {
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 40);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
	}
	if runeC {
		set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 1);
	}
	if runeF {
	set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 1);
	set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
	set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
	set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
	set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);
	set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
	}
	if runeO {
	walk_speed = 6.5;
	initial_dash_speed = 10;
	dash_speed = 9;
	air_max_speed = 8;
	air_accel = 0.6;
	max_djumps = 2;
	wave_land_adj = 2;
	wave_friction = .01
	wave_land_time = 15
	idle_anim_speed = .15;
	moonwalk_accel = 10;
	initial_dash_time = 14;
	}
}

if swallowed { //im removing the comments. its like making an ability on hard mode. im a professional. i can handle it.
swallowed = 0
var ability_spr = sprite_get("kirbyanim");
var ability_hurt = sprite_get("kirbyanim_hurt")
var ability_icon = sprite_get("kirbyicon")
with enemykirby {
	newicon = ability_icon
	edgecancel_fspecial = false
	set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
	set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
	set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
	set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);

	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1); //Startup
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 0);

	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1); //Dash
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 25);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, -13);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);

	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 7); //Endlag
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);

	set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1); //GRAB
	set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 2);

	set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1); //THROW
	set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 3);

	set_num_hitboxes(AT_EXTRA_3, 3);

	set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 5);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 1);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 50);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 50);
	set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
	set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 200);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.8);
	set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
	set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .3);
	set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 1);

	set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 2); //Grab hitbox
	set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
	set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 3);
	set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 5);
	set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 20);
	set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -30);
	set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 45);
	set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 45);
	set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 2);
	set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 5);
	set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 90);
	set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_EXTRA_3, 2, HG_EXTRA_HITPAUSE, 18);
	set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 1);
	set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

	set_hitbox_value(AT_EXTRA_3, 3, HG_PARENT_HITBOX, 3); //Contact hitbox
	set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 2);
	set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 3);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_X, 20);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -10);
	set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 45);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 45);
	set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 2);
	set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 5);
	set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 45);
	set_hitbox_value(AT_EXTRA_3, 3, HG_EFFECT, 2110996331);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_LOCKOUT, 7);
	set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, 0.4);
	set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 1);
	set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
}
}
if enemykirby {
	var chefsprite = sprite_get("kirbyanim");
	with asset_get("oPlayer") {
		if attack = AT_EXTRA_3 and sprite_index = chefsprite and (state = PS_ATTACK_AIR or state = PS_ATTACK_GROUND) {
			can_move = false
			can_fast_fall = false
			can_wall_jump = true
			if window = 1 {
				edgecancel_fspecial = false
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 7)
			}
			if window = 1 and window_timer > 8{

				if down_down {
					set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 13);
					set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 145);
					set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -20);
				}
				else {
					set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, -13);
					set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 200);
					set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -40);
				}
			}
			if window = 2 or window = 3 {
				if !free {
					edgecancel_fspecial = true
				}
				if edgecancel_fspecial {
					set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
					if free { vsp = 0 state = PS_IDLE}
					
				}
			}
			if window = 3 {
				hsp *= 0.7
				vsp *= 0.7
				if window_timer = 15 move_cooldown[AT_EXTRA_3] = 30
			}
			if has_hit {
				set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
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
					create_hitbox( AT_EXTRA_3, 1, x, y )
					if left_down spr_dir = 1
					else {if right_down spr_dir = -1
					else spr_dir*= -1}
					hsp = -spr_dir*6
					vsp = -7
				}
			}
			if has_hit {
				if window = 3 or (window = 2 and window_timer >= 3) {
					window = 4
					window_timer = 0
				}
				has_hit = 0
			}
		}
	}
}