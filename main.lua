-----------------------------------------------------------------------------------------
-- Feb 27, 2019
-- main.lua
-- Created by: Marlon Poddalgoda
-----------------------------------------------------------------------------------------

local myText = display.newText( "Circle Calculator", 160, -10, native.systemFont, 40 )
myText:setFillColor( 255/255, 29/255, 96/255 )

local myText = display.newText( "Diameter of Circle:", 145, 60, native.systemFont, 20 )
myText:setFillColor( 6/255, 200/255, 75/255 )

local myText = display.newText( "By: Marlon", 160, 20, native.systemFont, 17 )
myText:setFillColor( 6/255, 29/255, 96/255 )

display.setDefault( "background", 47/255, 97/255, 214/255 )

local image = display.newImageRect( "Assets/circle.png", 150, 130 )
image.x = 170
image.y = 300

--variables
local diameterOfCircleTextfield = native.newTextField( display.contentCenterX, display.contentCenterY + -150, 200, 40 )
diameterOfCircleTextfield.id = "diameter textField"
--answer textfields
local areaOfCircleTextfield = display.newText( "Area is...", display.contentCenterX, display.contentCenterY + 170, native.systemFont, 23 )
areaOfCircleTextfield.id = "area textField"
areaOfCircleTextfield:setFillColor (249/255, 100/255, 77/255)

local circumferenceOfCircleTextfield = display.newText( "Circumference is...", display.contentCenterX, display.contentCenterY + 230, native.systemFont, 23 )
circumferenceOfCircleTextfield.id = "circumference textField"
circumferenceOfCircleTextfield:setFillColor (249/255, 100/255, 77/255)

--calculate button
local calculateButton = display.newImageRect( "./assets/calculate.png", 260, 90 )
calculateButton.x = 160
calculateButton.y = 175
calculateButton.id = "calculate button"

--function 
local function calculateButtonTouch( event )
    
    local diameterOfCircle
    local areaOfCircle
    local circumferenceOfCircle
 
    diameterOfCircle = diameterOfCircleTextfield.text
    -- area of circle
    areaOfCircle = math.pi * ((diameterOfCircle/2) * (diameterOfCircle/2))
    areaOfCircleTextfield.text = "The area is " .. areaOfCircle
    -- circumference of circle
    circumferenceOfCircle = math.pi * diameterOfCircle
    circumferenceOfCircleTextfield.text = "The circ. is " .. circumferenceOfCircle

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )