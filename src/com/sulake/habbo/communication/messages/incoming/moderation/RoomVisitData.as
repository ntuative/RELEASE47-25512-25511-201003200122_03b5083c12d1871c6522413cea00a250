package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_675:String;
      
      private var var_2193:int;
      
      private var var_1469:Boolean;
      
      private var _roomId:int;
      
      private var var_2192:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1469 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_675 = param1.readString();
         var_2192 = param1.readInteger();
         var_2193 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1469;
      }
      
      public function get roomName() : String
      {
         return var_675;
      }
      
      public function get enterMinute() : int
      {
         return var_2193;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2192;
      }
   }
}
