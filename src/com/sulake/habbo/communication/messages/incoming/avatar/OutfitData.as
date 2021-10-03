package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2243:String;
      
      private var var_1254:String;
      
      private var var_1856:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1856 = param1.readInteger();
         var_2243 = param1.readString();
         var_1254 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_1254;
      }
      
      public function get figureString() : String
      {
         return var_2243;
      }
      
      public function get slotId() : int
      {
         return var_1856;
      }
   }
}
