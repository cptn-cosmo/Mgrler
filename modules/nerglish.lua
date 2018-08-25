Nerglish = {}

-- Auxiliary function that returns a set constructed from a list.
function Set(list)
    local set = {}
    for _, l in ipairs(list) do set[l] = true end
    return set
end

-- Known words from https://wow.gamepedia.com/Nerglish
local DICTIONARY = {
    aunt = "mmmrrggllm",
    uncle = "mmmrrgglm",
    friend = "mmmrrglllm",
    move = "flllurlog",
    fisherman = "flllurlokkr",
    feral = "furl",
    good = "mmmm",
    magic = "mrrrggk",
    right = "mmmml",
    thirsty = "mllgggrrrr",
    ["and"] = "n",
    no = "nk",
    sing = "shng",
    honor = "uuua",
    scar = "skr",
    ogre = "rrrgrrr",
    ringworm = "murguhlum",
    murloc = "gmmmlmrmrgmg",
    sorry = "mrrrgll",
    yes = "mrgle",
    spring = "srng",
    clan = "klun"
}

-- Maps English characters to Nerglish characters.
local CHAR_MAP = {
    a = "mr",
    b = "gl",
    c = "ll",
    d = "br",
    e = "mg",
    f = "gr",
    g = "lb",
    h = "rb",
    i = "ml",
    j = "br",
    k = "gr",
    l = "rl",
    m = "mr",
    n = "bl",
    o = "lr",
    p = "gr",
    q = "gl",
    r = "mr",
    s = "mrll",
    t = "gr",
    u = "ml",
    v = "ba",
    w = "mm",
    x = "mr",
    y = "rl",
    z = "lr"
}

-- Strings to exclude from translation, usually emoji characters.
local EXCLUDE = Set{
    ":o",
    ":O",
    ";o",
    ";O",
    ";P",
    ";p",
    ":P",
    ":p",
    ":S",
    ":s",
    ":x",
    ":X",
    ":D",
    ";D",
    "D:",
    ":B"
}

function Nerglish.Translate(str)
    local result = ""
    -- Iterate through all word fragments, split by whitespace
    for word in str:gmatch("%S+") do
        --[[
            Append excluded word fragment directly to the result without
            translation.
        ]]
        if EXCLUDE[word] then
            result = result..word.." "
        else
            local lWord = word:lower()
            local uWord = word:upper()
            --[[
                Attempt to substitute a matching word from the DICTIONARY. 
                If no matching word was found then the word fragment remains
                unchanged.
            ]]
            local tWord = lWord:gsub(lWord:gsub("%W+", ""), DICTIONARY)
            --[[
                Apply capitalization to the whole word or first character
                depending on the original word fragment.
            ]]
            if lWord ~= tWord then
                if word == uWord then
                    tWord = tWord:upper()
                elseif word ~= lWord then
                    tWord = tWord:gsub("^%l", string.upper)
                end
                result = result..tWord.." "
            else
                -- Transcribe unknown words using the CHAR_MAP.
                for c in string.gmatch(word.." ", ".") do
                    local tC = CHAR_MAP[c:lower()] or c
                    result = result..(c == c:upper() and tC:upper() or tC)
                end
            end
        end
    end
    return result
end
