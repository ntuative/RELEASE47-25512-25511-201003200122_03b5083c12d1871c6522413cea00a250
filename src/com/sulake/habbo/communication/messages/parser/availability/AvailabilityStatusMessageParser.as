package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1018:Boolean;
      
      private var var_1144:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1018 = param1.readInteger() > 0;
         var_1144 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1018;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1144;
      }
      
      public function flush() : Boolean
      {
         var_1018 = false;
         var_1144 = false;
         return true;
      }
   }
}
