package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1928:String;
      
      private var var_859:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1928 = param1;
         var_859 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1928;
      }
      
      public function get parameter() : String
      {
         return var_859;
      }
   }
}
