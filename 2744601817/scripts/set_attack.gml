//set_attack

/*
muno_event_type = 2;
user_event(14);
*/

switch (attack){
    case(AT_DATTACK):
        //Red
        if (red_mode == 1){
            set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
            set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
            set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 6);
            set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
            set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 12);
            //anim
            set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 14);
            set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 16);
            set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 18);
            set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 20);
            set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 22);
            set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 24);
            set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START, 25);
            
            set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
            set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
            set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.4);
            set_hitbox_value(AT_DATTACK, 1, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, fx_rhit);
            
            set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
            set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 5);
            set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.4);
            set_hitbox_value(AT_DATTACK, 2, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, fx_rhit);
            
            set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 4);
            set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 5);
            set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.4);
            set_hitbox_value(AT_DATTACK, 3, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, fx_rhit);
            
            set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 4);
            set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 5);
            set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0.4);
            set_hitbox_value(AT_DATTACK, 4, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, fx_rhit);
            
            set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 60);
            set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 2);
            set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 8);
            set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, .6);
            set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 10);
            set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.9);
            set_hitbox_value(AT_DATTACK, 5, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, fx_rhit);
            
            
            set_hitbox_value(AT_DATTACK, 6, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT, fx_rhit);
        } 
        //Purple
        else if (red_mode == 2){
            set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 2);
            set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
            set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
            set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 4);
            set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
            set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 8);
            
            set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
            set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
            set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.4);
            set_hitbox_value(AT_DATTACK, 1, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, fx_phit);
            set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 4);
            set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .1);
            set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
            set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
            set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.4);
            set_hitbox_value(AT_DATTACK, 2, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, fx_phit);
            set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 4);
            set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .1);
            set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 80);
            set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 4);
            set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 9);
            set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .1);
            set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 9);
            set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.9);
            set_hitbox_value(AT_DATTACK, 3, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, fx_phit);
            set_hitbox_value(AT_DATTACK, 4, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, fx_phit);
        }
        //Blue
        else {
            reset_attack_value(AT_DATTACK, AG_SPRITE);
            reset_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES);
            reset_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES);
            reset_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH);
            //anim
            reset_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAME_START);
            
            reset_hitbox_value(AT_DATTACK, 1, HG_DAMAGE);
            reset_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_DATTACK, 1, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING);
            
            reset_hitbox_value(AT_DATTACK, 2, HG_DAMAGE);
            reset_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_DATTACK, 2, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING);
            
            reset_hitbox_value(AT_DATTACK, 3, HG_DAMAGE);
            reset_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_DATTACK, 3, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING);
        
            reset_hitbox_value(AT_DATTACK, 4, HG_DAMAGE);
            reset_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_DATTACK, 4, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING);
            
            reset_hitbox_value(AT_DATTACK, 5, HG_ANGLE);
            reset_hitbox_value(AT_DATTACK, 5, HG_DAMAGE);
            reset_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_DATTACK, 5, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT);
            
            reset_hitbox_value(AT_DATTACK, 6, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT);
        }
        break;
    case(AT_DSPECIAL):
        //Joycon Alt
        if (joycons){
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("joycon"));
            set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("joycon"));
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 15);
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 17);
            set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 10);
            set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 12);
        }
        if (kawaii){
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 25);
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 27);
            set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 20);
            set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 22);
        }
        if (!red_mode){
        }
        else {
            attack = AT_DSPECIAL_2;
        }
        break;
    case(AT_FSPECIAL):
        if (!red_mode){
        }
        else {
            attack = AT_FSPECIAL_2;
        }
        break;
    case(AT_DSPECIAL_2):
        //Joycon Alt
        if (joycons){
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("joycon"));
            set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("joycon"));
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 15);
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 17);
            set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 10);
            set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 12);
        }
        if (kawaii){
            set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 25);
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 27);
            set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 20);
            set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 22);
        }
        break;
    case(AT_NAIR):
        if (red_mode){
            set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 9);
            set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 10);
            set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 13);
            set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 17);
            
            set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 8);
            set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 60);
            set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 9);
            set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
            set_hitbox_value(AT_NAIR, 3, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, fx_rhit);
            set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 9);
            set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .45);
            set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 8);
            set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 60);
            set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 9);
            set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
            set_hitbox_value(AT_NAIR, 4, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, fx_rhit);
            set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 11);
            set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .6);
        } else {
            reset_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH);
            reset_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH);
            reset_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START);

            
            reset_hitbox_value(AT_NAIR, 3, HG_DAMAGE);
            reset_hitbox_value(AT_NAIR, 3, HG_ANGLE);
            reset_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_NAIR, 3, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_NAIR, 4, HG_DAMAGE);
            reset_hitbox_value(AT_NAIR, 4, HG_ANGLE);
            reset_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_NAIR, 4, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING);
        }
        break;
    case(AT_DTILT):
        if (red_mode){
            set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 11);//11
            set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);//17
            set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);//29
                
            set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 7);
            set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8); 
            set_hitbox_value(AT_DTILT, 1, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, fx_rhit);
            set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 10);
            set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .9);
            set_hitbox_value(AT_DTILT, 2, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, fx_rhit);
            set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 6);
            set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .2);
        }
        else if (!red_mode) {
            reset_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH);//11
            reset_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH);//17
            reset_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH);//29
                
            reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
            reset_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK); 
            reset_hitbox_value(AT_DTILT, 1, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_DTILT, 2, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING);
        }
        break;
    case(AT_JAB):
        if (red_mode == 1){
            set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
            set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6);
            set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 8);
            set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("rswish_light1"));
            set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("rswish_light1"));
            set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 9);
            
            //Anim
            set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 8);
            set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 10);
            set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 11);
            set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 12);
            set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 13);
            
            //Attack
            set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
            set_hitbox_value(AT_JAB, 1, HG_ANGLE, 80);
            set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
            set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
            set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, .6);
            set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, fx_rhit);
            set_hitbox_value(AT_JAB, 1, HG_HIT_PARTICLE_NUM, 2);
            
            set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
            set_hitbox_value(AT_JAB, 2, HG_ANGLE, 65);
            set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 8);
            set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .7);
            set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 10);
            set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .8);
            set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, fx_rhit);
            set_hitbox_value(AT_JAB, 2, HG_HIT_PARTICLE_NUM, 2);
        }
        else if (red_mode == 2){
            set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
            set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 1);
            set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
        } 
        else {
            reset_window_value(AT_JAB, 1, AG_WINDOW_TYPE);
            reset_window_value(AT_JAB, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_JAB, 1, AG_WINDOW_SFX);
            reset_window_value(AT_JAB, 3, AG_WINDOW_SFX);
            reset_window_value(AT_JAB, 5, AG_WINDOW_LENGTH);
            
            //Anim
            reset_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START);
            
            //Attack
            reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
            reset_hitbox_value(AT_JAB, 1, HG_ANGLE);
            reset_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_JAB, 1, HG_HIT_PARTICLE_NUM);
            
            reset_hitbox_value(AT_JAB, 2, HG_DAMAGE);
            reset_hitbox_value(AT_JAB, 2, HG_ANGLE);
            reset_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_JAB, 2, HG_HIT_PARTICLE_NUM);
        }
        break;
    case(AT_DAIR):
        if (red_mode){
            set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);//10
            set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("rdair"));
            
            set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
            set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .7);
            set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 12);
            set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 0);
            set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("spike2"));
            set_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_DAIR, 2, HG_HIT_PARTICLE_NUM, 2);
            
            set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 11);
            set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1);
        } else {
            reset_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH)
            reset_window_value(AT_DAIR, 1, AG_WINDOW_SFX);
            
            reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
            reset_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_DAIR, 2, HG_DAMAGE);
            reset_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_DAIR, 2, HG_HIT_SFX);
            reset_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_DAIR, 2, HG_HIT_PARTICLE_NUM);

            reset_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING);
        }
        break;
    case(AT_FTILT):
        if(red_mode == 1){
            set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("rswish_med1"));
            set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
            set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 13);
            
            //Animation
            set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 7);
            set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 9);
            set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 11);
            
            set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .6);
            set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 10);
            set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, fx_rhit );
            set_hitbox_value(AT_FTILT, 1, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 9);
            set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .8);
            
        }else if (red_mode == 2){
            attack = AT_FSTRONG;
            set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 6);
            set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
            set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
            set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 8);
        } else {   
        	
            reset_window_value(AT_FTILT, 1, AG_WINDOW_SFX);
            reset_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH);
            
            //Animation
            reset_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START);
            
        	reset_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE);
        	reset_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED);
            reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FTILT, 1, HG_DAMAGE);
            reset_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_FTILT, 1, HG_HIT_SFX);
        	reset_hitbox_value(AT_FTILT, 1, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING);
        }
        break;
    case AT_UTILT:
            if (red_mode){
            set_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED, 1.5);
            set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);//9
            set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);//13
            set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);//25
            set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("rutilt"));
            
            //Animation
            set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 7);
            set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 9);
            set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 11);

            set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 9);
            set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 9);
            set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
            set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 9);
            set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
            set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.5);
                
            set_hitbox_value(AT_UTILT, 1, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, fx_rhit );
            set_hitbox_value(AT_UTILT, 2, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, fx_rhit );
            set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 10);
            set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .7);
            set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 10);
            set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .7);
            }
        else if (!red_mode) {
            reset_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED);
            reset_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH);
            reset_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH);
            reset_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH);
            reset_window_value(AT_UTILT, 1, AG_WINDOW_SFX);
            
            //Animation
            reset_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START);
            
            reset_hitbox_value(AT_UTILT, 1, HG_DAMAGE);
            reset_hitbox_value(AT_UTILT, 2, HG_DAMAGE);
            reset_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING);
                
            reset_hitbox_value(AT_UTILT, 1, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_UTILT, 2, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING);
        }
        break;
    case AT_FAIR:
        if (red_mode){
            set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);//14
            set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("rswish_med1"));
            set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 10);//24
            
            //Animation
            set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 9);
            set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 12);
            set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 14);
            
            set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 10);
            set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
            set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .8);
            set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
            set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 0);
            set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 10);
            set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .7);
            set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, fx_rhit);
            set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

            set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 10);
            set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
            set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .25);
            set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
            set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .8);
            set_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM, 2);
            set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
            set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 0);
            set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 9);
            set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .7);
            set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, fx_rhit);
            set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
        } else {
            reset_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH);//14
            reset_window_value(AT_FAIR, 1, AG_WINDOW_SFX);
            reset_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH);//24
            
            //Animation
            reset_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START);
            reset_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START);
                
            reset_hitbox_value(AT_FAIR, 1, HG_DAMAGE);
            reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_FAIR, 1, HG_ANGLE);
            reset_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER);
            reset_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_FAIR, 1, HG_HIT_SFX);

            reset_hitbox_value(AT_FAIR, 2, HG_DAMAGE);
            reset_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_FAIR, 2, HG_HIT_PARTICLE_NUM);
            reset_hitbox_value(AT_FAIR, 2, HG_ANGLE);
            reset_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER);
            reset_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE);
            reset_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING);
            reset_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT);
            reset_hitbox_value(AT_FAIR, 2, HG_HIT_SFX);
        }
        break;
        case AT_BAIR:
            if (red_mode){
                set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 9);
                set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("rswish_light1"));
                set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 7);
                set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, sound_get("rswish_light1"));
                
                //Animation
                set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 8)
                set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 10)
                set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11)
                set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 12)
                
                set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
                set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
                set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .4);
                set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, fx_rhit);
                set_hitbox_value(AT_BAIR, 1, HG_HIT_PARTICLE_NUM, 2);
                
                set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 4);
                set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);
                set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
                set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .7);
                set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, fx_rhit);
                set_hitbox_value(AT_BAIR, 2, HG_HIT_PARTICLE_NUM, 2);
            } else {
                reset_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH);
                reset_window_value(AT_BAIR, 1, AG_WINDOW_SFX);
                reset_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH);
                reset_window_value(AT_BAIR, 3, AG_WINDOW_SFX);
                
                //Animation
                reset_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START)
                reset_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START)
                reset_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START)
                reset_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START)
                
                reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
                reset_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING);
                reset_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT);
                reset_hitbox_value(AT_BAIR, 1, HG_HIT_PARTICLE_NUM);
                
                reset_hitbox_value(AT_BAIR, 2, HG_DAMAGE);
                reset_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING);
                reset_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT);
                reset_hitbox_value(AT_BAIR, 2, HG_HIT_PARTICLE_NUM);
            }
            break;
        case(AT_UAIR):
            if (red_mode == 1){
                set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
                set_hitbox_value(AT_UAIR, 1, HG_HIT_PARTICLE_NUM, 2);
                set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, fx_rhit);
            } else {
                reset_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH);
                reset_hitbox_value(AT_UAIR, 1, HG_HIT_PARTICLE_NUM);
                reset_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT);
            }
            break;
    case(AT_FSTRONG):
        if (red_mode){
            attack = AT_FSTRONG_2;
        }
        break;
    case(AT_USPECIAL):
        if (red_mode){
            attack = AT_USPECIAL_2;
        }
        break;
    case(AT_DSTRONG):
        if (red_mode){
            attack = AT_DSTRONG_2;
        }
        break;
    case(AT_USTRONG):
        if (red_mode){
            attack = AT_USTRONG_2;
        }
        break;
}