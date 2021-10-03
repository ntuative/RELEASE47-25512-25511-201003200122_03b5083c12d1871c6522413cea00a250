package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1266:int;
      
      private var var_1498:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1266 = param1;
         var_1498 = param2;
         Logger.log("READ NODE: " + var_1266 + ", " + var_1498);
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
