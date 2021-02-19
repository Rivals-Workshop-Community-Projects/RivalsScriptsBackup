var die_time = 600
var ground_friction = 0.2;
var grav = 0.8;

if (player_id.runeB)
    ground_friction = 0.08;
    
//Attach the hitbox to this object. 
if (moving && !can_hit && !instance_exists(myhitbox)) {
     with (player_id)
        other.myhitbox = create_hitbox(AT_FSPECIAL, 1, other.x, other.y);
     can_hit = true;
}

if (free)
{
    if (!knockedback)
        vsp += grav;
    moving = true;
}
else
{
    if (abs(hsp) < ground_friction)
    {
        if (can_hit) {
            hsp = 0;
            moving = false;
            can_hit = false;
            knockedback = false;
        }
    }
    else
    {
        if (!knockedback)
            hsp -= ground_friction * sign(hsp);
        if (abs(hsp) <= 1)
            moving = false;
        else
            moving = true;
    }
}

if (state == 0) { //initializing
    state_timer ++;
    knockedback = false;
    if (!free) {
        state = 1;
        state_timer = 0;
    }
}


if (state == 1) { //Sitting there
    state_timer ++;
    knockedback = false;
    if (state_timer > die_time)
    {
        destroyed = 2;
    }
}

if (instance_exists(myhitbox))
{
    with (myhitbox) {
        if (player_id == other.player_id) {
            if (attack == AT_FSPECIAL && hbox_num == 1) {
                x_pos = (other.x - other.player_id.x);
                y_pos =  ((other.y-24) - other.player_id.y);
                hsp = other.hsp;
                vsp = other.vsp;
            }
        }
        if (other.destroyed || !other.moving) {
            instance_destroy(id)
            continue;
        }
    }
}

if (y > room_height + 100) {
    destroyed = 2;
}

if (destroyed == 0) 
{
    if (floor(image_index) >= 3)
        image_index = 3;
    else
        image_index += 0.25;
}
else if (destroyed == 1){
    with (player_id) 
    {
        spawn_hit_fx(other.x, other.y, fspecial_projeffect)
        var destroyed_hb = create_hitbox(AT_FSPECIAL, 2, other.x, other.y - 32);
        destroyed_hb.player = other.player_hit;
        var i, expl;
        for (i = 0; i < 8; i++) {
            expl = create_hitbox(AT_FSPECIAL, 3, other.x, other.y - 32);
            expl.hsp = lengthdir_x(12, 45 * i);
            expl.vsp = lengthdir_y(12, 45 * i);
        } 
    }
    if (instance_exists(myhitbox)) instance_destroy(myhitbox)
    instance_destroy();
    exit;
}
else {
    with (player_id) spawn_hit_fx(other.x, other.y, fspecial_projeffect)
    if (instance_exists(myhitbox)) instance_destroy(myhitbox)
    instance_destroy();
    exit;
}