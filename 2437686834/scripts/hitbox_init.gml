//hitbox_init
if attack == AT_NSPECIAL
{

fruit = player_id.fruit
depth = player_id.depth - 1;
can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
owner = id;
//free = true;
fruit = player_id.fruit
sprite_index = sprite_get("Cherry");
mask_index = sprite_get("Cherry");
start_dir = player_id.spr_dir;
behavior = fruit.behavior;

has_hit = false;

//with player_id
//move_cooldown[AT_NSPECIAL] = 1000

owner = player_id;
hit_cool = 10;
main_hit_cool = 0;
banana_bounce = 6;
PAC_Bites = 6;
Bell_State = 0;
Bell_Timer = 30;
can_be_hit = 10;
life = 100;
hit_by = -1;


{
    if (behavior == 0){
        sprite_index = sprite_get("Cherry");
        hsp = 3*start_dir
        sound_play(sound_get("smallswing2"));
    }
    if (behavior == 1){
        sprite_index = sprite_get("Apple");
        hsp = 4*start_dir
        sound_play(sound_get("smallswing2"));
        
    }
    if (behavior == 2){
        sprite_index = sprite_get("Banana");
        hsp = 4*start_dir
        sound_play(sound_get("smallswing2"));
    }
    if (behavior == 3){
        sprite_index = sprite_get("MiniPAC");  
        hsp = 4*start_dir
        sound_play(sound_get("minipacbite"));
    }
    if (behavior == 4){
        sound_play( sound_get( "blip" ) )
        sprite_index = sprite_get("Bell"); 
        hsp = 4*start_dir
vsp = -6
        sound_play(sound_get("smallswing2"));
        
        //hit_list = ds_list_create();
    }
    if (player_id.current_fruit == 5){
        sprite_index = sprite_get("Sweet");  
        hsp = 12*start_dir
        sound_play(sound_get("smallswing2"));
    }
    if (player_id.current_fruit == 6){
        sprite_index = sprite_get("Pooka");
        sound_play(sound_get("smallswing2"));
    }
    if (player_id.current_fruit == 7){
        sprite_index = sprite_get("Coffee");  
        sound_play(sound_get("smallswing2"));
    }
    if (player_id.current_fruit == 8){
        sprite_index = sprite_get("PowerPellet");  
        sound_play(sound_get("smallswing2"));
    }
}
}



hydrant = -1
if (attack == AT_DSPECIAL) && (hbox_num == 2)
sound_play(sound_get("hydrantpull"))

