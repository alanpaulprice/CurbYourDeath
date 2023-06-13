local function OnEvent(self, event, ...)
	if (event == "PLAYER_DEAD") then
		PlayMusic("Interface\\Addons\\CurbYourDeath\\audio.mp3")
	elseif (event == "PLAYER_ALIVE") then
		StopMusic()
	end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_DEAD")
frame:RegisterEvent("PLAYER_ALIVE")
frame:SetScript("OnEvent", OnEvent)
