package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2157:int;
      
      private var var_1083:int;
      
      private var var_2158:int;
      
      private var var_1565:int;
      
      private var var_112:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1565 = param1.readInteger();
         var_2158 = param1.readInteger();
         var_1083 = param1.readInteger();
         var_2157 = param1.readInteger();
         var_112 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1565);
      }
      
      public function get chatRecordId() : int
      {
         return var_2157;
      }
      
      public function get reportedUserId() : int
      {
         return var_1083;
      }
      
      public function get callerUserId() : int
      {
         return var_2158;
      }
      
      public function get callId() : int
      {
         return var_1565;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_112;
      }
   }
}
