//The weapoons Tomoko conjures get created using an article that follows her. The hitboxes that spawn here are PHYSICAL!

//Default Variables
uses_shader = true;
destroyed = false;

//Following
follow_speed = 4; //How fast it should follow
air_friction = 0.2; //Stop friction once it reaches its destination.
max_follow_dist = 2; //How far the follower should follow the player while moving. 
follower_offset_x = 0;
follower_offset_y = 0;
follow_player = true;
destroy_on_hit = true;
ignores_walls = true;
can_be_grounded = false;

//Attacks
attack = -1;
window = 0;
window_timer = 0;
attack_grounded = false;
hitpause = 0;
old_hsp = 0; //Used for hitpause
old_vsp = 0; //Used for hitpause
strong_charge = 0;
strong_charging = false;
has_hit_player = false;
window_end = 0;

//Drawing
force_depth = 1;
image_xscale = 2;
image_yscale = 2;