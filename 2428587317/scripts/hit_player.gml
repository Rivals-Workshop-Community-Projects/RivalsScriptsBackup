//hit_player - called when one of your hitboxes hits a player
//if(!in0g)can0g = true;

can0g = !in0g;
if(!hit_player_obj.physics0gsetup && hit_player_obj.clone == false){
    with(hit_player_obj){
    if(!("can0g" in self)){
        switch(player){
        
        case 1:
            other.physics0g[1] = instance_create(x, y, "obj_article2");
            myPhysics0g = other.physics0g[1];
            other.physics0g[1].sprite_index = hurtbox_spr;
            break;
        case 2:
            other.physics0g[2] = instance_create(x, y, "obj_article2");
            myPhysics0g = other.physics0g[2];
            other.physics0g[2].sprite_index = hurtbox_spr;
            break;
        case 3:
            other.physics0g[3] = instance_create(x, y, "obj_article2");
            myPhysics0g = other.physics0g[3];
            other.physics0g[3].sprite_index = hurtbox_spr;
            break;
        case 4:
            other.physics0g[4] = instance_create(x, y, "obj_article2");
            myPhysics0g = other.physics0g[4];
            other.physics0g[4].sprite_index = hurtbox_spr;
            break;
        }
    }
    physics0gsetup = true;
    }
}
if((in0g && !hitin0g) || attack == AT_NSPECIAL){
t = hitin0g;
hitin0g = true;
if(!(attack == AT_NSPECIAL && t)){
    
    spawn_hit_fx( x, y-33, ghit );
    sound_play(sound_get( "0ghit" ));
    
}
}
//dstrongID = noone;
if(attack == AT_DSTRONG){
    hit_player_obj.free = true;
    if(hit_player_obj.last_hbox_num == 3 || hit_player_obj.last_hbox_num == 5){
        dstrongID = hit_player_obj;
    }
}

if(hit_player_obj.timer0g > 0 && hit_player_obj.url != url){
    //hit_player_obj.knockback_adj = hit_player_obj.knockback_adj * .00025;
    physics0g[hit_player_obj.player].vsp = 0;
    physics0g[hit_player_obj.player].hsp = 0;
    
}
if(hit_player_obj.last_attack == AT_DSPECIAL){
    /*if(hit_player_obj.last_hbox_num == 1){
        banan.count2frame = 2;
        //instance_destroy( banandetect );
    }*/
    //if(hit_player_obj.last_hbox_num == 2){
    if(hit_player_obj.clone == false && hit_player_obj.url != url){
    //physics0g[hit_player_obj.player].timer = 120;
    //physics0g[hit_player_obj.player].vsp = -4;
    //physics0g[hit_player_obj.player].hsp = 0;
    //physics0g[hit_player_obj.player].x = hit_player_obj.x;
    //physics0g[hit_player_obj.player].y = hit_player_obj.y;
    
    hit_player_obj.myPhysics0g.timer = 120;
    hit_player_obj.myPhysics0g.vsp = -4;
    hit_player_obj.myPhysics0g.hsp = 0;
    hit_player_obj.myPhysics0g.x = hit_player_obj.x;
    hit_player_obj.myPhysics0g.y = hit_player_obj.y;
    }
    hit_player_obj.sidebhit = 0;
        with(hit_player_obj){
            in0g = true;
            timer0g = 120;
            gravity_speed = 0;
            hitstun_grav = 0;
            max_fall = 0; //maximum fall speed without fastfalling
            fast_fall = 0;
            //can_fast_fall = true;
            air_friction = 0;
            max_djumps = 0;
            air_max_speed = 0;
            air_accel = 0;
            tempknockback_adj = knockback_adj * .375;
            knockback_adj = tempknockback_adj;
            
            y = y - 2;
            free = true;
            vsp = -4;
            hsp = 0;
            set_state(PS_IDLE_AIR);
            if("can0g" in self){
                knockback_adj = .5;
                has_airdodge = false;
                vsp = -2;
            }
            //knockback_adj  = knockback_adj * .35;
            //can_jump = false;
            //has_airdodge = false;
            outline_color = [ 0, 0, 200 ];
            init_shader();
        }
        
        set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get( "0g" ));
        create_hitbox(AT_NSPECIAL, 2, hit_player_obj.x, hit_player_obj.y - 75);
        sound_play(sound_get( "0g" ));
        
    //}
}
else{
    canTrap = true;
    if(hit_player_obj.timer0g > 0){
        hit_player_obj.shortTimer = 1;
    }
}
if(hit_player_obj.last_attack == AT_FSPECIAL){
    hit_player_obj.sidebhit = 10;
    hit_player_obj.mytorndir = torndir;
    //hit_player_obj.hsp += -torndir * 10;
    //timersideb = 20;
    //ground_friction = .07;
}