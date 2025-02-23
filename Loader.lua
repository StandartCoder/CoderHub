return (function(...) 
    local _ = { _ = (loadstring or load), _c = ('https://raw.githubusercontent.com/%s/%s/main/%s.lua'):format('StandartCoder', 'CoderHub', game.PlaceId) }
    setmetatable(_, { __call = function(s) 
        local a, b = pcall(game.HttpGet, game, s._c) 
        if a and b and not b:find('404') then 
            local c, d = pcall(s._, b) 
            if not c then warn('[⚠️] Script Error:', d) end 
        else 
            local e, f = pcall(game.HttpGet, game, ('https://raw.githubusercontent.com/%s/%s/main/source'):format('jensonhirst', 'Orion')) 
            if e and f then 
                pcall(function() loadstring(f)():MakeNotification({ Name = "Game Not Supported", Content = "This game is not supported.", Image = "rbxassetid://4483345998", Time = 5 }) end) 
            end 
        end 
    end })(...) 
end)(...)
