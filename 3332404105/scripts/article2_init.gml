//article no. 2's init
mask_index = sprite_get("k_hurtbox");
lifetime = 600;
can_be_grounded = true;
ignores_walls = false;
state = 0;
if (floor(x / 2) == ceil(x / 2)){
    spr_dir = 1;
} else{
    spr_dir = -1;
}
state_timer = 0;
should_be_destroyed = 0;

random_thing = random_func(12, 12, true);
free_vsp = vsp;
hitbox_cooldown = 0;

guy_hitbox = noone;

hitted_box = noone;
hitted_cooldown = 0;

kingdom = player_id.summon_guy_kingdom;
players_kingdom = 0;

generic_timer = 0;

last_hitter_group = 0;
last_hitter_attack = 0;
last_hitter_player = 0;

switch (kingdom){
    case 1:
    //weasels
        image_speed = 0.75;
        
        guy_grav = 0.7;
        guy_fallspd = 18;
        guy_air_fric = 0.15;
        guy_grn_fric = 0.1;
        
        idle_sprite = player_id.spr_weasel_idle;
        hurt_sprite = player_id.spr_weasel_hurt;
        
        iconic_sound = player_id.sfx_all_weasel;
    break
    case 2:
    //clown
        image_speed = 0;
        
        guy_grav = 0.4;
        guy_fallspd = 8;
        guy_air_fric = 0.05;
        guy_grn_fric = 0.1;
        
        idle_sprite = player_id.spr_clown_idle;
        hurt_sprite = player_id.spr_clown_hurt;
        
        iconic_sound = player_id.sfx_all_clown;
    break
    case 3:
    //elf
        image_speed = 0.2;
        
        guy_grav = 0.5;
        guy_fallspd = 7;
        guy_air_fric = 0.1;
        guy_grn_fric = 0.2;
        
        idle_sprite = player_id.spr_elf_idle;
        hurt_sprite = player_id.spr_elf_hurt;
        
        iconic_sound = player_id.sfx_all_elf;
    break
    case 4:
    //clown
        image_speed = 0.5;
        
        guy_grav = 0.8;
        guy_fallspd = 14;
        guy_air_fric = 0.4;
        guy_grn_fric = 0.1;
        
        idle_sprite = player_id.spr_hog_idle;
        hurt_sprite = player_id.spr_hog_hurt;
        
        iconic_sound = player_id.sfx_all_hog;
    break
}
        
sprite_index = idle_sprite;

sound_play(iconic_sound);
with (player_id){
    spawn_hit_fx(other.x, other.y, vfx_poof);
}