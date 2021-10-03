package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_349:Boolean;
      
      private var var_1266:int;
      
      private var var_1498:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1266 = param1.readInteger();
         var_1498 = param1.readString();
         var_349 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_349;
      }
      
      public function get nodeName() : String
      {
         return var_1498;
      }
      
      public function get nodeId() : int
      {
         return var_1266;
      }
   }
}
