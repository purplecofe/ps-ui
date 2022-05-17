

-- CHESS HACK
RegisterCommand("chess",function()
    exports['ps-ui']:ChessHack(function(success)
        if success then
            print("success")
		else
			print("fail")
		end
    end, 20) --Hack duration will be 20 seconds
end) 

-- VAR HACK
RegisterCommand("var", function()
    exports['ps-ui']:VarHack(function(success)
        if success then
            print("success")
		else
			print("fail")
		end
    end, 2, 3)
end)

-- CIRCLE HACK
RegisterCommand("circle", function()
    exports['ps-ui']:Circle(function(success)
        if success then
            print("success")
		else
			print("fail")
		end
    end, 1, 500) -- NumberOfCircles, MS
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





