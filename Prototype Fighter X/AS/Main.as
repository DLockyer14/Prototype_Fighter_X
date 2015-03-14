package
{
	import flash.display.MovieClip;
	import flash.events.*;
	import ScreenManager;
	
	public class Main extends MovieClip
	{
		private var _screenManager:ScreenManager;
		
		public function Main()
		{
			_screenManager = new ScreenManager();
			stage.addEventListener(Event.ENTER_FRAME , Update);
		}

		public function Update(event:Event):void
		{
			_screenManager.Update();
		}
		
		public function GetScreen():int
		{
			return _screenManager.GetScreen();
		}
	}
}