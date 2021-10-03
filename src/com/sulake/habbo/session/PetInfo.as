package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1635:int;
      
      private var var_2159:int;
      
      private var var_1836:int;
      
      private var var_1841:int;
      
      private var _nutrition:int;
      
      private var var_1317:int;
      
      private var var_1833:int;
      
      private var var_1834:int;
      
      private var _energy:int;
      
      private var var_1835:int;
      
      private var var_1837:int;
      
      private var _ownerName:String;
      
      private var var_1839:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1635;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_2159 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1635 = param1;
      }
      
      public function get petId() : int
      {
         return var_1317;
      }
      
      public function get experienceMax() : int
      {
         return var_1834;
      }
      
      public function get nutritionMax() : int
      {
         return var_1841;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1833 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1839;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1317 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1837;
      }
      
      public function get respect() : int
      {
         return var_2159;
      }
      
      public function get levelMax() : int
      {
         return var_1833;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1834 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1836 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1841 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1839 = param1;
      }
      
      public function get experience() : int
      {
         return var_1836;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1837 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1835 = param1;
      }
      
      public function get age() : int
      {
         return var_1835;
      }
   }
}
