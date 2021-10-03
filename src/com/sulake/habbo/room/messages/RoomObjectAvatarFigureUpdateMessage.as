package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1838:String;
      
      private var var_570:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_570 = param1;
         var_1838 = param2;
      }
      
      public function get race() : String
      {
         return var_1838;
      }
      
      public function get figure() : String
      {
         return var_570;
      }
   }
}
