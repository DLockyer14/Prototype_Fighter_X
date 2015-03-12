package
{
	import ObstacleManager;
	
	public class ScreenManager
	{
		var _obstacleManager:ObstacleManager;
		
		public function ScreenManager()
		{
			_obstacleManager = new ObstacleManager();
		}
		
		public function Update():void
		{
			_obstacleManager.Update();
		}
	}
}
