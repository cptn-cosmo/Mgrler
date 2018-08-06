local _ = ...

Nerglish = CreateFrame("Frame")

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

local function firstToUpper(str)
    return str:gsub("^%l", string.upper)
end

function Nerglish.Translate(str)
    local res = ""

    for c in str:gmatch(".") do
        local tok = CHAR_MAP[c:lower()] or c
        if c == c:upper() then
            tok = firstToUpper(tok)
        end
        res = res..tok
    end

    return res
end
