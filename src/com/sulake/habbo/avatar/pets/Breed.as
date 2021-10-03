package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_1254:String;
      
      private var _id:int;
      
      private var var_1979:String = "";
      
      private var var_1978:int;
      
      private var var_1980:String;
      
      private var var_1959:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_1978 = parseInt(param1.@pattern);
         var_1254 = String(param1.@gender);
         var_1959 = Boolean(parseInt(param1.@colorable));
         var_1979 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_1979;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1959;
      }
      
      public function get gender() : String
      {
         return var_1254;
      }
      
      public function get patternId() : int
      {
         return var_1978;
      }
      
      public function get avatarFigureString() : String
      {
         return var_1980;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_1980 = param1;
      }
   }
}
