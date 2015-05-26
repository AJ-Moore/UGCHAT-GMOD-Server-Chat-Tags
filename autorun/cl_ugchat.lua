hook.Add( "OnPlayerChat", "PlayerTagHook", function(_ply, _msg, _team, _dead)
	
	local _lmsg = string.lower(_msg) 
	
	local _team =  team.GetName(_ply:Team())
	local _teamColor = team.GetColor(_ply:Team())
	if (_ply:Alive() ) then 
		chat.AddText(Color( 0, 0, 0 ), "[",_teamColor,_team ,Color( 0, 0, 0 ),"]",_teamColor , _ply:Name(),Color( 255, 255, 255 ) ,": ".._msg )
	else
		chat.AddText(Color(255,0,0),"<DEAD>",Color( 0, 0, 0 ), "[",_teamColor,_team ,Color( 0, 0, 0 ),"]",_teamColor , _ply:Name(),Color( 255, 255, 255 ) ,": ".._msg )
	end 
	
	
		if (string.lower(_msg) == "!ragequit") or (string.lower(_msg) == "/ragequit") then 
			
			if (_dead) then 
				if ( _ply == LocalPlayer() ) then 
					chat.AddText(Color(255,122,122), "You're already dead!")
				end 
			else
				if ( _ply == LocalPlayer() ) then 
					RunConsoleCommand("Kill")
				end 
				chat.AddText(Color(255,122,122),_ply:Name() .. " lost the will to live!")
			
			end 
		end 
		/*
		if (string.find(string.lower(_msg),"alzon")) or (string.find(_lmsg, "a l z"))or (string.find(_lmsg, "alz")) or (string.find(_lmsg, "allz")) or (string.find(_lmsg, "alzz"))then 
			if ( _ply == LocalPlayer() ) then 
				RunConsoleCommand("Kill")
				chat.AddText(Color(255,122,122),"We do not speak his name")
			end 
		end*/
		
		if (string.find(_lmsg, "nova")) then 
			if ( string.lower(_ply:Name()) == "nova" ) then 
				/*RunConsoleCommand("Kill")*/
				
			end 
			chat.AddText(Color(255,22,22),"Nova is Awesome!!")
		end 

		if (string.find(_lmsg, "!slap alzon")) or (string.find(_lmsg, "!slap alz")) or (string.find(_lmsg, "!slap al")) then 
			if ( _ply == LocalPlayer() ) then 
				//_lmsg = "!slap" .. _ply:Name() .."99999999999"
				RunConsoleCommand("Kill")
			end 
			chat.AddText(Color(255,22,22),"Unslappable!!")
			
		end 
		
		if (_lmsg == "!help") or (_lmsg == "/help") then 
			hook.Run("ChatHelp", _ply, _msg,_team,_dead)
		end 
	
	
	hook.Run ("PlayerSay", _ply, _msg,_team,_dead)
	
	return true 
	
end )

hook.Add("ChatHelp", "OnChatHelp", function(_ply, _msg, _team, _dead)
	if ( _ply == LocalPlayer() ) then 
		local _c = Color(0,0,0)
		local _c2 = Color(200,200,200)
		chat.AddText(_c,"===========HELP===============")
		chat.AddText(_c,"!help or /help -",_c2," Shows the help")
		chat.AddText(_c,"!ragequit or /ragequit -",_c2," unspecified")
		chat.AddText(_c,"!radio or /radio -",_c2," Toggles the radio on/ off")
		chat.AddText(_c,"!radio <volume> or /radio <volume> -",_c2," Turns on the radio with a desired volume level")
		chat.AddText(_c,"!radiooff or /radiooff -",_c2," Turns off the radio")
		chat.AddText(_c,"!choon or /choon -",_c2," Sends a message to frag radio telling them the current song is a tune")
		chat.AddText(_c,"!poon or /poon -",_c2," Sends a message to frag radio telling them the current song is terrible")
		chat.AddText(_c,"!request <Song in quotes> or /request <song> -",_c2," Requests song specified")
		chat.AddText(_c,"!shoutout <Your shoutout> or /shoutout <Your shoutout> -",_c2," Send a message to the dj")
	end 
end)

hook.Add( "RadioHelp ", "OnRadioHelp", function(_ply, _msg, _team, _dead)


end)

