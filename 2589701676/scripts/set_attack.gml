//set_attack

//if (my_key.current_owner_id!=my_key.prev_owner_id){
/*
    if (attack==AT_FTILT){
        if(my_key.current_owner_id!=id){
            set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0);
        }
        else{
            reset_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING);
        }
    }
    
    if (attack==AT_UTILT){
        if(my_key.current_owner_id!=id){
            set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
        }
        else{
            reset_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING);
        }
    }
    
    if (attack==AT_DATTACK){
        if(my_key.current_owner_id!=id){
            set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0);
        }
        else{
            reset_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING);
        }
    }
    
    if (attack==AT_FSTRONG){
        if(my_key.current_owner_id!=id){
            set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
        }
        else{
            reset_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING);
        }
    }
    
    if (attack==AT_USTRONG){
        if(my_key.current_owner_id!=id){
            set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
        }
        else{
            reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING);
        }
    }
*/
    if (attack==AT_DSTRONG){
        if(my_key.current_owner_id!=id){
            
            set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
            
            set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 100);
        }
        else{
            
            reset_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING);
            
            reset_hitbox_value(AT_DSTRONG, 3, HG_WIDTH);
        }
    }
 /*  
    
    if (attack==AT_FAIR){
        if(my_key.current_owner_id!=id){
            set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0);
        }
        else{
            reset_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING);
        }
    }
    
    if (attack==AT_BAIR){
        if(my_key.current_owner_id!=id){
            set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0);
            set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 0);
            set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0);
        }
        else{
            reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK);
            reset_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING);
        }
    }
*/
    
    if(attack==AT_FSPECIAL){
        if(my_key.current_owner_id!=id){
            set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 7);
        }
        else{
            set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
        }
    }
//}

if (attack==AT_DSPECIAL && instance_exists(obj_article_platform)){
    move_cooldown[AT_DSPECIAL]=1;
}
if (attack==AT_FSPECIAL && instance_exists(obj_article2)){
    move_cooldown[AT_FSPECIAL]=1;
}