-- Code created by Kwik - Copyright: kwiksher.com -- Version: 2.4.6 module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local audio6_aud039 = audio.loadStream(audioDir .. "audio6.mp3", system.ResourceDirectory)     statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page")     statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage)     local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.CachesDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )   local drawScreen = function()
		navigation.DisplayDevelopmentVersion()
		menuGroup.navigator = navigation.InsertNavigation{}       local BG         BG = display.newImageRect(imageDir .. "p87_bg.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG --local PageZZCorner	end   drawScreen()    local myClosure_audio6_aud039 = function()       audio.play(audio6_aud039, {  channel=2, loops=-1, fadein=500 } )    end    timerStash.newTimer_040 = timer.performWithDelay(0, myClosure_audio6_aud039, 1)    return menuGroup end 