// got hit

uspecial_buffer = false;

with(oPlayer) if(player != other.player)
{
    other_array_cleared = true;
	
	var i = 0;
	repeat(100)
	{
		other_afterimage_array[i] = -1;
		i++;
	}
	other_arrayindex = 0;
}
