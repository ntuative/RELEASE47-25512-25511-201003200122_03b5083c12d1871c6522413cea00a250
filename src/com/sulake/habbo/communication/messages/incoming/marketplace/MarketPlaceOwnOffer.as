package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1549:int = 2;
      
      public static const const_1561:int = 1;
      
      public static const const_1502:int = 0;
       
      
      private var var_1163:int;
      
      private var var_371:int;
      
      private var var_2371:int;
      
      private var _offerId:int;
      
      private var var_1732:int;
      
      private var var_1721:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1721 = param2;
         var_1732 = param3;
         var_1163 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1721;
      }
      
      public function get furniType() : int
      {
         return var_1732;
      }
      
      public function get price() : int
      {
         return var_1163;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
