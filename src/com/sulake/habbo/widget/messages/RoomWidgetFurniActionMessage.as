package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_245:String = "RWFAM_MOVE";
      
      public static const const_538:String = "RWFUAM_ROTATE";
      
      public static const const_684:String = "RWFAM_PICKUP";
       
      
      private var var_1721:int = 0;
      
      private var var_1722:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1721 = param2;
         var_1722 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1721;
      }
      
      public function get furniCategory() : int
      {
         return var_1722;
      }
   }
}
