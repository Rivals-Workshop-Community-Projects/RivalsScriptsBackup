

if attack == AT_NSPECIAL
{

//Cherry
if attack == AT_NSPECIAL && hbox_num == 1
{
with player_id
move_cooldown[AT_NSPECIAL] = 20
enemies = 1;
walls = 2;
grounds = 2;
transcendent = true;

if free
{
vsp += .2
}
else
{
vsp = -4
}
sprite_index = sprite_get("Cherry");
can_be_hit = 0;

if can_be_hit <= 0
can_be_hit = 0

if can_be_hit = 0
{
var hitbox = instance_place(x, y, pHitBox);
    
if hitbox != noone {
var hitboxOwner = hitbox.player_id;

with hitboxOwner {
if !has_hit {
if hitbox.type == 1 {
 hitpause = true;
hitstop = 18;
hitstop_full = 10;
}
has_hit = true;
old_hsp = hsp;
old_vsp = vsp;
sound_play(get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_HIT_SFX));
spawn_hit_fx(other.x, other.y, get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_VISUAL_EFFECT));
}
}
length = 200
var hitbox = instance_place(x, y, pHitBox);
var temp_angle = get_hitbox_angle( hitbox );
var force = hitbox.kb_value + hitbox.kb_scale * .8;
hsp = lengthdir_x( force, temp_angle );
vsp = -lengthdir_y( force, temp_angle );
}
}
}





if attack == AT_NSPECIAL && hbox_num == 2{
sprite_index = sprite_get("Apple");  
with player_id
move_cooldown[AT_NSPECIAL] = 20
if free
{
vsp += .4
}
else
{
vsp = -5
}

{
var hitbox = instance_place(x, y, pHitBox);
    
if hitbox != noone {
var hitboxOwner = hitbox.player_id;

with hitboxOwner {
if !has_hit {
if hitbox.type == 1 {
 hitpause = true;
hitstop = 18;
hitstop_full = 10;
}
has_hit = true;
old_hsp = hsp;
old_vsp = vsp;
sound_play(get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_HIT_SFX));
spawn_hit_fx(other.x, other.y, get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_VISUAL_EFFECT));
}
}

length = 200
var hitbox = instance_place(x, y, pHitBox);
var temp_angle = get_hitbox_angle( hitbox );
var force = hitbox.kb_value + hitbox.kb_scale * .8;
hsp = lengthdir_x( force, temp_angle );
vsp = -lengthdir_y( force, temp_angle );
}
}



}



if attack == AT_NSPECIAL && hbox_num == 3{
        sprite_index = sprite_get("Banana");
with player_id
move_cooldown[AT_NSPECIAL] = 20
if free
{
vsp += .4
}
else
{
if banana_bounce = 0
destroyed = true
banana_bounce -= 1
start_dir *= -1

if start_dir = 1
{
hsp = 0
hsp -= 4
}

if start_dir = -1
{
hsp = 0
hsp += 4
}

vsp = -5
}
{
var hitbox = instance_place(x, y, pHitBox);
    
if hitbox != noone {
var hitboxOwner = hitbox.player_id;

with hitboxOwner {
if !has_hit {
if hitbox.type == 1 {
 hitpause = true;
hitstop = 18;
hitstop_full = 10;
}
has_hit = true;
old_hsp = hsp;
old_vsp = vsp;
sound_play(get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_HIT_SFX));
spawn_hit_fx(other.x, other.y, get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_VISUAL_EFFECT));
}
}

length = 200
var hitbox = instance_place(x, y, pHitBox);
var temp_angle = get_hitbox_angle( hitbox );
var force = hitbox.kb_value + hitbox.kb_scale * .8;
hsp = lengthdir_x( force, temp_angle );
vsp = -lengthdir_y( force, temp_angle );
}
}


}


//MiniPac
if attack == AT_NSPECIAL && hbox_num == 4{
	with player_id
move_cooldown[AT_NSPECIAL] = 20
        sprite_index = sprite_get("empty");
}



//MiniPac
if attack == AT_NSPECIAL && hbox_num == 7{

        sprite_index = sprite_get("empty");
x = fruit.x
y = fruit.y
if !instance_exists(player_id.fruit)
{
with player_id
move_cooldown[AT_NSPECIAL] = 1

destroyed = true;
}
}






//Bell
if attack == AT_NSPECIAL && hbox_num == 5{
        sprite_index = sprite_get("Bell"); 
with player_id
move_cooldown[AT_NSPECIAL] = 20
enemies = 1;
walls = 1;
grounds = 1;
transcendent = true;
Bell_Timer -= 1


if Bell_Timer <= 0
Bell_State = 1


{
var hitbox = instance_place(x, y, pHitBox);
    
if hitbox != noone {
var hitboxOwner = hitbox.player_id;

with hitboxOwner {
if !has_hit {
if hitbox.type == 1 {
 hitpause = true;
hitstop = 18;
hitstop_full = 10;
}
has_hit = true;
old_hsp = hsp;
old_vsp = vsp;
sound_play(get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_HIT_SFX));
spawn_hit_fx(other.x, other.y, get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_VISUAL_EFFECT));
}
}

length = 200
var hitbox = instance_place(x, y, pHitBox);
var temp_angle = get_hitbox_angle( hitbox );
var force = hitbox.kb_value + hitbox.kb_scale * .6;
hsp = lengthdir_x( force, temp_angle );
vsp = -lengthdir_y( force, temp_angle );
}
}


    }


if attack == AT_NSPECIAL && hbox_num == 6{
        
        sprite_index = sprite_get("Sweet");
        
	with player_id
move_cooldown[AT_NSPECIAL] = 20
var hitbox = instance_place(x, y, pHitBox);
    
if hitbox != noone {
var hitboxOwner = hitbox.player_id;

with hitboxOwner {
if !has_hit {
if hitbox.type == 1 {
 hitpause = true;
hitstop = 18;
hitstop_full = 10;
}
has_hit = true;
old_hsp = hsp;
old_vsp = vsp;
sound_play(get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_HIT_SFX));
spawn_hit_fx(other.x, other.y, get_hitbox_value(hitbox.attack, hitbox.hbox_num, HG_VISUAL_EFFECT));
}
}

length = 200
var hitbox = instance_place(x, y, pHitBox);
var temp_angle = get_hitbox_angle( hitbox );
var force = hitbox.kb_value + hitbox.kb_scale * 2;
hsp = lengthdir_x( force, temp_angle );
vsp = -lengthdir_y( force, temp_angle );
}
}












}

//Hydrant
if (attack == AT_DSPECIAL) && (hbox_num == 2) {

if !free
hydrant = instance_create(x, y, "obj_article_solid")

}








if attack == AT_NSPECIAL_2 && hbox_num == 1
{
//sprite_index = sprite_get("FireHydrantFly");
image_angle += 10

if free {
    //vsp += 0.3;
} else {
    vsp = -5;
}
}

if (attack == AT_NSPECIAL_2 && hbox_num == 1)
{
//sprite_index = sprite_get("FireHydrant");
with player_id
move_cooldown[AT_DSPECIAL] = 50
}











if (y > view_get_yview() + view_get_hview()) {
destroyed = true;
}