local utils = require("utils")
local composer = require( "composer" )
local scene = composer.newScene()

-- create()
function scene:create( event )
    local sceneGroup = self.view
    
    local contracapa = display.newImageRect(utils.contracapa, 768, 1024 )
    contracapa.x = display.contentCenterX
    contracapa.y = display.contentCenterY
    sceneGroup:insert( contracapa )

    local prev = display.newText( utils.prev, 0, 0, utils.font, 50 )
	prev.x = display.contentWidth * 0.15
	prev.y = display.contentHeight - 60
	prev:setFillColor( 0, 0, 0 )
	sceneGroup:insert( prev )

    prev:addEventListener( "tap", function()
		composer.gotoScene( "pag8", "fade" )
	end )
 
end

scene:addEventListener( "create", scene )

return scene