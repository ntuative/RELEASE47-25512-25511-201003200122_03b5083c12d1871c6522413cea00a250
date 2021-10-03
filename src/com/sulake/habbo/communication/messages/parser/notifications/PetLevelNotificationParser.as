package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_570:String;
      
      private var var_1635:int;
      
      private var var_1714:String;
      
      private var var_1006:int;
      
      private var var_1317:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1317;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1317 = param1.readInteger();
         var_1714 = param1.readString();
         var_1635 = param1.readInteger();
         var_570 = param1.readString();
         var_1006 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1714;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_570;
      }
      
      public function get petType() : int
      {
         return var_1006;
      }
      
      public function get level() : int
      {
         return var_1635;
      }
   }
}
