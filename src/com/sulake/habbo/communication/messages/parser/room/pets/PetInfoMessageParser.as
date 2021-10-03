package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1835:int;
      
      private var var_570:String;
      
      private var var_1635:int;
      
      private var var_2159:int;
      
      private var var_1836:int;
      
      private var var_2183:int;
      
      private var _nutrition:int;
      
      private var var_1317:int;
      
      private var var_2182:int;
      
      private var var_2181:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1839:int;
      
      private var var_2184:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2183;
      }
      
      public function flush() : Boolean
      {
         var_1317 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2182;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2181;
      }
      
      public function get maxNutrition() : int
      {
         return var_2184;
      }
      
      public function get figure() : String
      {
         return var_570;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_2159;
      }
      
      public function get petId() : int
      {
         return var_1317;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1317 = param1.readInteger();
         _name = param1.readString();
         var_1635 = param1.readInteger();
         var_2182 = param1.readInteger();
         var_1836 = param1.readInteger();
         var_2181 = param1.readInteger();
         _energy = param1.readInteger();
         var_2183 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2184 = param1.readInteger();
         var_570 = param1.readString();
         var_2159 = param1.readInteger();
         var_1839 = param1.readInteger();
         var_1835 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1836;
      }
      
      public function get ownerId() : int
      {
         return var_1839;
      }
      
      public function get age() : int
      {
         return var_1835;
      }
   }
}
