//asd

bounce_angle = 0;
bounce_stretch = 0;
bounce_offset = 0;
bounce_fall = 0;
button_down = 0;

bounce_transp = 1;

sting_angle1 = 0;
sting_angle2 = 0;
sting_angle3 = 0;

raptorbooste = noone;

reset_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH);
reset_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH);

set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 20);

bounce_hit = false;

suckerpose = random_func(0, 3, true);
suckerpunchsludge = false;

croagfstrongcharge = 0;

if down_down && attack == AT_TAUNT
{
    set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("waveland"));
    window = 4;
}
else
{
    reset_attack_value(AT_TAUNT, AG_SPRITE);
}

switch (suckerpose)
{
    case 0:
    {

        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
        

        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
    }break;
    
    case 1:
    {

        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 7);

        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
        

        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);

        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
    }break;
    
    case 2:
    {

        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 14);

        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 16);
        

        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 18);

        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 19);
    }break;
}

switch (croagstance)
{
    case 1:
    {
        if attack == AT_NSPECIAL
        {
            attack = AT_NSPECIAL;
        }
        
        if attack == AT_FSPECIAL
        {
            attack = AT_FSPECIAL;
        }
        
        //DSPECIAL -> Nasty
        set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspec_nasty"));
        
        //DATTACK
        set_num_hitboxes(AT_DATTACK, 2);
        set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 50);
        set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 50);
        set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 20);
        set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -10);
        
        //U-AIR
        set_num_hitboxes(AT_UAIR, 2);
        set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 30);
        set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 50);
        
        set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 40);
        set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 30);
        
        set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 30);
        set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -48);
        
        set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 8);
        set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -76);
        
        //D-AIR
        set_num_hitboxes(AT_DAIR, 4);
        set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 15);
        set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -5);

        set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 15);
        set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -5);
        
        set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 15);
        set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -5);
        
        //F-AIR
        set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 20);
        
        set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
        
        set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
        set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
        set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 7);
        set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 15);
        set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -35);
        set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 42);
        set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 38);
        set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
        set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
        set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 9);
        set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
        set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .3);
        set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, fighthit);
        set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
        set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
        set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 12);
        set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("dp-hit2"));
        set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
        
        //DSTRONG
        set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
        set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 20);
        
        //FSTRONG
        set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
        set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 20);
        set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 20);
        
        //uSTRONG
        set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 7);
        set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 20);
    }break;
    
    case 2:
    {
        if attack == AT_NSPECIAL
        {
            attack = AT_NSPECIAL_2;
        }
        
        if attack == AT_FSPECIAL
        {
            attack = AT_FSPECIAL_2;
            
            if croagbelchcharged && attack == AT_FSPECIAL_2
            {
                window = 4;
            }
            else
            {
                croagberry = random_func(0, 4, true);
            }
        }
        
        //uSTRONG
        set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 20);
        set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 7);
        
        //FSTRONG
        set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 20);
        set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 4);
        set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 4);
        
        //DSTRONG
        set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 20);
        set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
        
        //DSPECIAL -> Swagger
        set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspec_swagger"));
        
        //F-AIR
        set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
        
        set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 20);
        
        set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
        set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
        set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 7);
        set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 20);
        set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -35);
        set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 55);
        set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 50);
        set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
        set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
        set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 9);
        set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
        set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
        set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .3);
        set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, fighthit);
        set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
        set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
        set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 12);
        set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("dp-hit2"));
        set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
        
        //D-AIR
        set_num_hitboxes(AT_DAIR, 8);
        set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 5);
        set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -15);
        
        set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 5);
        set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -15);
        
        set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 5);
        set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -15);
        
        //U-AIR
        set_num_hitboxes(AT_UAIR, 4);
        set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 30);
        set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 50);
        
        set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 40);
        set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 25);
        
        set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 25);
        set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -48);
        
        set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 8);
        set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -66);
        
        //DATTACK
        set_num_hitboxes(AT_DATTACK, 4);
        set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 40);
        set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 40);
        set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 10);
        set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -10);
        
    }break;
}