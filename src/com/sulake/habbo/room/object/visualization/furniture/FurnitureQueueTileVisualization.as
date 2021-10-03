package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1056:int = 1;
      
      private static const const_1025:int = 3;
      
      private static const const_1054:int = 2;
      
      private static const const_1055:int = 15;
       
      
      private var var_804:int;
      
      private var var_209:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_209 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1054)
         {
            var_209 = new Array();
            var_209.push(const_1056);
            var_804 = const_1055;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_804 > 0)
         {
            --var_804;
         }
         if(var_804 == 0)
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
