//article1_init - runs once, when the article is created

//Sprite and direction
sprite_index = sprite_get("empty");           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.
mask_index = sprite_get("monkey_ball_mask");


//State
state = 0;                                          //The behavior state the article should start in.
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = 0;                                            //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = 0;                                            //The vertical speed of the article.

//Terrain behavior
can_be_grounded = true;                            //Determines if the article follows platforms when free == false.
ignores_walls = false;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//State buffering (for if the article is busy when you send it a state command)
bufferedstate = 0;                                  //The state fed to the article by the player. Set this in your character's code, and the article will set itself to the requested state as long as it's available within 20 frames of the input
buffertimer = 0;                                    //The current amount of frames remaining in the buffer window. When this reaches zero, the article will throw away the buffered state request.

//Animation speeds and timers
idle_anim_rate = 1;                                 //Example animation speed value 1. The animation in question will increment every 8 frames in this case
die_anim_rate = 4;                                  //Example animation speed value 2.
die_time = 20;                                      //Example variable used in this case to determine how long the article should take to die (state 2). 
animation_type = 1;                                 //This variable is part of the animation handling found in article1_update. It determines when, or how frequently, the image_index should increment
new_sprite = sprite_get("empty");             //This is another part of the animation handling. It tells the game "this is the sprite this article should be using; if it's not already, switch it over please"

//Limit on number of articles
replacedcount = 0;                                  //This gets incremented whenever a new article is created. If this reaches maxarticles, the article is destroyed
maxarticles = 1;                                    //The maximum number of this article that should exist at once.

with(asset_get("obj_article1")){
    if (player_id == other.player_id){
        replacedcount++;                            //If there are any other article1s owned by the same person, tell them to increment their replacedcount by 1
    }
}

//Cure depression
shoulddie = false;                                  //If this is set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something

//blastzones
blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

//other
timer = 0;

in_hitpause = false;

current_ball_spr = sprite_get("monkey_ball")
current_ball_spr_2 = sprite_get("monkey_ball_front")

hud_color = get_player_hud_color(player_id.player);

ground_friction = .15;
air_friction = .1;

stored_vertical_spd = 0;

anim_rate_cur = 5;
cur_rot = 0;

grounded_timer = 0;

spin_fast = 0;

rot_speed = 0;

nspec_img_indx = 0;

monkeyBall_need_to_switch_to_state0 = false;

offset_indic = 48;
offset_indic_free = 0;

current_owner = player;

transparency = 1;

rot_from_nspec = 0;

gravity_on = true;

should_rotate = true;
should_bounce = true;

touching_wall = false;
touching_wall_cooldown = 0;

stored_hsp = 0;

should_explode = false;

infinite_lifetime_rune = false;

//HITBOX STUFF aaaa
can_get_hit = true;
hitbox_hit = noone;
hit_lockout = 0;
hit_by = noone;

monkey_ball_hit_cooldown = 0;
monkey_ball_draw_dark_spr = false;

monkey_ball_can_be_hit_again_timer = 0;

hey_did_i_get_parried = false;

//2
is_hitbox_active = false;
cur_hitbox = noone;

should_spawn_hitbox = false;
should_destroy_hitbox = false;

hitbox_angle = 0;
hitbox_owner = noone;
hitbox_bkb = 0;
hitbox_kbs = 0;
hitbox_damage = 0;
hitbox_sfx = 0;

hitbox_var = true;

lifetime = 0;