-- Code created by Kwik - Copyright: kwiksher.com -- Version: 2.4.6 module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page")     statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage)     local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.CachesDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )   local drawScreen = function()		navigation.DisplayDevelopmentVersion()		menuGroup.navigator = navigation.InsertNavigation{}       local showbox         local house         local housebg         local BG         BG = display.newImageRect(imageDir .. "p7_bg.png", 785, 1024 );        BG.x = 380; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG        housebg = display.newImageRect(imageDir .. "p7_housebg.png", 214, 307 );        housebg.x = 654; housebg.y = 871; housebg.alpha = 1; housebg.oldAlpha = 1        menuGroup:insert(housebg)        menuGroup.housebg = housebg        local onhouseTouch = function(event)           if event.phase=="ended" then                  if showbox.alpha == 0 then                    transitionStash.newTransition_393 = transition.to( showbox, {alpha=showbox.oldAlpha, time=1000, delay=0})                 else                    transitionStash.newTransition_393 = transition.to( showbox, {alpha=0, time=1000, delay=0})                 end           end        end        house = ui.newButton{            defaultSrc= imageDir .."p7_house.png",            defaultX = 140,            defaultY = 184,            overSrc= imageDir .."p7_house.png",            overX = 140,            overY = 184,            onRelease=onhouseTouch,            id="houseButton"        }        house.x = 652; house.y = 872; house.alpha = 1; house.oldAlpha = 1        menuGroup:insert(house)        menuGroup.house = house        showbox = display.newImageRect(imageDir .. "p7_showbox.png", 514, 500 );        showbox.x = 397; showbox.y = 688; showbox.alpha = 1; showbox.oldAlpha = 1        menuGroup:insert(showbox)        menuGroup.showbox = showbox        showbox.alpha = 0 	end   drawScreen()    return menuGroup end 