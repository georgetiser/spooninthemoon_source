-- Code created by Kwik - Copyright: kwiksher.com 
-- Version: 2.4.6 

module(..., package.seeall) 
 function new()     local menuGroup = display.newGroup()     statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page")     statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage)     local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.CachesDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )   local drawScreen = function()

		navigation.DisplayDevelopmentVersion()
		menuGroup.navigator = navigation.InsertNavigation{}
       local chpt1pv         local chpt1pvover         local BG         BG = display.newImageRect(imageDir .. "p83_ch05pg14.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        local onchpt1pvTouch = function(event)           if event.phase=="ended" then           media.playVideo( "movie_part1_fireflies.mp4", system.ResourceDirectory, false )           end        end        chpt1pv = ui.newButton{            defaultSrc= imageDir .."p83_chpt1pv.png",            defaultX = 102,            defaultY = 102,            overSrc= imageDir .."p83_chpt1pvover.png",            overX = 102,            overY = 102,            onRelease=onchpt1pvTouch,            id="chpt1pvButton"        }        chpt1pv.x = 382; chpt1pv.y = 854; chpt1pv.alpha = 1; chpt1pv.oldAlpha = 1        menuGroup:insert(chpt1pv)        menuGroup.chpt1pv = chpt1pv
	end
   drawScreen()    return menuGroup end 