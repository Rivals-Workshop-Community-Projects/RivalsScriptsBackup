depth = player_id.depth - 1;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
owner = id;
//free = true;

sprite_index = sprite_get("Cherry");
mask_index = sprite_get("Cherry");
start_dir = player_id.spr_dir;
behavior = player_id.current_fruit;

has_hit = false;








owner = player_id;
hit_cool = 10;
main_hit_cool = 0;
banana_bounce = 6;
PAC_Bites = 6;
Bell_State = 0;
Bell_Timer = 30;
Explode_Timer = 60;
has_hit_enemy = false;

life = 100;
is_wack = false
proj_hitbox = noone
has_hit_enemy = false

{
    if (behavior == 0){
        sprite_index = sprite_get("Cherry");
        hsp = 3*start_dir
        proj_hitbox = create_hitbox( AT_NSPECIAL, 1, x, y)
//sound_play(sound_get("smallswing2"));
instance_destroy(self);
    }
    if (behavior == 1){
        sprite_index = sprite_get("Apple");
        proj_hitbox = create_hitbox(AT_NSPECIAL, 2, x, y);
        hsp = 4*start_dir
        //sound_play(sound_get("smallswing2"));
        instance_destroy(self);
    }
    if (behavior == 2){
        sprite_index = sprite_get("Banana");  
        proj_hitbox = create_hitbox(AT_NSPECIAL, 3, x, y);
        //sound_play(sound_get("smallswing2"));
        instance_destroy(self);
        with player_id
move_cooldown[AT_NSPECIAL] = 200
    }
    if (behavior == 3){
        sprite_index = sprite_get("MiniPAC");  
        hsp = 4*start_dir
        with player_id
move_cooldown[AT_NSPECIAL] = 300
    }
    if (behavior == 4){
        sound_play( sound_get( "blip" ) )
        sprite_index = sprite_get("Bell"); 
        proj_hitbox = create_hitbox(AT_NSPECIAL, 5, x, y);
        instance_destroy(self);
        //sound_play(sound_get("smallswing2"));
        //hit_list = ds_list_create();
    }
    if (behavior == 5){
        sprite_index = sprite_get("Sweet");  
        hsp = 12*start_dir
        proj_hitbox = create_hitbox(AT_NSPECIAL, 6, x, y);
        instance_destroy(self);
    }
    if (behavior == 6){
        sprite_index = sprite_get("Pooka");  
    }
    if (behavior == 7){
        sprite_index = sprite_get("Coffee");  
        proj_hitbox = create_hitbox(AT_NSPECIAL, 7, x, y);
        //life = 20
    }
    if (behavior == 8){
        sprite_index = sprite_get("PowerPellet");  
        with player_id
move_cooldown[AT_NSPECIAL] = 600
    }
}



