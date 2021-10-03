package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_598:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_464:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_598);
         var_464 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_464;
      }
   }
}
