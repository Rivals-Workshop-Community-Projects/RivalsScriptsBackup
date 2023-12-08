// called when the character gets KO'd
 char_height = 52;
 shine_parried = false;
 GAUGE_NAME_CURRENT = 0;
 MUS_NOTE=0;
 HITD = 0;
// death.gml
    	///FAIR
			reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_FAIR, 1, HG_ANGLE);
            reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
            reset_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT);
            
            reset_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_FAIR, 2, HG_ANGLE);
            reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
            reset_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT);
    ///NAIR
    		reset_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK);
		  	reset_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING);
		    reset_hitbox_value(AT_NAIR, 1, HG_ANGLE);
            reset_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
            reset_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT);
    //UAIR
            reset_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
            reset_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT);
    
            reset_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_UAIR, 2, HG_DAMAGE);
            reset_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT);
            
            reset_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_UAIR, 3, HG_DAMAGE);
            reset_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT);
            
            reset_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_UAIR, 4, HG_DAMAGE);
            reset_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT);
        
     ///BAIR
     		reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE);
			reset_hitbox_value(AT_BAIR, 1, HG_ANGLE);
			reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
			reset_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT);
            
            reset_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_BAIR, 2, HG_DAMAGE);
            reset_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT);
      ///DAIR
      		reset_hitbox_value(AT_DAIR, 2, HG_DAMAGE);
			reset_hitbox_value(AT_DAIR, 3, HG_DAMAGE);
			reset_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE);
		    reset_hitbox_value(AT_DAIR, 4, HG_DAMAGE);
			reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
			reset_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT);
			reset_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT);
			reset_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT);
			reset_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT);
			
	  ///NSPECIAL 
	        reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK)
	        reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);