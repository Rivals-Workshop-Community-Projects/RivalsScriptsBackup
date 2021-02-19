				latest_light_sentry.hitstop=4;
				latest_light_sentry.state=3;
				latest_light_sentry.state_timer=0;
				sound_play(sound_get("shatterlight"));
				
				if (taunt_down){
					set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bullet1_ball"));
					sound_play(sound_get("drums"));
				}else{
					reset_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE);
				}
				
				var lb1 = create_hitbox( AT_FSPECIAL, 1, latest_light_sentry.x, latest_light_sentry.y );
				var lb2 = create_hitbox( AT_FSPECIAL, 1, latest_light_sentry.x, latest_light_sentry.y );
				var lb3 = create_hitbox( AT_FSPECIAL, 1, latest_light_sentry.x, latest_light_sentry.y );
				var lb4 = create_hitbox( AT_FSPECIAL, 1, latest_light_sentry.x, latest_light_sentry.y );
				var lb5 = create_hitbox( AT_FSPECIAL, 1, latest_light_sentry.x, latest_light_sentry.y );
				var lb6 = create_hitbox( AT_FSPECIAL, 1, latest_light_sentry.x, latest_light_sentry.y );
				var lb7 = create_hitbox( AT_FSPECIAL, 1, latest_light_sentry.x, latest_light_sentry.y );
				var lb8 = create_hitbox( AT_FSPECIAL, 1, latest_light_sentry.x, latest_light_sentry.y );
				
				if (parried_storage!=-4){
					print_debug("parriedstorage happened");
					lb1.player = parried_storage;
					lb2.player = parried_storage;
					lb3.player = parried_storage;
					lb4.player = parried_storage;
					lb5.player = parried_storage;
					lb6.player = parried_storage;
					lb7.player = parried_storage;
					lb8.player = parried_storage;
					
					lb1.spr_dir = spr_dir * -1;
					lb2.spr_dir = spr_dir * -1;
					lb3.spr_dir = spr_dir * -1;
					lb4.spr_dir = spr_dir * -1;
					lb5.spr_dir = spr_dir * -1;
					lb6.spr_dir = spr_dir * -1;
					lb7.spr_dir = spr_dir * -1;
					lb8.spr_dir = spr_dir * -1;
					
					lb1.hsp = 6.5*(spr_dir); // middle
					lb2.hsp = 6.5*(spr_dir); // middle
					lb3.hsp = 7*(spr_dir); // near center
					lb4.hsp = 7*(spr_dir); // near center
					lb5.hsp = 6*(spr_dir); // furthest
					lb6.hsp = 6*(spr_dir); // furthest
					lb7.hsp = 7.1*(spr_dir); // centre
					lb8.hsp = 7.1*(spr_dir); // centre
					
					parried_storage = -4;
					print_debug("parriedstorage over");
				}else{
				
				if (attack == AT_BAIR){
					lb1.spr_dir = spr_dir * -1;
					lb2.spr_dir = spr_dir * -1;
					lb3.spr_dir = spr_dir * -1;
					lb4.spr_dir = spr_dir * -1;
					lb5.spr_dir = spr_dir * -1;
					lb6.spr_dir = spr_dir * -1;
					lb7.spr_dir = spr_dir * -1;
					lb8.spr_dir = spr_dir * -1;
					
					lb1.hsp = 6.5*(spr_dir); // middle
					lb2.hsp = 6.5*(spr_dir); // middle
					lb3.hsp = 7*(spr_dir); // near center
					lb4.hsp = 7*(spr_dir); // near center
					lb5.hsp = 6*(spr_dir); // furthest
					lb6.hsp = 6*(spr_dir); // furthest
					lb7.hsp = 7.1*(spr_dir); // centre
					lb8.hsp = 7.1*(spr_dir); // centre
					
				}else{
				
					lb1.hsp = 6.5*(spr_dir*-1); // middle
					lb2.hsp = 6.5*(spr_dir*-1); // middle
					lb3.hsp = 7*(spr_dir*-1); // near center
					lb4.hsp = 7*(spr_dir*-1); // near center
					lb5.hsp = 6*(spr_dir*-1); // furthest
					lb6.hsp = 6*(spr_dir*-1); // furthest
					lb7.hsp = 7.1*(spr_dir*-1); // centre
					lb8.hsp = 7.1*(spr_dir*-1); // centre
				}
				}
				
				lb1.vsp = -3;
				lb2.vsp = 3;
				lb3.vsp = -1.6;
				lb4.vsp = 1.6;
				lb5.vsp = -3.5;
				lb6.vsp = 3.5;
				lb7.vsp = -0.8;
				lb8.vsp = 0.8;
				
				
				
				
				
				
				
				
				