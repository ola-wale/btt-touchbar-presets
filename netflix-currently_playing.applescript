if application "Safari" is running then
	tell application "Safari"
		repeat with t in tabs of windows
			tell t
				if URL starts with "https://www.netflix.com/watch" or URL starts with "http://www.netflix.com/watch" then
          				set title to do JavaScript "[document.querySelector('.PlayerControls--control-element h4').innerText, document.querySelector('.PlayerControls--control-element span').innerText, document.querySelector('.PlayerControls--control-element span+span').innerText].join(' ')"
					return title
				end if
			end tell
		end repeat
	end tell
end if
return ""
