local PREFIX = "[Murloc] "
local ADDON_VERSION = GetAddOnMetadata("Mgrler", "Version")

local function MgrlerAddonCommands(msg, editbox)
    if msg ~= "" then
        local chatID = editbox:GetAttribute("chatType")
        local whoID = editbox:GetAttribute("tellTarget")

        if chatID == "WHISPER" then
            SendChatMessage(PREFIX..Nerglish.Translate(msg), chatID, nil, whoID)
        else
            SendChatMessage(PREFIX..Nerglish.Translate(msg), chatID, nil)
        end
    else
        print("|cFFFFFF00Welcome to Mgrler the Nerglish chat addon.|r")
        print("|cFFFFFF00Version: "..ADDON_VERSION.."|r")
        print("|cFFFFFF00Use: /ngl <some text here>.|r")
    end
end

SLASH_NGL1 = '/ngl'
SlashCmdList["NGL"] = MgrlerAddonCommands
