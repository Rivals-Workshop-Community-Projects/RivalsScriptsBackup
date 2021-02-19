//article1_init - runs once, when the article is created

//Sprite and direction
sprite_index = player_id.spr_guitar_idle;           //The sprite that the article will (initially) use. Replace text in quotes with your sprite's name
image_index = 0;                                    //The frame in the animation the article should start at. 0 = beginning of animation
mask_index = player_id.spr_guitar_hurtbox;
spr_dir = player_id.spr_dir;                        //The direction the article should face when it spawns. Here I have it set to face the same way as the character
uses_shader = true;                                 //Whether or not the article is recolored according to the character's color.gml and costume.

//State
state = 0;                                          //The behavior state the article should start in.
prev_state = 0;
state_timer = 0;                                    //The point in time during that state the article should start in. (0 = beginning)
hitstop = 0;                                        //The frames remaining in hitpause. Hitpause automatically prevents movement
hsp = player_id.hsp;                                //The horizontal speed of the article. Multiply by spr_dir to correctly handle forward (+) or backward (-) movement
vsp = player_id.vsp;                                //The vertical speed of the article.

for (i = 0; i < 5; i++){ //set up arrays for previous positions
    prev_x[i] = x;
    prev_y[i] = y;
}

hsp_prev = hsp;
vsp_prev = vsp;

base_x = x;
base_y = y;

//Terrain behavior
can_be_grounded = true;                             //Determines if the article follows platforms when free == false.
ignores_walls = false;                              //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.
hit_wall = false;                                   //If the article moves into a wall on its own, this variable will be true.

//State buffering (for if the article is busy when you send it a state command)
buffered_state = 0;                                  //The state fed to the article by the player. Set this in your character's code, and the article will set itself to the requested state as long as it's available within 20 frames of the input
buffer_timer = 0;                                    //The current amount of frames remaining in the buffer window. When this reaches zero, the article will throw away the buffered state request.

//Cure depression
shoulddie = false;                                  //If this is set to true, the article will change to state 2 (despawn animation) as soon as it's not busy. This keeps it from despawning in the middle of something



//Guitar-specific
player_x_offset = -40;
player_y_offset = -50;
orig_depth = depth;
change_timer = 0;
following = true;

//Chords
chord = 0;
prev_chord = 0;

   jump_chord = false;
  speed_chord = false;
 shield_chord = false;
 buster_chord = false;
  smash_chord = false;
  float_chord = false;
  slide_chord = false;
  dodge_chord = false;
   stun_chord = false;
reverse_chord = false;

//Chord states
can_transfer = true;
chord_state = 0;
chord_state_timer = 0;
chord_change_timer = 0; //causes stuff to flash white
chord_change_max = 3;

//Chord duration
chord_juice = 0;
chord_juice_max = 8 * 60;
chord_juice_flash = false;

//Chord cooldown
var cd = -30;
chord_cooldown = [cd, cd, cd, cd, cd, cd];
chord_cooldown_max = 16 * 60;

//FSpecial
charged = false;
hitbox = noone;

//Got hit cooldown
got_hit_cooldown = 0;
got_hit_cooldown_max = 30;

//Sprites
sprite[0] = player_id.spr_guitar_idle;
sprite[1] = player_id.spr_guitar_upright;
sprite[2] = player_id.spr_guitar_idle;
sprite[3] = player_id.spr_guitar_hitbox;
sprite[4] = player_id.spr_guitar_idle;
sprite[5] = player_id.spr_guitar_idle;
sprite[6] = player_id.spr_guitar_idle;
sprite[7] = player_id.spr_guitar_idle;
sprite[8] = player_id.spr_guitar_idle;
sprite[9] = player_id.spr_guitar_idle;

sprite[10] = player_id.spr_guitar_idle;
sprite[11] = player_id.spr_guitar_hitbox;
sprite[12] = player_id.spr_guitar_hitbox_charged;
sprite[13] = player_id.spr_guitar_idle;
sprite[14] = player_id.spr_guitar_upright;
sprite[15] = player_id.spr_guitar_idle;
sprite[16] = player_id.spr_guitar_hitbox_charged;
sprite[17] = player_id.spr_guitar_hitbox;
sprite[18] = player_id.spr_guitar_idle;
sprite[19] = player_id.spr_guitar_idle;



anim_type[0] = 0;
anim_type[1] = 0;
anim_type[2] = 0;
anim_type[3] = 0;
anim_type[4] = 0;
anim_type[5] = 0;
anim_type[6] = 0;
anim_type[7] = 0;
anim_type[8] = 0;
anim_type[9] = 0;

anim_type[10] = 0;
anim_type[11] = 1;
anim_type[12] = 1;
anim_type[13] = 0;
anim_type[14] = 0;
anim_type[15] = 0;
anim_type[16] = 1;
anim_type[17] = 1;
anim_type[18] = 0;
anim_type[19] = 0;