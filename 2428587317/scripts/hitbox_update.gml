//hitbox_update
if(attack == AT_DSTRONG){ 
    if(free)y = -200;
}
/*if(attack == AT_DSPECIAL && has_hit_player){
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
        knockback_adj = knockback_adj * .6;
        y = y - 2;
        free = true;
        vsp = -4;
        hsp = 0;
        //can_jump = false;
        has_airdodge = false;
        outline_color = [ 0, 0, 200 ];
        init_shader();
    }
        
    set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get( "0g" ));
    create_hitbox(AT_NSPECIAL, 2, hit_player_obj.x, hit_player_obj.y - hit_player_obj.char_height - 5);
    sound_play(sound_get( "0g" ));
}*/
if(attack == AT_FSPECIAL){
    if(instance_place(x,y,player_id.banan)){
        player_id.banan.hsp = -(player_id.torndir * 12);
    }
}