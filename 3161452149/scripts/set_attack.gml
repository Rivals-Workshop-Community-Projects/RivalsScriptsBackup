//set_attack
if !instance_exists(self) exit;
if !move_cooldown[attack] switch attack{
	case AT_TAUNT:
	if attack_down || attack_pressed || instance_exists(venus) || clone_pl == self attack = AT_TAUNT_2;
	if instance_exists(venus) && venus.state = 2{
		venus.state = 3;
		venus.timer = 0;
	}
	break;
	
	case AT_NSPECIAL:
	if clone_pl = self{
		move_cooldown[attack] = 8;
		break;
	}else if instance_exists(clone_pl) && (clone_pl.can_swap || (clone_pl = self && special_clone_swap)){
		move_cooldown[attack] = 8;
		if clone_pl != self clone_pl.can_swap = 0;
		else special_clone_swap = 0;
		var xp = x;
		var yp = y;
		var osp = sprite_index;
		var oimg = image_index;
		var odir = spr_dir;
		x = clone_pl.x;
		clone_pl.x = xp;
		y = clone_pl.y;
		clone_pl.y = yp;
		spr_dir = clone_pl.spr_dir;
		clone_pl.spr_dir = odir;
		hsp = clone_pl.hsp;
		vsp = clone_pl.vsp;
		old_hsp = clone_pl.old_hsp;
		old_vsp = clone_pl.old_vsp;
		state = clone_pl.state;
		state_timer = clone_pl.state_timer;
		if clone_pl.attack != AT_EXTRA_1 attack = clone_pl.attack;
		window = clone_pl.window;
		window_timer = clone_pl.window_timer;
		strong_charge = clone_pl.strong_charge;
		strong_charge = clone_pl.strong_charge;
		smash_charging = clone_pl.smash_charging;
		strong_flashing = clone_pl.strong_flashing;
		hurtboxID.sprite_index = clone_pl.hurtboxID.sprite_index;
		hurtboxID.sprite_index = (clone_pl.hurtboxID.sprite_index = asset_get("empty_sprite")? hurtbox_spr: clone_pl.hurtboxID.sprite_index);
		sprite_index = clone_pl.sprite_index;
		image_index = clone_pl.image_index;
		destroy_hitboxes();
			with clone_pl{
			destroy_hitboxes();
			sprite_index = osp;
			image_index = oimg;
			attack = AT_EXTRA_2;
			state = (free? PS_ATTACK_AIR: PS_ATTACK_GROUND);
			state_timer = 0;
			window_timer = 0;
			window = 1;
			cur_spr = osp;
			cur_img = oimg;
			strong_charge = 0;
			smash_charging = 0;
			strong_flashing = 0;
		}
		old_wint = window_timer;
	}else{
		clone_inputs = [];
		main_pl = self;
		var ghost = instance_create(x, y, (object_index = oPlayer? "oPlayer": "oTestPlayer"));
		ghost.main_pl = self;
		ghost.clone_pl = ghost;
		ghost.custom_clone = 1;
		ghost.input_dir = spr_dir;
		ghost.projection = 1;
		ghost.x += 70*spr_dir;
		ghost.force_depth = 1;
		ghost.hurtboxID.sprite_index = sprite_get("empty");
		with ghost{
			invincible = 1;
			var g = 0;
			repeat 5{
				if g+1 != player can_be_hit[g+1] = 30;
				g++;
			}
			attack = AT_EXTRA_1;
			window = 1;
			window_timer = 0;
			state = (other.free? PS_ATTACK_GROUND: PS_ATTACK_AIR);
		}
		with asset_get("pet_obj") if owner = ghost with ghost{
			var g = spawn_hit_fx(0, 0, 0);
			g.white = other;
		}
	}
	break;
	
	case AT_DSPECIAL:
	if clone_pl = self{
		move_cooldown[attack] = 8;
		break;
	}
	break;
	
	case AT_FSPECIAL:
	if clone_pl = self{
		move_cooldown[attack] = 8;
		break;
	}
	if !move_cooldown[AT_NSPECIAL] if !array_length(clone_inputs) || instance_exists(clone_pl){
		move_cooldown[attack] = 8;
		if !instance_exists(clone_pl){
			attack = AT_NSPECIAL;
			clone_inputs = [];
			main_pl = self;
			var ghost = instance_create(x, y, (object_index = oPlayer? "oPlayer": "oTestPlayer"));
			ghost.main_pl = self;
			ghost.clone_pl = ghost;
			ghost.custom_clone = 1;
			ghost.input_dir = spr_dir;
			ghost.projection = 1;
			ghost.x += 70*spr_dir;
			ghost.force_depth = 1;
			ghost.hurtboxID.sprite_index = sprite_get("empty");
			with ghost{
				invincible = 1;
				var g = 0;
				repeat 5{
					if g+1 != player can_be_hit[g+1] = 30;
					g++;
				}
				attack = AT_EXTRA_1;
				window = 1;
				window_timer = 0;
				state = (other.free? PS_ATTACK_GROUND: PS_ATTACK_AIR);
			}
			with asset_get("pet_obj") if owner = ghost with ghost{
				var g = spawn_hit_fx(0, 0, 0);
				g.white = other;
			}
		}else if clone_pl.can_swap || (clone_pl = self && special_clone_swap){
			move_cooldown[AT_NSPECIAL] = 8;
			move_cooldown[attack] = 8;
			if clone_pl != self clone_pl.can_swap = 0;
			else special_clone_swap = 0;
			var xp = x;
			var yp = y;
			var osp = sprite_index;
			var oimg = image_index;
			var odir = spr_dir;
			x = clone_pl.x;
			clone_pl.x = xp;
			y = clone_pl.y;
			clone_pl.y = yp;
			spr_dir = clone_pl.spr_dir;
			clone_pl.spr_dir = odir;
			hsp = clone_pl.hsp;
			vsp = clone_pl.vsp;
			old_hsp = clone_pl.old_hsp;
			old_vsp = clone_pl.old_vsp;
			state = clone_pl.state;
			state_timer = clone_pl.state_timer;
			if clone_pl.attack != AT_EXTRA_1 attack = clone_pl.attack;
			window = clone_pl.window;
			window_timer = clone_pl.window_timer;
			strong_charge = clone_pl.strong_charge;
			strong_charge = clone_pl.strong_charge;
			smash_charging = clone_pl.smash_charging;
			strong_flashing = clone_pl.strong_flashing;
			hurtboxID.sprite_index = (clone_pl.hurtboxID.sprite_index = asset_get("empty_sprite")? hurtbox_spr: clone_pl.hurtboxID.sprite_index);
			sprite_index = clone_pl.sprite_index;
			image_index = clone_pl.image_index;
			destroy_hitboxes();
			with clone_pl{
				destroy_hitboxes();
				sprite_index = osp;
				image_index = oimg;
				attack = AT_EXTRA_2;
				state = (free? PS_ATTACK_AIR: PS_ATTACK_GROUND);
				state_timer = 0;
				window_timer = 0;
				window = 1;
				cur_spr = osp;
				cur_img = oimg;
				strong_charge = 0;
				smash_charging = 0;
				strong_flashing = 0;
			}
			old_wint = window_timer;
		}
		break;
	}
	break;
}