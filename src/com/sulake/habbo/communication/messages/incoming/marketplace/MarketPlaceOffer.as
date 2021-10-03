package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1163:int;
      
      private var var_1731:int = -1;
      
      private var var_371:int;
      
      private var var_1656:int;
      
      private var var_1732:int;
      
      private var _offerId:int;
      
      private var var_1162:int;
      
      private var var_1721:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1721 = param2;
         var_1732 = param3;
         var_1163 = param4;
         var_371 = param5;
         var_1731 = param6;
         var_1656 = param7;
         var_1162 = param8;
      }
      
      public function get status() : int
      {
         return var_371;
      }
      
      public function get price() : int
      {
         return var_1163;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1731;
      }
      
      public function get offerCount() : int
      {
         return var_1162;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1732;
      }
      
      public function get averagePrice() : int
      {
         return var_1656;
      }
      
      public function get furniId() : int
      {
         return var_1721;
      }
   }
}
