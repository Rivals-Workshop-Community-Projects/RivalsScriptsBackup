//An enemy's hurtbox

can_be_grounded = false;
ignores_walls = true;

image_speed = 0;
visible = false;

parent = noone;
pos_parent = noone;
hurtbox_group = 0;
current_hbox = noone;

activate_kill_effect = false;
player_count_resistance = 1;
hit_cooldown = 0;

//Character compatibility
wet = false; //For Wizard