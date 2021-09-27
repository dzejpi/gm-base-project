/// @description This fixes the scaling if the game is running in the embedded window
// Detect the device
if !(os_browser == browser_not_a_browser)
{
	// Scale properly if the game is running in the browser
	if (browser_width != width || browser_height != height)
	{
		width = browser_width;
		height = browser_height;
		window_set_size(width, height);
	}
}