package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_383:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_388:int = 0;
      
      public static const const_948:int = 2;
      
      public static const const_841:int = 1;
      
      public static const const_543:Boolean = false;
      
      public static const const_721:String = "";
      
      public static const const_393:int = 0;
      
      public static const const_377:int = 0;
      
      public static const const_416:int = 0;
       
      
      private var var_1718:int = 0;
      
      private var var_1717:String = "";
      
      private var var_1423:int = 0;
      
      private var var_1719:int = 0;
      
      private var var_1715:Number = 0;
      
      private var var_1720:int = 255;
      
      private var var_1716:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1718;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1423 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1715;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1719 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1718 = param1;
      }
      
      public function get tag() : String
      {
         return var_1717;
      }
      
      public function get alpha() : int
      {
         return var_1720;
      }
      
      public function get ink() : int
      {
         return var_1423;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1715 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1719;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1716 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1716;
      }
      
      public function set tag(param1:String) : void
      {
         var_1717 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1720 = param1;
      }
   }
}
