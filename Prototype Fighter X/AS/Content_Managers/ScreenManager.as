package
{
	import ObjectManager;
	
	import flash.events.KeyboardEvent;
	import flash.display.MovieClip;
	
	public class ScreenManager extends MovieClip
	{
		// Member Variables
		private var _objectManager:ObjectManager;
		
		// AS Does not support enumeration 
		// Screens: 0:Preloader, 1:Menu, 2:LevelSelect, 3:FighterSelect, 4:Game, 5:GameOver, 6:HighScores, 7:Credits
		private var _screen:int;
		private var _nextScreen:int;
		
		// Transitioning Variables
		private var _transitioning:Boolean;
		private var _transitioningOut:Boolean;
		private var _transitionCount:int;
		
		// Get/Set Interface Methods
		public function GetScreen():int { return _screen; }
		
		public function ScreenManager()
		{
			if(stage)
				stage.addEventListener(KeyboardEvent.KEY_DOWN, KeyHandler);
			
			_screen				= 0; 	 // Start with Preloader
			_nextScreen			= 0; 	 // Already at target screen
			_transitioning		= false; // First Screen doesn't require a transition
			_transitioningOut 	= false;
			_transitionCount	= 100; // 60fps, 1.66 seconds :: 100 for easy percentage based calculations (e.g. size/alpha of an image)
		}
		
		public function Update():void
		{
			// If transitioning, update transition
			if(_transitioning)
				UpdateTransition();
			else
			{				
				switch(_screen)
				{
					case 0: // Preloader
					break; // End Preloader
					
					case 1: // Menu
					break;
					
					case 2: // Level Select
					break;
					
					case 3: // Fighter Select
					break;
					
					case 4: // Game
					break;
					
					case 5: // Game Over
					break;
					
					case 6: // High Scores
					break;
					
					case 7: // Credits
					break;
				}
			}
		}
		
		private function UnloadCurrentScreen():void
		{
			// Unload previous assets
			switch(_screen)
			{
				case 0: // Preloader
				break; // End Preloader
				
				case 1: // Menu
				break;
				
				case 2: // Level Select
				break;
				
				case 3: // Fighter Select
				break;
				
				case 4: // Game
				break;
				
				case 5: // Game Over
				break;
				
				case 6: // High Scores
				break;
				
				case 7: // Credits
				break;
			}
		}
		
		private function SetUpNextScreen():void
		{
			// Setup assets for next screen (images, classes, data etc)
			UnloadCurrentScreen();
			_screen = _nextScreen;
			
			switch(_screen)
			{
				case 1: // Menu
					// Load Menu Image/Data
				break;
				
				case 2: // Level Select
				break;
				
				case 3: // Fighter Select
				break;
				
				case 4: // Game
					_objectManager = new ObjectManager();
				break;
				
				case 5: // Game Over
				break;
				
				case 6: // High Scores
				break;
				
				case 7: // Credits
				break;
			}
		}
		
		private function UpdateTransition():void
		{
			// Scale / Fade Out
			if(_transitioningOut)
				if(_transitionCount > 0)
				{
					// Scale or Fade
					_transitionCount--;
				}
				else
				{
					// Finished Fading Out
					_transitioningOut = false;
					_screen = _nextScreen;
				}
			else
			{
				if(_transitionCount < 100)
				{
					// Scale or Fade
					_transitionCount++;
				}
				else
				{
					// Finished Fading In
					_transitioning = false;
					_transitioningOut = true;
					SetUpNextScreen();
				}
			}
		}
		
		public function ChangeToScreen(nextScreen:int):void
		{
			// Check nextScreen is valid and start transitioning to it
			if(_screen != nextScreen && _nextScreen != nextScreen)
			{
				_nextScreen = nextScreen;
				_transitioning = true;
				_transitioningOut = true;
				_transitionCount = 100;
			}
		}
		
		private function KeyHandler(evt:KeyboardEvent):void
		{
			switch(_screen)
			{
				case 0: // Preloader
				break; // End Preloader
				
				case 1: // Menu
				break;
				
				case 2: // Level Select
				break;
				
				case 3: // Fighter Select
				break;
				
				case 4: // Game
				break;
				
				case 5: // Game Over
				break;
				
				case 6: // High Scores
				break;
				
				case 7: // Credits
				break;
			}
		}
	}
}
