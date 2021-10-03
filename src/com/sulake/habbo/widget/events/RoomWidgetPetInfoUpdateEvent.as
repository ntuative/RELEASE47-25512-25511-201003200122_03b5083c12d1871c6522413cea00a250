package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_135:String = "RWPIUE_PET_INFO";
       
      
      private var var_1635:int;
      
      private var var_1836:int;
      
      private var var_1841:int;
      
      private var _nutrition:int;
      
      private var var_1834:int;
      
      private var var_1833:int;
      
      private var _energy:int;
      
      private var var_1006:int;
      
      private var var_1837:int;
      
      private var var_1840:int;
      
      private var var_1835:int;
      
      private var _id:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_1957:int;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1842:Boolean;
      
      private var _name:String;
      
      private var var_516:int;
      
      private var var_1839:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_135,param10,param11);
         var_1006 = param1;
         var_1957 = param2;
         _name = param3;
         _id = param4;
         _image = param5;
         var_1842 = param6;
         var_1839 = param7;
         _ownerName = param8;
         var_1840 = param9;
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1842;
      }
      
      public function get level() : int
      {
         return var_1635;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1833 = param1;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set level(param1:int) : void
      {
         var_1635 = param1;
      }
      
      public function get petRace() : int
      {
         return var_1957;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_516 = param1;
      }
      
      public function get experienceMax() : int
      {
         return var_1834;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get nutritionMax() : int
      {
         return var_1841;
      }
      
      public function get ownerId() : int
      {
         return var_1839;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1834 = param1;
      }
      
      public function get roomIndex() : int
      {
         return var_1840;
      }
      
      public function get energyMax() : int
      {
         return var_1837;
      }
      
      public function get levelMax() : int
      {
         return var_1833;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get petRespectLeft() : int
      {
         return var_516;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         _canOwnerBeKicked = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1841 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set petRespect(param1:int) : void
      {
         _petRespect = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1836 = param1;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1836;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1837 = param1;
      }
      
      public function get petType() : int
      {
         return var_1006;
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
