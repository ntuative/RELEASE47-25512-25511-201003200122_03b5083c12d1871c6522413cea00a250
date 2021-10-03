package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1129:int;
      
      private var var_1015:String;
      
      private var var_712:Array;
      
      private var var_948:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_712.slice();
      }
      
      public function flush() : Boolean
      {
         var_1015 = "";
         var_948 = [];
         var_712 = [];
         var_1129 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1129;
      }
      
      public function get question() : String
      {
         return var_1015;
      }
      
      public function get choices() : Array
      {
         return var_948.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1015 = param1.readString();
         var_948 = [];
         var_712 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_948.push(param1.readString());
            var_712.push(param1.readInteger());
            _loc3_++;
         }
         var_1129 = param1.readInteger();
         return true;
      }
   }
}
