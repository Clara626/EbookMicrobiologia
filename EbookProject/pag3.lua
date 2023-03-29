local utils = require("utils")
local composer = require( "composer" )
local scene = composer.newScene()

-- create()
function scene:create( event )
    local sceneGroup = self.view
    
    local bgpag3 = display.newImageRect(utils.bgpag3, 768, 1024 )
    bgpag3.x = display.contentCenterX
    bgpag3.y = display.contentCenterY
    sceneGroup:insert( bgpag3 )

    local prev = display.newText( utils.prev, 0, 0, utils.font, 50 )
	prev.x = display.contentWidth * 0.15
	prev.y = display.contentHeight - 60
	prev:setFillColor( 0, 0, 0 )
	sceneGroup:insert( prev )

    prev:addEventListener( "tap", function()
		composer.gotoScene( "pag2", "fade" )
	end )

    local next = display.newText( utils.next, 0, 0, utils.font, 50 )
	next.x = display.contentWidth * 0.85
	next.y = display.contentHeight * 0.94
	next:setFillColor( 0, 0, 0 )
	sceneGroup:insert( next )

    next:addEventListener( "tap", function()
		composer.gotoScene( "pag4", "fade" )
	end )

 
end

scene:addEventListener( "create", scene )

return scene