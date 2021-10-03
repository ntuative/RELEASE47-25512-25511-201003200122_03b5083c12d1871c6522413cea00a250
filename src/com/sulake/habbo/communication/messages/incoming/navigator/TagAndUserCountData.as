package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1807:int;
      
      private var var_1717:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1717 = param1.readString();
         this.var_1807 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1807;
      }
      
      public function get tag() : String
      {
         return this.var_1717;
      }
   }
}
