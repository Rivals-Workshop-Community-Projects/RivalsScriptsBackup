//

sprite_index = sprite_get("lift");

//Variables
active=true;
respawntimer=0;
falltimer=1;
type=1; //1 for left pulley, -1 for right pulley
spx=0;
spy=0;
falling=false; //Whether or not the platform detached.
fallvsp=0;
falltimer=0;
prevsp=0;
targx=x-90;

if (spawn_variables[0]==1)
{
	type=-1;
	x+=11;
	y+=13;
}
else
{
	x-=1;
}
starty=y;
py=y; //Used for the wire.
aimy = get_marker_y(1)+5;
fx=120;
simy=y; //Decimal vsps can't work, so this is used as a workaround.
realvsp=0;
wire=sprite_get("wire");
can_be_grounded = false;                            //Determines if the article follows platforms when free == false.
ignores_walls = true;                               //Determines if the article goes through walls.
free = true;                                        //Whether the article is in the air or not.

depth=1;
//hsp=-1;
x-=5;
