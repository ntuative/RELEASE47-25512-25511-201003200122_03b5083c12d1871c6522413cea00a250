package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_323:Timer;
      
      protected var var_932:String;
      
      protected var var_933:uint;
      
      protected var var_1105:Point;
      
      protected var var_241:IToolTipWindow;
      
      protected var var_1106:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1105 = new Point();
         var_1106 = new Point(20,20);
         var_933 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_323 != null)
         {
            var_323.stop();
            var_323.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_323 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1105);
            if(var_241 != null && true)
            {
               var_241.x = param1 + var_1106.x;
               var_241.y = param2 + var_1106.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_323 != null)
         {
            var_323.reset();
         }
         if(_window && true)
         {
            if(var_241 == null || false)
            {
               var_241 = _window.context.create("undefined::ToolTip",var_932,WindowType.const_286,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_241.x = _loc2_.x + var_1105.x + var_1106.x;
            var_241.y = _loc2_.y + var_1105.y + var_1106.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_932 = IInteractiveWindow(param1).toolTipCaption;
               var_933 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_932 = param1.caption;
               var_933 = 500;
            }
            _mouse.x = var_118.mouseX;
            _mouse.y = var_118.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1105);
            if(var_932 != null && var_932 != "")
            {
               if(var_323 == null)
               {
                  var_323 = new Timer(var_933,1);
                  var_323.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_323.reset();
               var_323.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_241 != null && true)
         {
            var_241.destroy();
            var_241 = null;
         }
      }
   }
}
