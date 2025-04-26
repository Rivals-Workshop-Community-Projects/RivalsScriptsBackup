//
dont = 1;

if attack == AT_NSPECIAL {
	collision_sprite = sprite_get("_pixel");
}

if attack == AT_DATTACK {
	stored_speed = hsp;
	stored_hsp = 0;
	stored_vsp = 0;
	hsp = 0;
	bat_trail_cd = 0;
	for (var i = 0; i < 20; i++) can_hit[i] = false;
}

if attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSTRONG {
	fx_particles = 2;
}

if attack == AT_USTRONG {
	fx_particles = 3;
	if hbox_num == 1 {
		state = 0;
		falling_arrows = 0;
		var impact = spawn_hit_fx(x,player_id.y,player_id.fx_fatal_ray_impact)
		impact.depth = player_id.depth-1;
		impact.spr_dir = sign(spr_dir)*.75;
		repeat(4){
			var trail = spawn_hit_fx(x+ease_sineInOut(32,-32,random_func_2(i,40,true),40),player_id.y-16,player_id.fx_fatal_ray_debris_longer);
			trail.depth = depth-1;
			trail.hsp = lengthdir_x(random_func_2(20+i,3,false)+7,lerp(80,100,random_func_2(i,40,true)/40));
			trail.vsp = lengthdir_y(random_func_2(20+i,3,false)+7,lerp(80,100,random_func_2(i,40,true)/40));
			trail.grav = .45;
			trail.draw_angle = random_func_2(10+i,360,true);
			i++;
		}
	}
}

if attack == AT_DSTRONG {
	dont = 0;
}