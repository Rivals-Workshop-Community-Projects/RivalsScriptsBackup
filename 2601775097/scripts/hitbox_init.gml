//hitbox_init.gml

//PROJECTILE HITBOXES
//credit to supersonic for the huge help!

//needs to have var so player_id can see it for the "other"
var hitbox_shape1 = -1;
var hitbox_shape2 = -1;
var hitbox_shape3 = -1;
with (player_id) //define which HG_HITBOX_COLOR is which, and apply it using the shape (weird flex but ok)
{
    if (get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR) == 1) hitbox_shape1 = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE);
    else if (get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR) == 2) hitbox_shape2 = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE);
    else if (get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR) == 3) hitbox_shape3 = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE);
}
//after defining with HG_HITBOX_COLOR the matching number, define the actual mask_index replacements
switch (hitbox_shape1) //sweetspots
{
    case 0:
        mask_index = player_id.hb_sweet_0;
        break;
    case 1:
        mask_index = player_id.hb_sweet_1;
        break;
    case 2:
        mask_index = player_id.hb_sweet_2;
        break;
}
switch (hitbox_shape2) //holy burning
{
    case 0:
        mask_index = player_id.hb_burn_0;
        break;
    case 1:
        mask_index = player_id.hb_burn_1;
        break;
    case 2:
        mask_index = player_id.hb_burn_2;
        break;
}
switch (hitbox_shape3) //lightstun
{
    case 0:
        mask_index = player_id.hb_light_0;
        break;
    case 1:
        mask_index = player_id.hb_light_1;
        break;
    case 2:
        mask_index = player_id.hb_light_2;
        break;
}

//theikos D-strong
groundfire_offset = 40;
dstrong2_active = false;
firespread_article = obj_article2;

//rune G detections
proj_x = x;
proj_y = y;

//parrying a light spark attack should make the stunner stun bar
if (player_id.lightstun_parried && attack == 48 && hbox_num == 1)
{
    can_hit_self = true; //lmfao it actually also hits others
}