//Functionality
state_timer = state_timer + 1;

//Character Trapped In Bubble

if garnet_bubble_trapped_obj.garnet_bubbled == true{

x = garnet_bubble_trapped_obj.x;
y = garnet_bubble_trapped_obj.y;

image_index = state_timer*0.125;

with garnet_bubble_trapped_obj{
    set_state( PS_HITSTUN );
    invincible = false;
    visible = true;
    hitstun_grav = 0;
    
    hsp = hsp * 0.95;
    vsp = vsp * 0.95;
    
    garnet_bubble_knockback = sqrt(sqr(old_hsp)+sqr(old_vsp));
}

}

//What makes bubble destroy?

if ((player_id.attack == AT_TAUNT && player_id.state == PS_ATTACK_GROUND)
|| garnet_bubble_trapped_obj.free == false
|| garnet_bubble_trapped_obj.garnet_bubble_knockback >= 15
|| garnet_bubble_trapped_obj.activated_kill_effect
|| state_timer >= 120)
&& garnet_bubble_destroy == false{
    garnet_bubble_destroy = true;
    state_timer = 0;
}

//Bubble Destroy

if garnet_bubble_destroy == true{
    image_index = state_timer*0.25;
    garnet_bubble_trapped_obj.garnet_bubbled = false;
    garnet_bubble_trapped_obj.hitstun_grav = garnet_bubble_stored_gravity;
    
    sprite_index = sprite_get("bubble_pop");
    if state_timer == 28{
        garnet_bubble_trapped_obj = noone;
        instance_destroy();
    }
}