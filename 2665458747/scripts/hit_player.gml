inst = hit_player_obj;


//bounce
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.hbox_num == 1) && bounce_fall >= 2
{
    bounce_hit = true;
}

//knockofe
if (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num <= 2)
{
    if knockoffvisualcooldown = 0
    {
        //sound_play(sound_get("sm-quickmovement"));
    
        var item = instance_create(hit_player_obj.x, hit_player_obj.y-32, "obj_article1");
        item.object_type = 1;
        item.vsp = -9;
        item.hsp = 4*spr_dir;
        item.sub_rotation = random_func( 2, 5, false );
        item.sprite_index = sprite_get("knockedoff");
        item.grav_speed = 0.45;
        item.sub_dir = spr_dir;
    }
    
    knockoffvisualcooldown = 150;
}

//pseudograb
if (my_hitboxID.attack == AT_USTRONG)
{
    if my_hitboxID.hbox_num <= 2.1
    {
        hit_player_obj.pseudograb = true;
    }
    
    if my_hitboxID.hbox_num >= 2.1
    {
        hit_player_obj.pseudograb = false;
    }
}

//poison
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1)
{
    hit_player_obj.croagpoison += 0+my_hitboxID.damage*3;
    hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
}

if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 1)
{
    hit_player_obj.croagpoison += 10;
    hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
}

if (my_hitboxID.attack == AT_FSPECIAL_2 )
{
    if my_hitboxID.hbox_num == 1
    {
        sound_play(sound_get("sm-poison"));
        hit_player_obj.croagpoison += 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
    }
    
    if my_hitboxID.hbox_num == 2
    {
        sound_play(sound_get("dp-paralyze"));
    }
}

if (my_hitboxID.attack == AT_JAB )
{
    sound_play(sound_get("sm-poisonsplatter"));
    hit_player_obj.croagpoison += 10;
    hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
}

//tippers
if hit_player_obj.croagpoison >= 24
{
    if (my_hitboxID.attack == AT_DATTACK && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.05;
        hit_player_obj.hitstop *=1.2;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.2))
    }
    
    if (my_hitboxID.attack == AT_UAIR && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.05;
        hit_player_obj.hitstop *=1.2;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.2))
    }
    
    if (my_hitboxID.attack == AT_DAIR && 
    (my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 7 || my_hitboxID.hbox_num == 8))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.05;
        hit_player_obj.hitstop *=1.2;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.2))
    }
    
    if (my_hitboxID.attack == AT_FAIR && 
    (my_hitboxID.hbox_num == 3))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.05;
        hit_player_obj.hitstop *=1.2;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.2))
    }
    
    if (my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 3))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.05;
        hit_player_obj.hitstop *=1.2;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.2))
    }
    
    if (my_hitboxID.attack == AT_FSTRONG && (my_hitboxID.hbox_num == 2))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.05;
        hit_player_obj.hitstop *=1.2;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.2))
    }
    
    if (my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 4))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.05;
        hit_player_obj.hitstop *=1.2;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.2))
    }
}

//below 25 //////////////////////////////////////////////////////////////////////

else if hit_player_obj.croagpoison <= 25 && hit_player_obj.croagpoison != 0
{
    if (my_hitboxID.attack == AT_DATTACK && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.02;
        hit_player_obj.hitstop *=1.1;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx2)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.1))
    }
    
    if (my_hitboxID.attack == AT_UAIR && (my_hitboxID.hbox_num == 3 || my_hitboxID.hbox_num == 4))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.02;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx2)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.1))
    }
    
    if (my_hitboxID.attack == AT_DAIR && 
    (my_hitboxID.hbox_num == 5 || my_hitboxID.hbox_num == 6 || my_hitboxID.hbox_num == 7 || my_hitboxID.hbox_num == 8))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.02;
        hit_player_obj.hitstop *=1.1;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx2)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.1))
    }
    
    if (my_hitboxID.attack == AT_FAIR && 
    my_hitboxID.hbox_num == 3)
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.02;
        hit_player_obj.hitstop *=1.1;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.1))
    }
    
    if (my_hitboxID.attack == AT_DSTRONG && (my_hitboxID.hbox_num == 3))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.02;
        hit_player_obj.hitstop *=1.1;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.1))
    }
    
    if (my_hitboxID.attack == AT_FSTRONG && (my_hitboxID.hbox_num == 2))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.02;
        hit_player_obj.hitstop *=1.1;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.1))
    }
    
    if (my_hitboxID.attack == AT_USTRONG && (my_hitboxID.hbox_num == 4))
    {
        hit_player_obj.croagpoison -= 25;
        hit_player_obj.croagpoison = clamp(hit_player_obj.croagpoison, 0, 100);
        hit_player_obj.orig_knock *= 1.02;
        
        var extra_damage = my_hitboxID.damage
        
        sound_play(sound_get("dp-poison"));
        spawn_hit_fx(hit_player_obj.x, hit_player_obj.y-48, tipperfx)
        
        //take_damage(hit_player_obj.player, player,round(extra_damage*0.1))
    }
}