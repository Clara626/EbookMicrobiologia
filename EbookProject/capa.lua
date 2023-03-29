local utils = require("utils")
local composer = require( "composer" )
local scene = composer.newScene()


-- create()
function scene:create( event )
    local sceneGroup = self.view
    
    local background = display.newImageRect(utils.background, 768, 1024 )
    background.x = display.contentCenterX
    background.y = display.contentCenterY
    sceneGroup:insert( background )

    local next = display.newText( utils.next, 0, 0, utils.font, 50 )
	next.x = display.contentWidth * 0.85
	next.y = display.contentHeight * 0.94
	next:setFillColor( 0, 0, 0 )
	sceneGroup:insert( next )

	next:addEventListener( "tap", function()
		composer.gotoScene( "pag1", "fade" )
	end )

 
end

scene:addEventListener( "create", scene )

return scene