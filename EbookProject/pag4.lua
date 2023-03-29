local utils = require("utils")
local composer = require( "composer" )
local scene = composer.newScene()

-- create()
function scene:create( event )
    local sceneGroup = self.view
    
    local bgpag4 = display.newImageRect(utils.bgpag4, 768, 1024 )
    bgpag4.x = display.contentCenterX
    bgpag4.y = display.contentCenterY
    sceneGroup:insert( bgpag4 )

    local prev = display.newText( utils.prev, 0, 0, utils.font, 50 )
	prev.x = display.contentWidth * 0.15
	prev.y = display.contentHeight - 60
	prev:setFillColor( 0, 0, 0 )
	sceneGroup:insert( prev )

    prev:addEventListener( "tap", function()
		composer.gotoScene( "pag3", "fade" )
	end )

    local next = display.newText( utils.next, 0, 0, utils.font, 50 )
	next.x = display.contentWidth * 0.85
	next.y = display.contentHeight * 0.94
	next:setFillColor( 0, 0, 0 )
	sceneGroup:insert( next )

    next:addEventListener( "tap", function()
		composer.gotoScene( "pag5", "fade" )
	end )

 
end

scene:addEventListener( "create", scene )

return scene