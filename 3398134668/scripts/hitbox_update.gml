// hitbox_update is a script called every frame for each of your character's hitboxes. Always from the prespective of the hitbox.


if (attack == AT_NSPECIAL) && hbox_num != 2
{
	player_id.attack_cooldown[AT_NSPECIAL] = 120;


if (hitbox_timer % 4 == 0)
{
	spawn_hit_fx(x,y,player_id.proj_trail_vfx);
}
}


if attack == AT_NSPECIAL && hbox_num = 2{
	if hitbox_timer % 10 = 0{
		instance_create(x, y, "obj_article1");
	}
}

if attack == AT_EXTRA_3{
	if hbox_num < 6{
	
	    var assignedArticle = player_id.globalItemSolver.globalItemOut[(hbox_num-1)+(orig_player*6)]
	    
		if hitLocked > 0 hitLocked -= 1;
		
		var hitboxID = self;
		var hitboxAmount = 12;
		
	    if !instance_exists(assignedArticle) instance_destroy(self);
	    else{
			with assignedArticle{
				if hitboxID.reflected{
					player_id = hitboxID.last_player_id;
				}
				assignedHitbox = hitboxID;
				if hitboxID.has_hit_player || hitboxID.was_parried{
					if hitboxID.was_parried{
						player_id = hitboxID.last_player_id;
						hitboxID.was_parried = false;
						hitboxID.reflected = false;
					}
					maxHits -= 1;
					hitboxID.hitLocked = 30;
					hitboxID.has_hit_player = false;
					if bounceOnHit{
					    if playSound{
				            sound_play(sound_get("item_bounce"), false, noone, 4, 1);
				            playSound = false;
				        }
				        if abs(saveSpeed[1]) >= stopThreshold vsp = (vsp*bounciness_);
				        if free hsp = -(saveSpeed[0]*slide_);
				        else hsp = -(hsp*slide_);
				        if abs(vsp) < stopThreshold vsp = 0;
				        if abs(hsp) < 0.2 hsp = 0;
					}
				}
				else if sign(hsp) != 0 hitboxID.spr_dir = sign(hsp);
			}
			with oPlayer{
		    	if hitboxID.hitLocked <= 0 if sign(hitboxID.x-x) != sign(assignedArticle.hsp){
		    		 if hitboxID.last_player_id != self{
		    		 	hitboxID.can_hit[player] = true;
		    		 }
		    	}
		    	else hitboxID.can_hit[player] = false;
	    	}
	    }
	}
	else{
		if hbox_num = 6{
			if !free{
				sound_play(sound_get("IonExplosion"), false, noone, 1, 1);
				create_hitbox(AT_EXTRA_3, 7, x, y);
				with player_id shake_camera(5, 10);
				instance_destroy(self);
			}
		}
	}
}
