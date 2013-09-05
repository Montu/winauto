winauto
=======

Windows automation using bash script and autoit

# File descriptions:
1. restart.bat -> there are two parameters in this file process_name is name of exe like 
	chrome.exe. and timeout_val is time for which script should wait before restarting the
	process.

2. ie_windows_populator.au3 -> is autoit script which populates all the url(s) for any tab(s)
	and window(s) of IE which are currently open.
	
3. get_first_tab_ie_firefox.au3 -> This script gives you the current url of active firefox and 
	internet explorer tab.
	
4. The exe files where compiled using autoit utility and these exe(s) might not work on your
	computer. If they don't work please recompile them using autoit build utility.
