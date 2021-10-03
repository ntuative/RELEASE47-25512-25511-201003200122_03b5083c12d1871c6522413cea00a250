package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_1736:String;
      
      private var var_1734:int;
      
      private var var_1735:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1735 = param1.readInteger();
         var_1734 = param1.readInteger();
         var_1736 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_1735;
      }
      
      public function get pickerUserId() : int
      {
         return var_1734;
      }
      
      public function get pickerUserName() : String
      {
         return var_1736;
      }
   }
}
