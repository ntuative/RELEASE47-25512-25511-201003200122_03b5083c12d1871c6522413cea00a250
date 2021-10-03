package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_125:int = 0;
      
      public static const const_109:int = 1;
      
      public static const const_103:int = 2;
      
      public static const const_673:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1320:int = 0;
      
      private var var_1914:String = "";
      
      private var var_195:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_195 = param2;
         var_1320 = param3;
         var_1914 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1914;
      }
      
      public function get chatType() : int
      {
         return var_1320;
      }
      
      public function get text() : String
      {
         return var_195;
      }
   }
}
