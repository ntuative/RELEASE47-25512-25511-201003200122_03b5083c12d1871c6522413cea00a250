package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_644:int = -1;
      
      public static const const_796:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1804:int = -1;
      
      private var var_84:int = 0;
      
      private var var_1187:int = 1;
      
      private var var_822:int = 1;
      
      private var var_1803:Boolean = false;
      
      private var var_1805:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_84 = param2;
         _y = param3;
         var_1803 = param5;
         if(param4 < 0)
         {
            param4 = const_644;
         }
         var_822 = param4;
         var_1187 = param4;
         if(param6 >= 0)
         {
            var_1804 = param6;
            var_1805 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_822 > 0 && param1 > var_822)
         {
            param1 = var_822;
         }
         var_1187 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_822;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1805;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_822 < 0)
         {
            return const_644;
         }
         return var_1187;
      }
      
      public function get activeSequence() : int
      {
         return var_1804;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1803;
      }
      
      public function get x() : int
      {
         return var_84;
      }
   }
}
