package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2190:int;
      
      private var var_1189:String;
      
      private var var_2187:int;
      
      private var var_2189:int;
      
      private var var_2188:int;
      
      private var var_2186:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1189;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2186;
      }
      
      public function get responseType() : int
      {
         return var_2189;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2187;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1189 = param1.readString();
         var_2187 = param1.readInteger();
         var_2190 = param1.readInteger();
         var_2188 = param1.readInteger();
         var_2189 = param1.readInteger();
         var_2186 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2190;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2188;
      }
   }
}
