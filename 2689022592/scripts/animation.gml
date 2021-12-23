switch (state){
    case PS_WALK_TURN:
    image_index = 2
    break;
    
    case PS_DASH_STOP:
    sprite_index = sprite_get("crouch")
    image_index = state_timer/3
    break;
    
    case PS_DASH_TURN:
    sprite_index = sprite_get("waveland")
    image_index = state_timer/4
    break;
    
    case PS_LAND:
    sprite_index = sprite_get("jumpstart")
    image_index = 0
    break;
    
    case PS_PRATFALL:
    sprite_index = sprite_get("jump")
    image_index = 6
    break; 
    
    case PS_PRATLAND:
    sprite_index = sprite_get("landinglag")
    image_index = min(state_timer/4,2)
    break;  
    
    case PS_TECH_GROUND:
    sprite_index = sprite_get("waveland")
    image_index = min(state_timer/3,3)
    break;
    
    case PS_ROLL_BACKWARD:
    case PS_TECH_BACKWARD:
    sprite_index = sprite_get("roll_forward")
    //image_index = min(state_timer/3,3)
    break;
    
    case PS_ATTACK_GROUND :
     if attack == AT_TAUNT && down_down && image_index == 0 {
         image_index = 9
     }
    break;
}

if sprite_index = sprite_get("spinhurt") image_index = state_timer/3



//runestuff (why are they here?)

///lv 1
if has_rune("A") && get_gameplay_time() == 5 {
    knockback_adj -= .1;
    print(knockback_adj )
}

if has_rune("B") && get_gameplay_time() == 5 {
    knockback_adj -= .1;
    print(knockback_adj )
}

if has_rune("C") && get_gameplay_time() == 5 {
    knockback_adj -= .1;
    print(knockback_adj )
}

if has_rune("D") && get_gameplay_time() == 5 {
    knockback_adj -= .1;
    print(knockback_adj )
}

if has_rune("E") && get_gameplay_time() == 5 {
    knockback_adj -= .1;
    print(knockback_adj )
}

if has_rune("F") && get_gameplay_time() == 5 {
    knockback_adj -= .1;
    print(knockback_adj )
}


///Cross+
if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
   if has_rune("G") && attack == AT_FSPECIAL && window == 2 && window_timer == 1{
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 6.5 - (fright_down-fleft_down)*-2*spr_dir - (fup_down-fdown_down)*2 );
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -6 - (fup_down-fdown_down)*2 - (fright_down-fleft_down)*-2*spr_dir);
	create_hitbox(AT_FSPECIAL,1,x,y-22)
   }

   if has_rune("H") && attack == AT_FSPECIAL && window == 2 && window_timer == 1{
    set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 3.5 - (fright_down-fleft_down)*-2*spr_dir - (fup_down-fdown_down)*2 );
	set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -9.5 - (fup_down-fdown_down)*2 - (fright_down-fleft_down)*-2*spr_dir);
	create_hitbox(AT_FSPECIAL,1,x,y-22)
   }
   
}

///Cross Boomerang
if has_rune("I") {
    with (asset_get("pHitBox")) {
        if player_id == other.id {
          if attack == AT_FSPECIAL && hbox_num == 1 {
              if hitbox_timer > 30 {
                  hitbox_timer -= 0.8
              
            var angle = point_direction(x, y, other.x + other.hsp + other.old_hsp, other.y - 40 + other.vsp + other.old_vsp );

            hsp += lengthdir_x(0.4, angle)
            vsp += lengthdir_y(0.4, angle)
            vsp -= 0.4
            
            detectionhb = collision_circle( x, y , 20, other, true, true ) 
                     	       	if detectionhb != noone {
                     	       		hitbox_timer = 999
                     	       		sound_play(asset_get("sfx_spin"),false, noone, 1, 1.4)
                     	       	}
            
                     	       
              }

          }
        }
     }
    
}

//Regen
if has_rune("J") {
    with asset_get("oPlayer") {
   if "Tengia_pain_id" in self {
       //print(Tengia_pain)
       if Tengia_pain_id == other {
           
       if Tengia_pain_time > 0 {

           if char_height != other.char_height {
               if Tengia_pain_time%20 == 0 {
                  with other {
                      take_damage(player,-1,-1) 
                  }
                }

            }
       }
       }
       }
   }
}

//2X Explosion
