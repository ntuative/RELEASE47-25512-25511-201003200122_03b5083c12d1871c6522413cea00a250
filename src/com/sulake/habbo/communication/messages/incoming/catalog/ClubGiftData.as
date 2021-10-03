package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2167:int;
      
      private var var_2168:Boolean;
      
      private var _offerId:int;
      
      private var var_1638:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2168 = param1.readBoolean();
         var_2167 = param1.readInteger();
         var_1638 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1638;
      }
      
      public function get monthsRequired() : int
      {
         return var_2167;
      }
      
      public function get isVip() : Boolean
      {
         return var_2168;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
