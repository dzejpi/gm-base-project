/// @description Count down the credits
if countdown > 0
{
	countdown -= 1;
} else
{
	// Countdown ended, credits end as well
	if !credits_ended
	{
		// Go back to main menu
		room_goto(room_main_menu);
		credits_ended = true;
	}
}