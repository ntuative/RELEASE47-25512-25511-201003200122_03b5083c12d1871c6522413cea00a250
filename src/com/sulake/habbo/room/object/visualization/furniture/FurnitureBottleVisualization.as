package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1025:int = -1;
      
      private static const const_739:int = 20;
      
      private static const const_485:int = 9;
       
      
      private var var_618:Boolean = false;
      
      private var var_209:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_209 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_618 = true;
            var_209 = new Array();
            var_209.push(const_1025);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_618)
            {
               var_618 = false;
               var_209 = new Array();
               var_209.push(const_739);
               var_209.push(const_485 + param1);
               var_209.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
         {
            if(false)
            {
               super.setAnimation(var_209.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
