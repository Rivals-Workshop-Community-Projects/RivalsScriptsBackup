hsp = floor(room_width/2 + 200*sin(GetGameplayTime(120)/200))-x;

#define GetGameplayTime(_offset)
{
	var time = get_gameplay_time();
	return max(time-_offset, 0);
}