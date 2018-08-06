local _ = ...

-- CONSTANTS
ADDON_NAME = "Mgrler"
ADDON_VERSION = GetAddOnMetadata(ADDON_NAME, "Version")

local function MgrlerAddonCommands(msg, editbox)
    if msg ~= "" then
        local chatID = DEFAULT_CHAT_FRAME.editBox:GetAttribute("chatType")
        local langID = DEFAULT_CHAT_FRAME.editBox.languageID
        SendChatMessage("[Murloc]: "..Nerglish.Translate(msg), chatID, langID)
    else
        print("|cFFFFFF00Welcome to Mgrler the Nerglish chat addon.|r")
        print("|cFFFFFF00Version: "..ADDON_VERSION.."|r")
        print("|cFFFFFF00Syntax: /ngl type some text here.|r")
    end
end

SLASH_NGL1 = '/ngl'
SlashCmdList["NGL"] = MgrlerAddonCommands
