//article2_init
life_timer = 0;
// box_sprite = ("ammo_s_fall");
hurtbox_spr = sprite_get("ammo_s_idle");
sprite_index = sprite_get("ammo_s_fall");
image_index = 0;
image_xscale = 2;
image_yscale = 2;

sprite[0] = sprite_get("ammo_s_fall"); //small ammo pack falling
sprite[1] = sprite_get("ammo_s_land"); //small ammo pack when it lands on the ground
sprite[2] = sprite_get("ammo_s_idle"); //small ammo pack idle
sprite[3] = sprite_get("ammo_s_anim"); //small ammo pack bounce animation

sprite[4] = sprite_get("ammo_m_fall"); //medium ammo pack falling
sprite[5] = sprite_get("ammo_m_land"); //medium ammo pack when it lands on the ground
sprite[6] = sprite_get("ammo_m_idle"); //medium ammo pack idle
sprite[7] = sprite_get("ammo_m_anim"); //medium ammo pack bounce animation

sprite[8] = sprite_get("ammo_l_fall"); //large ammo pack falling
sprite[9] = sprite_get("ammo_l_land"); //large ammo pack when it lands on the ground
sprite[10] = sprite_get("ammo_l_idle"); //large ammo pack idle
sprite[11] = sprite_get("ammo_l_anim"); //large ammo pack bounce animation

sprite[12] = sprite_get("ammo_scrap");//scrap without the s

sprite[13] = sprite_get("bread");//bread dead redemption 2

ammo_type = 0;//0 = small, 1 = medium, 2 = large, 3 = scap, 4 = bread

ammostate = 0; //0=falling, 1=landing, 2=idle, 3=anim
anim_timer = 0;//when this reaches (number), it will play the idle animation
despawn_timer = 0;//will increase with every time that the ammo is tried to pick up/plays its animation, when it happens too many times, it despawns.
despawn = false;//will despawn the box

life_timer = 0;
frame_num = 4;//this tells how many frames the animation uses
frames_4s = [4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44] //ammo will only ever have one frame rate

ammo_direction = 1;//1 = right, -1 = left
ammo_amount = 25;//25 small, 100 medium, 200 large

can_be_grounded = true;
ignores_walls = false;
uses_shader = false;
type = 0;
