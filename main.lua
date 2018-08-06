local _ = ...

-- CONSTANTS
ADDON_NAME = "Mgrler"
ADDON_VERSION = GetAddOnMetadata(ADDON_NAME, "Version")

PREFIX = "[Murloc]: "

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
        print("|cFFFFFF00Use: /ngl type some text here.|r")
    end
end

SLASH_NGL1 = '/ngl'
SlashCmdList["NGL"] = MgrlerAddonCommands
