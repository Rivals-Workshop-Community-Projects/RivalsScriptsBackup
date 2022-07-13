//user_event6

//hit with hitbox
var hitbox = noone;
if instance_place(x, y, pHitBox) {
	var currentPriority = 0;
	with pHitBox if player_id != other.player_id {
		if (instance_place(x, y, other)) {
			with player_id {
				var hitboxParent = get_hitbox_value(other.attack, other.hbox_num, HG_PARENT_HITBOX);
				var hboxNum = other.hbox_num;
	            if (hitboxParent != 0) {
	                hboxNum = hitboxParent;
	            }
				var hitboxPriority = get_hitbox_value(other.attack, hboxNum, HG_PRIORITY);
			}
			if hitboxPriority > currentPriority {
				currentPriority = hitboxPriority;
				hitbox = id;
			}
		}
	}
}


if (hitbox != noone && !invincible) {
    if !(hitbox.player_id == player_id) {
    	var baseHitpause = hitbox.hitpause;
        var hitpauseScaling = hitbox.hitpause_growth
        var extraHitpause = hitbox.extra_hitpause
        
        with hitbox.player_id {
            var hitboxParent = get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_PARENT_HITBOX);
            var hboxNum = hitbox.hbox_num;
            if (hitboxParent != 0) {
                hboxNum = hitboxParent;
            }
            
            var _hitpause = baseHitpause /*+ (0 * hitpauseScaling * 0.05);*/
            
            var hitboxDistX = other.x - hitbox.x;
	        var hitboxDistY = other.y - hitbox.y;
	        
	        var oppDistX = other.x - x;
	        var oppDistY = other.y - y;
	        
	        var hitboxSprDir = spr_dir;
	        var oppHsp = hsp;
        }
        
        var hitboxGroup = hitbox.hbox_group;
        var hitboxSound = hitbox.sound_effect;
        var hitboxAngle = hitbox.kb_angle;
        var hitboxAngleFlipper = hitbox.hit_flipper;
        var hitboxDamage = hitbox.damage;
        
        var baseKnockback = hitbox.kb_value;
        var knockbackScaling = hitbox.kb_scale;
        var hitstunMultiplier = hitbox.hitstun_factor;
        
        var hitboxEffect = hitbox.effect;
        
        var hitboxCat = hitbox.type;
        
        //print(hitboxGroup)
        //print(prevHitboxGroup)
        if (hitbox != prevHitboxID && (hitboxGroup != prevHitboxGroup || hitboxGroup == -1)) {
        	var superarmour = false;
            
            var playerHitstun = (baseKnockback*4*((knockback_adj-1)*0.6 + 1) + damage*0.12*knockbackScaling*4*0.65*knockback_adj);
            var playerKnockback = baseKnockback + (damage*knockbackScaling*0.12*knockback_adj);
            
            if prevHitboxAttack != hitbox.attack || !hitbox_active {
            	decreased_var = false;
            }
            
            prevHitboxID = hitbox;
            prevHitboxPlayerID = hitbox.player_id
            prevHitboxNumber = hboxNum;
            prevHitboxAttack = hitbox.attack;
            prevHitboxGroup = hitboxGroup;
            
            hitstun = playerHitstun;
            
            if (hitboxAngle == 361) { //soccerguy angle
            if (free) {
                hitAngle = 45;
            } else {
                hitAngle = 40;
            }
            } else {
                hitAngle = hitboxAngle;
            }
            
            hitKnockback = playerKnockback;
            hitXDir = hitboxSprDir;
            hitYDir = 1;
            switch (hitboxAngleFlipper) {
                case 0:
                break;
                
                case 1:
                hitAngle = darctan2(-oppDistY + 40, hitboxSprDir*oppDistX);
                break;
                
                case 2:
                hitAngle = darctan2(oppDistY + 40, -hitboxSprDir*oppDistX);
                break;
                
                case 3:
                hitXDir = sign(hitboxDistX);
                hitAngle = darctan2(dsin(hitAngle), abs(dcos(hitAngle)));
                break;
                
                case 4:
                hitXDir = -sign(hitboxDistX);
                hitAngle = darctan2(dsin(hitAngle), abs(dcos(hitAngle)));
                break;
                
                case 5:
                hitXDir *= -1;
                break;
                
                case 6:
                hitXDir = sign(oppDistX);
                hitAngle = darctan2(dsin(hitAngle), abs(dcos(hitAngle)));
                break;
                
                case 7:
                hitXDir = -sign(oppDistX);
                hitAngle = darctan2(dsin(hitAngle), abs(dcos(hitAngle)));
                break;
                
                case 8:
                hitAngle = darctan2(-hitboxDistY, hitboxSprDir*hitboxDistX);
                break;
                
                case 9:
                hitAngle = darctan2(hitboxDistY, -hitboxSprDir*hitboxDistX);
                break;
                
                case 10:
                if (sign(dcos(hitAngle)) != sign(oppHsp)) {
                	hitXDir = -hitboxSprDir;
                }
                break;
            }
            
            sound_play(hitbox.sound_effect)
            with hitbox.player_id {
                //sound_play(get_hitbox_value(hitbox.attack, hboxNum, HG_HIT_SFX));
                var hitboxVfx = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT);
                if hitboxVfx == 0 hitboxVfx = 301
                var hitboxVfxX = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT_X_OFFSET);
                var hitboxVfxY = get_hitbox_value(hitbox.attack, hboxNum, HG_VISUAL_EFFECT_Y_OFFSET);
                var fx = spawn_hit_fx(hitbox.x, hitbox.y, hitboxVfx);
                	fx.pause = 8
                if (hitboxCat != 2) && !superarmour {
                    hitpause = true;
                    hitstop_full = _hitpause;
                    hitstop = _hitpause;
                    old_hsp = hsp;
                    old_vsp = vsp;
                    shake_camera(floor(clamp(playerKnockback/2, 4, 10)), 2)
                }
                
                has_hit = true;
                
                //knight soul regen
                if url == 2105527362 {
                	if (soul_points < 100)
				     {
				          old_soul_points = soul_points
				
				          soul_points += round((hitbox.damage));
				
				          if (soul_points > 100)
				          {
				               soul_points = 100;
				          }
				
				          var i;
				          for (i = 25; i < 125; i += 25)
				          {
				               if (old_soul_points < i && soul_points >= i)
				               {
				                    soul_full_play = 0;
				               }
				          }
				     }
                }
            }
            player_id.mantis_damage_array[spawn_num-1] += hitbox.damage
            
            flash_timer = 10
            
            
            /*
            if !superarmour {
            	
                image_angle = 0;
                
                hitpause = true;
                hitstop_full = _hitpause + extraHitpause;
                hitstop = _hitpause + extraHitpause;
                
				attack_timer = 0;
				has_hit = false;
				
				next_state = free ? PS_HITSTUN : PS_HITSTUN_LAND
				exit_state = true
            }
            */
        }
    }
} else if prevHitboxPlayerID != undefined && !((prevHitboxPlayerID.state == PS_ATTACK_AIR || prevHitboxPlayerID.state == PS_ATTACK_GROUND) && prevHitboxPlayerID.attack == prevHitboxAttack) {
	prevHitboxGroup = undefined;
}

if not_hitpause_timer == 1 && !decreased_var {
	hp -= 1;
}

if not_hitpause_timer == 10 && !decreased_var && !has_hit {
	if !decreased_var {
		decreased_var = true;
	}
	/*
	if !hitbox_active && hp > 0 {
	    var hitbox = create_hitbox(AT_FTHROW, 1, x, y - 20);
	        hitbox.owner = id;
	}
	*/
}
/*
if hp < 0 {
	die_timer = 60;
}
*/

if (!hitpause) && (hitstun <= 0) {
    hitstun = 0;
    prevHitboxGroup = undefined;
}

if (hitpause) {
	//print(hitstop)
    if (hitstop <= 0) {
        hitpause = false;
        hitstop = 0;
        hitstop_full = 0;
    }
    /*
    if (hitstop <= 0) {
        if (vsp > 0) && (!free) && (hitstop == 0) {
            vsp *= -0.5;
        }
        if has_hit {
			hsp = old_hsp
			vsp = old_vsp
        } else {
        	hsp = (hitXDir * hitKnockback * dcos(hitAngle));
	        vsp = (-hitYDir * hitKnockback * dsin(hitAngle));
        }
    }
    
    if (!free) && (vsp > 0) {
        vsp *= -1;
    }
    */
}