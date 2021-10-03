package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_290:String = "WE_CHILD_RESIZED";
      
      public static const const_1371:String = "WE_CLOSE";
      
      public static const const_1293:String = "WE_DESTROY";
      
      public static const const_158:String = "WE_CHANGE";
      
      public static const const_1360:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1486:String = "WE_PARENT_RESIZE";
      
      public static const const_90:String = "WE_UPDATE";
      
      public static const const_1268:String = "WE_MAXIMIZE";
      
      public static const const_367:String = "WE_DESTROYED";
      
      public static const const_887:String = "WE_UNSELECT";
      
      public static const const_1261:String = "WE_MAXIMIZED";
      
      public static const const_1482:String = "WE_UNLOCKED";
      
      public static const const_352:String = "WE_CHILD_REMOVED";
      
      public static const const_173:String = "WE_OK";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1359:String = "WE_ACTIVATE";
      
      public static const const_238:String = "WE_ENABLED";
      
      public static const const_373:String = "WE_CHILD_RELOCATED";
      
      public static const const_1295:String = "WE_CREATE";
      
      public static const const_612:String = "WE_SELECT";
      
      public static const const_162:String = "";
      
      public static const const_1589:String = "WE_LOCKED";
      
      public static const const_1504:String = "WE_PARENT_RELOCATE";
      
      public static const const_1467:String = "WE_CHILD_REMOVE";
      
      public static const const_1456:String = "WE_CHILD_RELOCATE";
      
      public static const const_1430:String = "WE_LOCK";
      
      public static const const_209:String = "WE_FOCUSED";
      
      public static const const_550:String = "WE_UNSELECTED";
      
      public static const const_888:String = "WE_DEACTIVATED";
      
      public static const const_1327:String = "WE_MINIMIZED";
      
      public static const const_1528:String = "WE_ARRANGED";
      
      public static const const_1538:String = "WE_UNLOCK";
      
      public static const const_1483:String = "WE_ATTACH";
      
      public static const const_1353:String = "WE_OPEN";
      
      public static const const_1173:String = "WE_RESTORE";
      
      public static const const_1474:String = "WE_PARENT_RELOCATED";
      
      public static const const_1330:String = "WE_RELOCATE";
      
      public static const const_1579:String = "WE_CHILD_RESIZE";
      
      public static const const_1449:String = "WE_ARRANGE";
      
      public static const const_1323:String = "WE_OPENED";
      
      public static const const_1256:String = "WE_CLOSED";
      
      public static const const_1500:String = "WE_DETACHED";
      
      public static const const_1598:String = "WE_UPDATED";
      
      public static const const_1373:String = "WE_UNFOCUSED";
      
      public static const const_404:String = "WE_RELOCATED";
      
      public static const const_1309:String = "WE_DEACTIVATE";
      
      public static const const_215:String = "WE_DISABLED";
      
      public static const const_560:String = "WE_CANCEL";
      
      public static const const_549:String = "WE_ENABLE";
      
      public static const const_1314:String = "WE_ACTIVATED";
      
      public static const const_1172:String = "WE_FOCUS";
      
      public static const const_1540:String = "WE_DETACH";
      
      public static const const_1265:String = "WE_RESTORED";
      
      public static const const_1199:String = "WE_UNFOCUS";
      
      public static const const_52:String = "WE_SELECTED";
      
      public static const const_1185:String = "WE_PARENT_RESIZED";
      
      public static const const_1372:String = "WE_CREATED";
      
      public static const const_1493:String = "WE_ATTACHED";
      
      public static const const_1251:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1597:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1370:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1597 = param3;
         var_1370 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1370;
      }
      
      public function get related() : IWindow
      {
         return var_1597;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1370 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
