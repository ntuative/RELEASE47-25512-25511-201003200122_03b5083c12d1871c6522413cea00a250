package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1661:Boolean;
      
      private var var_1638:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1661 = Boolean(parseInt(param1.@club));
         var_1638 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1661;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1638;
      }
   }
}
