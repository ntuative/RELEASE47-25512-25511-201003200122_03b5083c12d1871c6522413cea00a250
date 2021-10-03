package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_212:String = "e";
      
      public static const const_79:String = "i";
      
      public static const const_82:String = "s";
       
      
      private var var_1020:String;
      
      private var var_1237:String;
      
      private var var_1234:int;
      
      private var var_2130:int;
      
      private var var_1019:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1237 = param1.readString();
         var_2130 = param1.readInteger();
         var_1020 = param1.readString();
         var_1019 = param1.readInteger();
         var_1234 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1019;
      }
      
      public function get productType() : String
      {
         return var_1237;
      }
      
      public function get expiration() : int
      {
         return var_1234;
      }
      
      public function get furniClassId() : int
      {
         return var_2130;
      }
      
      public function get extraParam() : String
      {
         return var_1020;
      }
   }
}
