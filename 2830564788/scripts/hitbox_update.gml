//hitbox_update

if (attack == AT_FSPECIAL && hbox_num == 1) //set the attack and hitbox number to work with
{
    var _spd = 0.5; //set the speed of the slowdown of the boomerang + the speed it goes towards the player
    
    if (hitbox_timer < 20) hsp -= _spd*spr_dir; //slow down projectile over time (can also just be done with friction)
    else
    {
        var angle = point_direction(x, y, player_id.x, player_id.y-player_id.char_height/2); //set the angle it goes to
        hsp = hsp + lengthdir_x(_spd, angle);
        vsp = vsp + lengthdir_y(_spd, angle);

        hitbox_timer = 20; //lock hitbox timer out so it won't die on us
        //the number you put here is whatever you see fit, feel free to play with it

        if (place_meeting(x, y, player_id)) { //when colliding with the player, set the hitbox_timer to the length to destroy the hitbox
            hitbox_timer = length;
        }
    }
}

if (attack == AT_DSPECIAL && hbox_num == 1) //set the attack and hitbox number to work with
{
    hsp *= 0.975;
    vsp *= 0.975;
    
    if (state_timer == 30 || free == false) {
        sound_play(asset_get("sfx_ell_fist_explode"));
        spawn_hit_fx(x+36*spr_dir, y+36, 115);
        create_hitbox(AT_DSPECIAL, 2, x, y);
        instance_destroy();
        exit;
    }
    state_timer++;
}