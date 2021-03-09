//update
if is_string(get_stage_data(SD_ID))
{
    if !free
    {
        if correct or y>locky
        {
            locky=y
            correct=false
        }
    }
}
if clingcd>0 clingcd--
time++
if state=PS_SPAWN exit
if !hitpause
{
    if free
    {
        gassing=!(!special_down or up_down or down_down)
        if !right_down and !left_down
        {
            gassing=false
        }
        var close=jump_down and radius!=noone
        if state=PS_ATTACK_AIR and attack=AT_DSPECIAL
        {
            gassing=false
        }
        if gas<0 or !visible gassing=false
        if !gassing
        {
            gashsp+=(0-gashsp)/6
        }
        else
        {
            gashsp+=(right_down-left_down)*0.6
            gas--
            if time%3=0
            {
                sound_play(asset_get("sfx_waveland_zet"));
            }
            spawn_hit_fx(x,y-24,gasfx)
        }
    }
    if !free or state=PS_RESPAWN
    {
        gashsp=0
    }
    x+=gashsp
}
ang=point_direction(tx,ty,x,y)
if radius=noone
{
    if !special_down// and !up_down
    {
        held=0
    }
    var cling=special_pressed and up_down
    if state=PS_HITSTUN
    {
        cling=false
    }
    if held=0 and cling and clingcd=0
    {
        radius=point_distance(x,y,tx,ty)
        if tosnap!=noone
        {
            if radius<minrad radius=minrad
            
            with tosnap
            {
                if state=PS_HITSTUN and other.paralyze
                {
                    hitpause=true
                    hitstop=20
                    other.paralyze=false
                    spawn_hit_fx( x, y, 304 )
                }
            }
        }
        sound_play(sound_get("gear"))
        held=1
        clingcd=20
    }
}
else 
{
    if !up_down
    {
        held=0
    }
    if (held=0 and special_down and up_down) or unsnap
    {
        radius=noone
        var multi=-1
        var shoot=35
        if ang>270-shoot and ang<270+shoot
        {
            multi=1
        }
        hsp=sign(gashsp)*air_max_speed*multi
        
        var hop=15
        if (ang>270+hop or ang<90-hop or (ang>90+hop and ang<270-hop)) and gas>0
        {
            vsp=-jump_speed
        }
        gashsp=0
        held=-1
        sound_play(sound_get("release"))
        unsnap=false
    }
}
if radius=noone
{
    tx=get_stage_data(SD_X_POS)
    ty=locky
    txt="left"
    tosnap=noone
    
    if x>tx or y<locky
    {
        tx=get_stage_data(SD_X_POS)+get_stage_data(SD_WIDTH)
        txt="right"
        if x<tx or y<locky
        {
            maxdis=100000
            with oPlayer
            {
                if player!=other.player
                {
                    distoother=point_distance(x,y,other.x,other.y)
                    if distoother<other.maxdis
                    {
                        other.tosnap=id
                        other.maxdis=distoother
                    }
                }
            }
            /*
            if tosnap!=noone
            {
                tx=tosnap.x
                ty=tosnap.y
                txt="player "+string(tosnap.player)
            }
            */
            if tosnap=noone
            {
                tx=x
                ty=y
                txt="nope"
            }
        }
    }
}
if tosnap!=noone
{
    tx=tosnap.x
    ty=tosnap.y-tosnap.char_height/2
    txt="player "+string(tosnap.player)
}
if radius!=noone
{
    var dis=point_distance(x,y,tx,ty)
    var topx=tx+dcos(ang)*radius
    var topy=ty-dsin(ang)*radius
    txt=string(topx)
    var side=1
    if ang>90 and ang<270
    {
        side=-1
    }
    var vside=-1
    if ang>180 and ang<360
    {
        vside=1
    }
    if gassing
    {
        var oldx=x
        x=clamp(x,tx-radius,tx+radius)
        if oldx!=x
        {
            vsp=0
            gashsp=0
            if tosnap!=noone
            {
                tosnap.x-=x-oldx
            }
        }
        //y=clamp(y,ty-topy,ty+topy)
        var oldy=y
        if vside=1
        {
            if y>topy
            {
                y=topy
            }
        }
        else if vside=-1
        {
            if y<topy
            {
                y=topy
            }
        }
        if y-oldy
        {
            vsp=0
            gashsp=0
        }
    }
    else
    {
        var oldy=y
        y=clamp(y,ty-radius,ty+radius)
        if oldy>y
        {
            vsp=0
        }
        if side=1
        {
            if x>topx
            {
                x=topx
                if tosnap!=noone
                {
                    tosnap.x+=2
                }
            }
        }
        else if side=-1
        {
            if x<topx
            {
                x=topx
                if tosnap!=noone
                {
                    tosnap.x-=2
                }
            }
        }
    }
    /*
    if dis>radius
    {
        x=tx-dcos(ang)*radius
        y=ty+dsin(ang)*radius
    }
    */
    if tosnap!=noone
    {
        if tosnap.state=PS_RESPAWN or tosnap.state=PS_DEAD
        {
            unsnap=true
            x=lx
            y=ly
        }
    }
    if state=PS_RESPAWN or state=PS_DEAD
    {
        unsnap=true
        sound_stop(sound_get("gear"))
    }
}
lx=x
ly=y