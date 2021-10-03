package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_340:Number = 0.5;
      
      private static const const_738:int = 3;
      
      private static const const_1023:Number = 1;
       
      
      private var var_1604:Boolean = false;
      
      private var var_1610:Boolean = false;
      
      private var var_940:int = 0;
      
      private var var_243:Vector3d = null;
      
      private var var_1612:int = 0;
      
      private var var_1605:int = 0;
      
      private var var_1606:Boolean = false;
      
      private var var_1603:int = -2;
      
      private var var_1611:Boolean = false;
      
      private var var_1607:int = 0;
      
      private var var_1608:int = -1;
      
      private var var_374:Vector3d = null;
      
      private var var_1609:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1612;
      }
      
      public function get targetId() : int
      {
         return var_1608;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1607 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1612 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1604 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1608 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1610 = param1;
      }
      
      public function dispose() : void
      {
         var_374 = null;
         var_243 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_374 == null)
         {
            var_374 = new Vector3d();
         }
         var_374.assign(param1);
         var_940 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1603;
      }
      
      public function get screenHt() : int
      {
         return var_1609;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1605 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_243;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1609 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1607;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1604;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1610;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_374 != null && var_243 != null)
         {
            ++var_940;
            _loc2_ = Vector3d.dif(var_374,var_243);
            if(_loc2_.length <= const_340)
            {
               var_243 = var_374;
               var_374 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_340 * (const_738 + 1))
               {
                  _loc2_.mul(const_340);
               }
               else if(var_940 <= const_738)
               {
                  _loc2_.mul(const_340);
               }
               else
               {
                  _loc2_.mul(const_1023);
               }
               var_243 = Vector3d.sum(var_243,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1606 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1605;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1611 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1603 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_243 != null)
         {
            return;
         }
         var_243 = new Vector3d();
         var_243.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1606;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1611;
      }
   }
}
