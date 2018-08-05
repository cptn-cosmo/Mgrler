local tab = {
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
    w = "",
    x = "mr",
    y = "rl",
    z = "lr",

    A = "Mr",
    B = "Gl",
    C = "Ll",
    D = "Br",
    E = "Mg",
    F = "Gr",
    G = "Lb",
    H = "Rb",
    I = "Ml",
    J = "Br",
    K = "Gr",
    L = "Rl",
    M = "Mr",
    N = "Bl",
    O = "Lr",
    P = "Gr",
    Q = "Gl",
    R = "Mr",
    S = "Mrll",
    T = "Gr",
    U = "Ml",
    V = "Ba",
    W = "",
    X = "Mr",
    Y = "Ll",
    Z = "Lr"
}

local function translate(msg)
    local res = ""

    for c in msg:gmatch(".") do
        res = res..(tab[c] or c)
    end

    return res
end

local function MgrlAddonCommands(msg, editbox)

    --print("[Nerglish]: "..translate(msg))
    SendChatMessage("[Nerglish]: "..translate(msg), "GUILD", DEFAULT_CHAT_FRAME.editBox.languageID)

end

SLASH_MGRL1 = '/mgrl'
SlashCmdList["MGRL"] = MgrlAddonCommands
