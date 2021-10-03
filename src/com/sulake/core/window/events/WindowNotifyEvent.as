package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1183:String = "WN_CREATED";
      
      public static const const_892:String = "WN_DISABLE";
      
      public static const const_909:String = "WN_DEACTIVATED";
      
      public static const const_923:String = "WN_OPENED";
      
      public static const const_951:String = "WN_CLOSED";
      
      public static const const_821:String = "WN_DESTROY";
      
      public static const const_1484:String = "WN_ARRANGED";
      
      public static const const_392:String = "WN_PARENT_RESIZED";
      
      public static const const_1003:String = "WN_ENABLE";
      
      public static const const_985:String = "WN_RELOCATE";
      
      public static const const_961:String = "WN_FOCUS";
      
      public static const const_807:String = "WN_PARENT_RELOCATED";
      
      public static const const_358:String = "WN_PARAM_UPDATED";
      
      public static const const_627:String = "WN_PARENT_ACTIVATED";
      
      public static const const_211:String = "WN_RESIZED";
      
      public static const const_883:String = "WN_CLOSE";
      
      public static const const_845:String = "WN_PARENT_REMOVED";
      
      public static const const_265:String = "WN_CHILD_RELOCATED";
      
      public static const const_677:String = "WN_ENABLED";
      
      public static const const_256:String = "WN_CHILD_RESIZED";
      
      public static const const_988:String = "WN_MINIMIZED";
      
      public static const const_656:String = "WN_DISABLED";
      
      public static const const_226:String = "WN_CHILD_ACTIVATED";
      
      public static const const_469:String = "WN_STATE_UPDATED";
      
      public static const const_631:String = "WN_UNSELECTED";
      
      public static const const_387:String = "WN_STYLE_UPDATED";
      
      public static const const_1472:String = "WN_UPDATE";
      
      public static const const_385:String = "WN_PARENT_ADDED";
      
      public static const const_544:String = "WN_RESIZE";
      
      public static const const_719:String = "WN_CHILD_REMOVED";
      
      public static const const_1448:String = "";
      
      public static const const_858:String = "WN_RESTORED";
      
      public static const const_333:String = "WN_SELECTED";
      
      public static const const_863:String = "WN_MINIMIZE";
      
      public static const const_946:String = "WN_FOCUSED";
      
      public static const const_1190:String = "WN_LOCK";
      
      public static const const_329:String = "WN_CHILD_ADDED";
      
      public static const const_805:String = "WN_UNFOCUSED";
      
      public static const const_395:String = "WN_RELOCATED";
      
      public static const const_924:String = "WN_DEACTIVATE";
      
      public static const const_1276:String = "WN_CRETAE";
      
      public static const const_866:String = "WN_RESTORE";
      
      public static const const_308:String = "WN_ACTVATED";
      
      public static const const_1249:String = "WN_LOCKED";
      
      public static const const_375:String = "WN_SELECT";
      
      public static const const_879:String = "WN_MAXIMIZE";
      
      public static const const_852:String = "WN_OPEN";
      
      public static const const_675:String = "WN_UNSELECT";
      
      public static const const_1602:String = "WN_ARRANGE";
      
      public static const const_1191:String = "WN_UNLOCKED";
      
      public static const const_1585:String = "WN_UPDATED";
      
      public static const const_976:String = "WN_ACTIVATE";
      
      public static const const_1272:String = "WN_UNLOCK";
      
      public static const const_840:String = "WN_MAXIMIZED";
      
      public static const const_981:String = "WN_DESTROYED";
      
      public static const const_1006:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1597,cancelable);
      }
   }
}
