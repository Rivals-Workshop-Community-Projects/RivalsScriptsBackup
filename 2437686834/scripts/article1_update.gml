//with player_id
//move_cooldown[AT_NSPECIAL] = 10
with player_id
move_cooldown[AT_NSPECIAL] = 20
with (asset_get( "plasma_field_obj" )) {
with (other.id) {
if (point_distance(
x + 10 * spr_dir,
y,
get_instance_x( other ),
get_instance_y( other )) < 180) {
instance_destroy();
}
}
}


life -= 1;
if life = 0
{
//move_cooldown[AT_NSPECIAL] = 0
instance_destroy(self);
}
var closeplayer = instance_place(x, y, asset_get("oPlayer"));
var closehitbox = instance_place(x, y, asset_get("pHurtBox"));
var ownerbox = instance_place(x, y, owner);
var get_id = instance_place(x, y, asset_get("oPlayer"));
//ds_list_add(hit_list, get_id);
spr_dir = start_dir
if start_dir = -1
image_xscale = 1
main_hit_cool -= 1;
if main_hit_cool <= 0
main_hit_cool = 0;
if has_hit_enemy = false
{

    
    
    
    
    
    
    
    






    
    
    
    
    
    
    
    if (behavior == 3){
        sprite_index = sprite_get("MiniPAC"); 
        image_speed = .6
        hsp = 4*start_dir
if free
{
vsp += .4
}
else
{
vsp = 0
}

{
//if place_meeting(x,y,closeplayer)
{
//if get_id != player_id and hit_cool = 10 and (get_id.state != PS_ROLL_BACKWARD or get_id.state != PS_ROLL_FORWARD or get_id.state != PS_AIR_DODGE)
{
if !instance_exists(proj_hitbox)// and main_hit_cool <= 0
proj_hitbox = create_hitbox(AT_NSPECIAL, 4, x, y);
hit_cool = 9
if PAC_Bites = 0
instance_destroy(self)
}
}

}
if hit_cool != 10
{
hit_cool -= 1
if hit_cool = 0
hit_cool = 10
}
}

    
    
    
    
    
    
    

    
    
    
    
    






    if (behavior == 6){

        if Explode_Timer > 50
        sprite_index = sprite_get("Pooka"); 
Explode_Timer -= 0.5
if instance_place(x, y, asset_get("pHitBox")) and Explode_Timer > 20
{
hitby = instance_place(x, y, asset_get("pHitBox"))
//Explode_Timer = 20

}
if Explode_Timer = 50
{
sound_play( sound_get( "pooka1" ) )
sprite_index = sprite_get("Pookslopde");
image_speed = 0
}

if Explode_Timer = 40
{
sound_play( sound_get( "pooka2" ) )
sprite_index = sprite_get("Pookslopde");
image_index = 1
}

if Explode_Timer = 30
{
sound_play( sound_get( "pooka2" ) )
sprite_index = sprite_get("Pookslopde");
image_index = 2
}

if Explode_Timer = 20
{
sound_play( sound_get( "pookapop" ) )
sprite_index = sprite_get("Pookslopde");
image_index = 3
//if get_id != player_id and (get_id.state != PS_ROLL_BACKWARD or get_id.state != PS_ROLL_FORWARD or get_id.state != PS_AIR_DODGE)
{

proj_hitbox = create_hitbox(AT_FSTRONG_2, 2, x, y);
}
}

if Explode_Timer = 0
{
instance_destroy(self)
}


    }
    if (behavior == 7){
        sprite_index = sprite_get("Coffee");
Bell_Timer -= 1

if Bell_Timer = 0
Bell_State = 1

if Bell_State = 0
{
hsp = 4*start_dir
//vsp = -6
}
else
{
if !free
instance_destroy(self)
hsp = 0
vsp = -6
}
//if place_meeting(x,y,closeplayer)
{
//if get_id != player_id and hit_cool = 10 and (get_id.state != PS_ROLL_BACKWARD or get_id.state != PS_ROLL_FORWARD or get_id.state != PS_AIR_DODGE)
{
if !instance_exists(proj_hitbox) and main_hit_cool <= 0
proj_hitbox = create_hitbox(AT_FTILT, 9, x, y);
hit_cool = 9
}
}

if hit_cool != 10
{
hit_cool -= 0.5
if hit_cool = 0
hit_cool = 10
}



        
    }
    if (behavior == 8){
        sprite_index = sprite_get("PowerPellet");  
        Explode_Timer -= 0.1
        if Explode_Timer = 0
        instance_destroy(self)
{
//if place_meeting(x,y,closeplayer)
{
//if get_id != player_id and hit_cool = 10 and (get_id.state != PS_ROLL_BACKWARD or get_id.state != PS_ROLL_FORWARD or get_id.state != PS_AIR_DODGE)
{
if !instance_exists(proj_hitbox)
proj_hitbox = create_hitbox(AT_JAB, 8, x, y);
hit_cool = 9
}
}

}
if hit_cool != 10
{
hit_cool -= 0.5
if hit_cool = 0
hit_cool = 10
}



    }
if get_id != player_id and (get_id.state != PS_ROLL_BACKWARD or get_id.state != PS_ROLL_FORWARD or get_id.state != PS_AIR_DODGE)
{
//has_hit_enemy = true
//if instance_exists(proj_hitbox)
//instance_destroy(proj_hitbox)
}
}
// destroys the article when it’s within Clairen’s plasma field:




if (y > view_get_yview() + view_get_hview()) {
instance_destroy();
}