

-- CHESS
RegisterCommand("chess",function()
    exports['ps-ui']:ChessHack(function(success)
        if success then
            print("success")
		else
			print("fail")
		end
    end, 20) --Hack duration will be 20 seconds
end) 

-- VAR
RegisterCommand("var", function()
    exports['ps-ui']:VarHack(function(success)
        if success then
            print("success")
		else
			print("fail")
		end
    end, 2, 3)
end)

-- CIRCLE
RegisterCommand("circle", function()
    exports['ps-ui']:Circle(function(success)
        if success then
            print("success")
		else
			print("fail")
		end
    end, 1, 500) -- NumberOfCircles, MS
end)

-- THERMITE
RegisterCommand("thermite", function()
    exports['ps-ui']:Thermite(function(success)
        if success then
            print("success")
		else
			print("fail")
		end
    end, 30, 7, 5) -- Time, Gridsize (5, 6, 7, 8, 9, 10), IncorrectBlocks
end)

-- SCRAMBLER
RegisterCommand("scrambler", function()
    exports['ps-ui']:Scrambler(function(success)
        if success then
            print("success")
		else
			print("fail")
		end
    end, "greek", 30, 0) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
end)

-- DISPLAY TEXT
RegisterCommand("display", function()
    exports['ps-ui']:DisplayText("Example Text", "primary")
end)

RegisterCommand("hide", function()
    exports['ps-ui']:HideText()
end)


local status = false
RegisterCommand("status", function()
    if not status then
        status = true
        exports['ps-ui']:StatusShow("Area Dominance", {
            "Gang: Ballas",
            "Influence: %100",
        })
    else 
        status = false
        exports['ps-ui']:StatusHide()
    end
end)





