package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1730:int;
      
      private var var_1163:int;
      
      private var var_1656:int;
      
      private var var_1731:int = -1;
      
      private var var_371:int;
      
      private var var_1732:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1162:int;
      
      private var var_1721:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1721 = param2;
         var_1732 = param3;
         var_1163 = param4;
         var_371 = param5;
         var_1656 = param6;
         var_1162 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1730 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1730;
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
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1731 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1163 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1162 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_371;
      }
      
      public function get averagePrice() : int
      {
         return var_1656;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1721;
      }
   }
}
