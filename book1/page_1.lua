-- Code created by Kwik - Copyright: kwiksher.com -- Version: 2.4.6 module(..., package.seeall) function new() 	-- The following sets the development-label settings	-- (bottom of this page)	local FileForIntroMovie = "movie_bookintro.mp4"	local menuGroup = display.newGroup() 	local dispose 	local _W = display.contentWidth; 	local _H = display.contentHeight;     local path = system.pathForFile( "SpoonAndTheMoonPart1.txt", system.CachesDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_menuPage )     io.close( file ) 	-- Audio callings 	local HeyDiddle64 = audio.loadStream(audioDir .. "heydiddle64.mp3", system.ResourceDirectory) 	local drawScreen = function()		statusreport.debugPrint("----------------"); statusreport.debugPrint(""); statusreport.debugPrint("New Page") 		statusreport.debugPrint("The current page is: " .. _G.kwk_currentPage) 		math.randomseed(os.time()) 		local BG		BG = display.newImageRect(imageDir .. "Book_TitlePage.png", 768, 1024 ); 		BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1 		BG.oriX = BG.x; BG.oriY = BG.y 		BG.name = "BG" 		menuGroup:insert(1,BG); menuGroup.BG = BG 		 local onkwkBforwardTouch = function(event) 			if event.phase=="ended" then  				cancelAllSounds(); cancelAllTimers(); cancelAllTransitions(); cancelAllSounds() 				local mememeMPV = function()					media.playVideo( FileForIntroMovie, system.ResourceDirectory, false ) 				end				transitionStash.newTransition_aa850 = nil				transitionStash.newTransition_aa850 = transition.to( BG, {alpha=0, time=500, delay=0}) 				transitionStash.newTransition_bb850 = nil				transitionStash.newTransition_bb850 = transition.to( kwkBforward, {alpha=0, time=250, delay=250}) 				timerStash.newTimer_cc850 = nil				timerStash.newTimer_cc850 = timer.performWithDelay(500, mememeMPV, 1, myEnder_switch) 				local myClosure_switch = function() 					_G.kwk_currentPage = _G.kwk_menuPage					director:changeScene( "page_" .. _G.kwk_currentPage, transEffect ) 				end				local myTimer_switch = function()					--movie didn't play					--print("by timer")					_G.kwk_fadeaway = false					transEffect = "fade"					myClosure_switch()				end				local myEnder_switch = function()					--print("by ender")					_G.kwk_fadeaway = true					transEffect = nil					myClosure_switch()				end				timerStash.newTimer_106 = timer.performWithDelay(1001, myTimer_switch, 1) 			end 		 end 		 kwkBforward = uii.nuButton{ 			 defaultSrc=imageDir.."kwkBforward.png", 			 defaultX = 111, 			 defaultY = 87, 			 overSrc=imageDir.."kwkBforward.png", 			 overX = 111, 			 overY = 87, 			 onRelease=onkwkBforwardTouch, 			 id="kwkBforwardButton" 		 } 		 kwkBforward.x = 475; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1 		 menuGroup:insert(kwkBforward) 		 menuGroup.kwkBforward = kwkBforward 		dispose = function(event) 			cancelAllSounds(); cancelAllTimers(); cancelAllTransitions() 		end 	end 	drawScreen() 	local myClosure_HeyDiddle64 = function() 		audio.play(HeyDiddle64, {	channel=32, loops=0, fadein=500 } ) 	end--function heydiddle	timerStash.newTimer_872 = timer.performWithDelay(0, myClosure_HeyDiddle64, 1) 	return menuGroup end 