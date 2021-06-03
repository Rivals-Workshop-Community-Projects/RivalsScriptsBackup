lock_state = false;

var destroy = false;
var homing = false;
switch (state)
{
    //NORMAL
    case 0:
        if split_baby and !homing
        {
            sprite_index = sprite_get("nspecial_proj_diagonal")
            image_index = sign(vsp) == -1;
            spr_dir = sign(hsp) != 0 ? sign(hsp) : 1;
         }
        
        var fdspecial_hit = checkCarry();
        
        if fdspecial_hit[0] != noone
        {
            switch fdspecial_hit[1]
            {
                case AT_FSPECIAL:
                    being_carried = true;
                    hsp = fdspecial_hit[0].hsp;
                    vsp = fdspecial_hit[0].vsp;
                 
                    sound_play(asset_get("sfx_ori_seinhit_medium"));
                    instance_destroy(fdspecial_hit[0]);
                    break;
                case AT_DSPECIAL:
                case AT_FSTRONG:
                    if can_manual_move_count == 0 and !split_baby
                    {
                        var i = -1;
                        with (player_id)
                        {
                            repeat (2)
                            {
                                var baby = instance_create(other.x,other.y,"obj_article1");
                                baby.hsp = (fdspecial_hit[1] == AT_DSPECIAL ? fdspecial_hit[0].x_scale : spr_dir)*5;
                                baby.vsp = i*6;
                                baby.split_baby = true;
                                i+=2
                            }
                        }
                        spawn_hit_fx(floor(x),floor(y),player_id.hit_sprites[1]);
                        destroy = true;
                    }
                break;
            }
        }
        
        
        var inst = find_instance();
        
        if inst != noone and can_manual_move_count == 0
        {
            xx = clamp(x, inst.bbox_left, inst.bbox_right);
            yy = clamp(y, inst.bbox_top, inst.bbox_bottom);
            diff = sqrt(sqr(xx-x) + sqr(yy-y))
            if diff <= homing_threshold
            {
                x = abs(xx-x) > 2 ? x + (max(10, abs(xx-x)/14)*sign(xx-x)) : xx;
                y = abs( (inst.y - inst.char_height/2) -y) > 2 ? y + ((inst.y - inst.char_height/2)-y)/14 : (inst.y - inst.char_height/2);
                homing = true;
                sprite_index = FLOAT_SPRITE;
            }
        }
    
        if player_id.nspecial_projectile != self and !split_baby
        {
            setMiniState(STATE_POP);
            break;
        }
        
        can_manual_move_count = max(can_manual_move_count-1,0);
        
        var p;
        p = point_distance(0,0,hsp,vsp);
        if get_gameplay_time() mod 6 == 0 and p >= 3
        {
            spawn_hit_fx(floor(x),floor(y),fx);
        }
        
        //var ground, plat;
        //ground = instance_place(x+hsp,y+vsp,asset_get("par_block"));
        //plat = instance_place(x+hsp,y+vsp,asset_get("par_jumpthrough"));
        if (!split_baby)
        {
            if !being_carried
            {
                if can_manual_move_count == 0
                {
                    var which = player_id.left_down ? -1 : player_id.right_down;
                    hsp = lerp(hsp, max_hsp*which, 0.03)
                }
                hsp = !homing*lerp(hsp, 0, .1);
            }
            
            var turn;
            turn = being_carried ? sign(hsp) : player_id.spr_dir;
            image_index = lerp(image_index,sprite_get_number(sprite_index)*( (-turn+1)/2),0.1)
        }
        else
        {
            var xp, yp;
            xp = place_meeting(x+hsp, y, asset_get("par_block"))
            yp = place_meeting(x, y + vsp, asset_get("par_block"))
            if xp and !yp
            {
                x-=sign(hsp)*4
                hsp *= -0.9
            }
            else if !xp and yp
            {
                y-=sign(vsp)*4
                vsp *= -0.9
            }
            // print("MEETING")
        }
        
        if instance_exists(hitbox)
        {
            hitbox.x = x+hsp;
            hitbox.y = y+vsp;
        }
        else
        {
            setMiniState(STATE_POP);
            hsp = 0;
            vsp = 0;
        }
    
    break;
    
    case 1:
        ignores_walls = true;
        hsp = 0;
        vsp = 0;
        //print(state_timer)
        var n = 4;
        sprite_index = ATTACK_SPRITE
        image_index += 0.4
        if state_timer mod n == 0 and !hitpause
        {
            if state_timer == 0 spr_dir = player_id.spr_dir
            var num;
            num = state_timer > (n*3) ? 3 : 2;
            create_hitbox(AT_NSPECIAL,num,x,y);
        }
        
        if state_timer >= (n*4)+1
        {
            setMiniState(2);
            image_index = 0;
            player_id.move_cooldown[AT_NSPECIAL] = 60;
        }
    break;
    
    //POPPED
    case 2:
    //print("lol")
    if instance_exists(hitbox) instance_destroy(hitbox)
    ignores_walls = true;
        if state_timer == 0
        {
            spr_dir = player_id.spr_dir
            sound_play(asset_get("mfx_star"))
            sprite_index = POP_SPRITE;
        }
        image_index += .2
        if image_index >= sprite_get_number(sprite_index) destroy = true;
    break;
    

}

state_timer += !lock_state;
if destroy
{
    if instance_exists(hitbox) instance_destroy(hitbox)
    instance_destroy();
}
//print("state timer = "+string(state_timer))

#define checkCarry()
with (pHitBox)
{
    if player_id == other.player_id and place_meeting(x,y,other)
    {
        return [self, attack];
    }
}
return [noone, -1];
#define find_instance()

//Yoyo Game forums, used Nocturne's workaround for notme in instance_nearest
if instance_exists(player_id)
{
    var _x = player_id.x;
    player_id.x -= 10000000;
    
    var _inst = instance_nearest(x, y, asset_get("oPlayer"));
    
    player_id.x = _x;
    
    if _inst != player_id && _inst != noone and _inst.state != PS_RESPAWN and _inst.state != PS_DEAD
    {
    // You found an instance!
        return _inst;
    }
}
return noone;

#define setMiniState
/// @param _state
/// setMiniState(_state)
var _state = argument0;

state = _state;
state_timer = 0;
lock_state = true;
//print("LOCKING")
