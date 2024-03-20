if !exitscript{
if clone_pl != self && !special_state exit;
if !draw_proj draw_proj = 1;
go_through = 1;
ai_going_right = 0;
ai_going_left = 0;
ai_target = noone;
if projection{
	invincible = 1;
	var g = 0;
	repeat 5{
		if g+1 != player can_be_hit[g+1] = 30;
		g++;
	}
	destroy_hitboxes();
	set_num_hitboxes(attack, 0);
	hurtboxID.sprite_index = sprite_get("empty");
	var g = 0;
	var len = array_length(main_pl.clone_inputs)-1;
	if !special_state && len < 0 repeat array_length(input_names_r){
		if g = array_length(input_names_r)-2 joy_dir = 90;
		else variable_instance_set(self, input_names_r[g], 0)
		g++;
	}
	g = 0;
	if !special_state && len >= 0 repeat array_length(input_names_r){
		//if g = array_length(input_names_r)-2 && state = PS_AIR_DODGE joy_dir = 90 - angle_difference(90, main_pl.clone_inputs[len][g])*input_dir;
		variable_instance_set(self, (input_dir? input_names_r[g]: input_names_l[g]), main_pl.clone_inputs[len][g])
		g++;
	}
	with (asset_get("new_dust_fx_obj")) if player = other.player && x != -3000{
		x = -3000;
		y = -3000;
		dust_length = 0;
	}
	if ((!special_state && !((main_pl.state = PS_ATTACK_GROUND || main_pl.state = PS_ATTACK_AIR) && main_pl.attack = AT_NSPECIAL && (main_pl.window == 2 || main_pl.window == 1))) || (special_state && state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && ((!hitstop && should_die) || action_timer >= array_length(clone_inputs)))) && attack != AT_EXTRA_2{
		cur_spr = sprite_index;
		cur_img = image_index;
		can_swap = 0;
		invincible = 1;
		invince_time = 1000;
		hsp = 0;
		vsp = 0;
		old_hsp = 0;
		old_vsp = 0;
		set_attack(AT_EXTRA_2);
	}
	if attack != AT_EXTRA_2 grabbed_invisible = 2;
}else{
	var i = 0;
	repeat array_length(stick_fix){
		variable_instance_set(self, stick_fix[i], 0);
		i++;
	}
	if !hitpause && !((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && (attack = AT_EXTRA_1 || attack = AT_EXTRA_2)) action_timer++;
	if action_timer >= array_length(clone_inputs) should_die = 1;
	if state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && !hitstop && should_die{
		cur_spr = sprite_index;
		cur_img = image_index;
		can_swap = 0;
		invincible = 1;
		invince_time = 1000;
		hsp = 0;
		vsp = 0;
		old_hsp = 0;
		old_vsp = 0;
		set_attack(AT_EXTRA_2);
		can_swap = 0;
		if instance_exists(main_pl){
			main_pl.move_cooldown[AT_NSPECIAL] = 20;
			main_pl.move_cooldown[AT_FSPECIAL] = 40 + extra_cool;
		}
	}else if !should_die && action_timer >= 0 && instance_exists(main_pl) && action_timer < array_length(main_pl.clone_inputs){
		var g = 0;
		repeat array_length(input_names_r){
			//if g = array_length(input_names_r)-2 && state = PS_AIR_DODGE joy_dir = 90 - angle_difference(90, main_pl.clone_inputs[action_timer][g])*input_dir;
			variable_instance_set(self, (input_dir? input_names_r[g]: input_names_l[g]), main_pl.clone_inputs[action_timer][g])
			g++;
		}
	}
}}