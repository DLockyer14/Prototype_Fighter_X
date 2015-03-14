package
{
	import flash.display.MovieClip;
	import flash.events.*;
	import ScreenManager;
    import flash.display.Stage;
	
	public class Main extends MovieClip
	{
		private var _screenManager:ScreenManager;
		public static var STAGE:Stage;
		
		public function Main()
		{
			stage.addEventListener(Event.ENTER_FRAME, Update);
			STAGE = stage;
		}
		
		public function Update(evt:Event):void
		{
			// (total / loaded) * 100 = percentage done
			var total:Number = stage.loaderInfo.bytesTotal;
			var loaded:Number = this.stage.loaderInfo.bytesLoaded;
			
			if(loaded == total)
			{
				_screenManager = new ScreenManager();
				stage.removeEventListener(Event.ENTER_FRAME, Update);
			}
		}
	}
}