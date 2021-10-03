package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2103:Class;
      
      private var var_2101:Class;
      
      private var var_2102:String;
      
      private var var_1293:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2102 = param1;
         var_2101 = param2;
         var_2103 = param3;
         if(rest == null)
         {
            var_1293 = new Array();
         }
         else
         {
            var_1293 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2103;
      }
      
      public function get assetClass() : Class
      {
         return var_2101;
      }
      
      public function get mimeType() : String
      {
         return var_2102;
      }
      
      public function get fileTypes() : Array
      {
         return var_1293;
      }
   }
}
