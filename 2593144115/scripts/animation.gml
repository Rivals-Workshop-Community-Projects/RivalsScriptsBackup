switch (state){
     case PS_DASH:
     case PS_DASH_TURN:
	 hurtboxID.sprite_index = sprite_get("dashbox");
     break;

     case PS_DASH_START:
         if (state_timer > 5) hurtboxID.sprite_index = sprite_get("dashbox");
         else hurtboxID.sprite_index = hurtbox_spr;
     break;

     case PS_DASH_STOP:
     case PS_IDLE:
     case PS_WALK:
     case PS_WALK_TURN:
     case PS_JUMPSQUAT:
     case PS_LAND:
     case PS_IDLE_AIR:
     case PS_FIRST_JUMP:
     case PS_DOUBLE_JUMP:
     case PS_HITSTUN:
     case PS_HITSTUN_LAND:
     case PS_TUMBLE:
     case PS_WRAPPED:
     case PS_FROZEN:
     case PS_PRATFALL:
     case PS_PRATLAND:
     case PS_LANDING_LAG:
     case PS_WALL_JUMP:
     case PS_PARRY_START:
	 hurtboxID.sprite_index = hurtbox_spr;
     break;
}
