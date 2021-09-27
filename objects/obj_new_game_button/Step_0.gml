/// @description Pressed logic
event_inherited();

if is_pressed = true
{
	if !game_started
	{
		room_goto_next();
		game_started = true;
	}
}