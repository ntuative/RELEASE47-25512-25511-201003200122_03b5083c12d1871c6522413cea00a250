package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_789:String = "price_type_none";
      
      public static const const_422:String = "pricing_model_multi";
      
      public static const const_456:String = "price_type_credits";
      
      public static const const_430:String = "price_type_credits_and_pixels";
      
      public static const const_450:String = "pricing_model_bundle";
      
      public static const const_434:String = "pricing_model_single";
      
      public static const const_512:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1318:String = "pricing_model_unknown";
      
      public static const const_476:String = "price_type_pixels";
       
      
      private var var_886:int;
      
      private var _offerId:int;
      
      private var var_885:int;
      
      private var var_416:String;
      
      private var var_600:String;
      
      private var var_2105:int;
      
      private var var_564:ICatalogPage;
      
      private var var_1294:String;
      
      private var var_415:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1294 = param1.localizationId;
         var_886 = param1.priceInCredits;
         var_885 = param1.priceInPixels;
         var_564 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_416;
      }
      
      public function get page() : ICatalogPage
      {
         return var_564;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2105 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_415;
      }
      
      public function get localizationId() : String
      {
         return var_1294;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_885;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1294 = "";
         var_886 = 0;
         var_885 = 0;
         var_564 = null;
         if(var_415 != null)
         {
            var_415.dispose();
            var_415 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_600;
      }
      
      public function get previewCallbackId() : int
      {
         return var_2105;
      }
      
      public function get priceInCredits() : int
      {
         return var_886;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_416 = const_434;
            }
            else
            {
               var_416 = const_422;
            }
         }
         else if(param1.length > 1)
         {
            var_416 = const_450;
         }
         else
         {
            var_416 = const_1318;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_416)
         {
            case const_434:
               var_415 = new SingleProductContainer(this,param1);
               break;
            case const_422:
               var_415 = new MultiProductContainer(this,param1);
               break;
            case const_450:
               var_415 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_416);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_886 > 0 && var_885 > 0)
         {
            var_600 = const_430;
         }
         else if(var_886 > 0)
         {
            var_600 = const_456;
         }
         else if(var_885 > 0)
         {
            var_600 = const_476;
         }
         else
         {
            var_600 = const_789;
         }
      }
   }
}
