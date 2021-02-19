//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 1){
        target_circle_size = 1.0;  
        target_circle_alpha = 0.0;
    }
    if (window == 2){
        var fail = false;
        if (special_pressed){
            window = 3;
            window_timer = 0;
            //Strong Shot
            if (target_circle_size < 0.25){
                special_bullet_damage = 12.0;
                special_bullet_speed = 18;
                special_bullet_sprite = "bullet_proj_strong"
                special_bullet_sound = "clover_nspecial_strong";
                special_bullet_knockback = 6.0;
                special_bullet_knockback_scaling = 1.00
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bullet_proj_strong"));
            }
            else if (target_circle_size < 0.50){
                special_bullet_damage = 8.0;
                special_bullet_speed = 16;
                special_bullet_sprite = "bullet_proj"
                special_bullet_sound = "clover_nspecial_mid";
                special_bullet_knockback = 4.0;
                special_bullet_knockback_scaling = .75
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bullet_proj"));
            }
            else fail = true;
            
            set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, special_bullet_damage);
            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get(special_bullet_sound));
            set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, special_bullet_knockback);
            set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, special_bullet_knockback_scaling);
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, special_bullet_speed);
        }
        
        if (target_circle_alpha < 1.0) target_circle_alpha += 0.25;
        
        if (target_circle_size > 0.0) target_circle_size -= 0.04;
        else{
            fail = true;
        }
        
        if (fail == true){
            attack_end();
            set_attack(AT_EXTRA_1);
        }
    }
}

if (attack == AT_USPECIAL){
    if (window == 1){
        if (window_timer == 10){
            if (uspecial_save == noone){
                uspecial_save = instance_create(x,y+50,"obj_article1");
            }
        }
        if (window_timer == 30){
            //state = PS_PRATFALL;
        }
    }    

}

if (attack == AT_EXTRA_2){
    if (window == 2 and uspecial_save != noone){
        uspecial_hud_text_alpha = 3.0;
        
        var x_new = 0;
        var y_new = 0;
        
        with(uspecial_save){
            if (player_id = other.id){
                var x_new = x;    
                var y_new = y;
                instance_destroy(id)
            }

        }
        
        x = x_new;
        y = y_new;
        
        uspecial_save = noone;
        djumps = max_djumps;
        move_cooldown[AT_USPECIAL] = 10;
    }
}

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}

//DTilt
if (attack == AT_DTILT){
    can_jump = true;
}

//DSpecial
if (attack == AT_DSPECIAL){
    if (window == 2 and uspecial_save != noone){
        var hbox_x = 0;
        var hbox_y = 0;
        
        with(uspecial_save){
            dspecial_explode = true;
            var hbox_x = x;
            var hbox_y = y
        } 
        uspecial_save = noone;
    }
    else if (window == 2 and window_timer = 1 and uspecial_save == noone){
        sound_play(sound_get("clover_dspecial_fail"));
        uspecial_hud_text_alpha_2 = 3.0;
    }
}

