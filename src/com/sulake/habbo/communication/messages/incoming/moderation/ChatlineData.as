package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1588:String;
      
      private var var_2172:int;
      
      private var var_2171:int;
      
      private var var_2173:int;
      
      private var var_2170:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2172 = param1.readInteger();
         var_2173 = param1.readInteger();
         var_2171 = param1.readInteger();
         var_2170 = param1.readString();
         var_1588 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1588;
      }
      
      public function get hour() : int
      {
         return var_2172;
      }
      
      public function get minute() : int
      {
         return var_2173;
      }
      
      public function get chatterName() : String
      {
         return var_2170;
      }
      
      public function get chatterId() : int
      {
         return var_2171;
      }
   }
}
