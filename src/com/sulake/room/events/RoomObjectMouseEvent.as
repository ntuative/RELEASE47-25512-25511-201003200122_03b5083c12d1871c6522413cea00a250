package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1498:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1578:String = "ROE_MOUSE_ENTER";
      
      public static const const_353:String = "ROE_MOUSE_MOVE";
      
      public static const const_1534:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_201:String = "ROE_MOUSE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1626:Boolean;
      
      private var var_1627:Boolean;
      
      private var var_1624:Boolean;
      
      private var var_1625:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1624 = param4;
         var_1625 = param5;
         var_1626 = param6;
         var_1627 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1627;
      }
      
      public function get altKey() : Boolean
      {
         return var_1624;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1625;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1626;
      }
   }
}
