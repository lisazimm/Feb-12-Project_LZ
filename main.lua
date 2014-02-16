

-- App name: Happy Pill or Sugar Pill (inspired from a fun random article that appeared once a day on Lemmonddrop.com. The site stopped publishing content a few years ago. Every day they would have a random article or photo that just was funny or meant to make you smile... I liked the idea of being able to click on an app and have a happy pill.)

local physics=require("physics")


local myBackgroundImages={--array of images to be put into program
	[1]="ostrich.jpg",
	[2]="kitty.jpg",
	[3]="bear.jpg",
	[4]="nycCat.jpg",
	[5]="otter.jpg",
	[6]="panda.jpg", 
	[7]="ocean.jpg",
	[8]="santa.jpg",
	[9]="penguin.jpg",
}

local myWords={-- the following are funny phrases/sentences, from commercials/movies/expressions.
	[1]="That's what she said",
	[2]="Hollar at you",
	[3]="Meow, Meow, BAXTER",
	[4]="Look behind you!",
	[5]="Because I'm Batman",
	[6]="Watch you're tongue", 
	[7]="Off to see the wizard?",
	[8]="Baby's in the corner!",
	[9]="I'm flying, Jack!",
}

local allWords= myWords[1] .. " " .. myWords[2] .. " " .. myWords[3] .. " " .. myWords[4] .. " " .. myWords[5] .. " " .. myWords[6] .. " " .. myWords[7] .. " " .. myWords[7] .. " " .. myWords[8] .. " " .. myWords[9] 
-- stringing words

local allBackgroundImages= myBackgroundImages[1] .. " " .. myBackgroundImages[2] .. " " .. myBackgroundImages[3] .. " " .. myBackgroundImages[4] .. " " .. myBackgroundImages[5] .. " " .. myBackgroundImages[6] .. " " .. myBackgroundImages[7] .. " " .. myBackgroundImages[7] .. " " .. myBackgroundImages[8] .. " " .. myBackgroundImages[9] 
-- stringing images

local textIndex=math.random(1,9)--randomly generate my sentences/words, inclusive 

local imageIndex=math.random(1,9)--randomization of the arrays

local randomWord = display.newText (myWords[textIndex], 310,300,"Garamond",60)--random words display
randomWord:setTextColor(139,0,0)

local randomImages = display.newImage (myBackgroundImages[imageIndex], 300,600)--random images display

local square = display.newRect( 0, 0, 100, 100 ) 

local w,h = display.contentWidth, display.contentHeight

local listener1 = function( obj ) 
    print( "Transition 1 completed on object: " .. tostring( obj ) )
end

local listener2 = function( obj )
    print( "Transition 2 completed on object: " .. tostring( obj ) )
end

transition.to( square, { time=800, alpha=0, x=(w-50), y=(h-50), onComplete=listener1} ) -- moving square from left to right corner

transition.to( square, { time=8000, delay=3500, alpha=1.0, onComplete=listener2 } ) -- fade in 


local square = display.newRect( 300, 200, 100, 100 )
square:setFillColor(180,0,100)
-- purple

local w,h = display.contentWidth, display.contentHeight

local listener1 = function( obj )
    print( "Transition 1 completed on object: " .. tostring( obj ) )
end

local listener2 = function( obj )
    print( "Transition 2 completed on object: " .. tostring( obj ) )
end

transition.to( square, { time=1000, alpha=0, x=(w-80), y=(h-80), onComplete=listener1} )

transition.to( square, { time=1400, delay=1500, alpha=1.0, onComplete=listener2 } )

local square = display.newRect( 50, 50, 50, 50 )
square:setFillColor(139,0,0) --red 

local w,h = display.contentWidth, display.contentHeight

local listener1 = function( obj )
    print( "Transition 1 completed on object: " .. tostring( obj ) )
end

local listener2 = function( obj )
    print( "Transition 2 completed on object: " .. tostring( obj ) )
end

transition.to( square, { time=1200, alpha=0, x=(w+50), y=(h+50), onComplete=listener1} )

transition.to( square, { time=1200, delay=4500, alpha=1.0, onComplete=listener2 } )







