package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_118:DisplayObject;
      
      private var var_2289:uint;
      
      private var var_786:IWindowToolTipAgentService;
      
      private var var_783:IWindowMouseScalingService;
      
      private var var_215:IWindowContext;
      
      private var var_787:IWindowFocusManagerService;
      
      private var var_784:IWindowMouseListenerService;
      
      private var var_785:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2289 = 0;
         var_118 = param2;
         var_215 = param1;
         var_785 = new WindowMouseDragger(param2);
         var_783 = new WindowMouseScaler(param2);
         var_784 = new WindowMouseListener(param2);
         var_787 = new FocusManager(param2);
         var_786 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_783;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_787;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_786;
      }
      
      public function dispose() : void
      {
         if(var_785 != null)
         {
            var_785.dispose();
            var_785 = null;
         }
         if(var_783 != null)
         {
            var_783.dispose();
            var_783 = null;
         }
         if(var_784 != null)
         {
            var_784.dispose();
            var_784 = null;
         }
         if(var_787 != null)
         {
            var_787.dispose();
            var_787 = null;
         }
         if(var_786 != null)
         {
            var_786.dispose();
            var_786 = null;
         }
         var_215 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_784;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_785;
      }
   }
}
