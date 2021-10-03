package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2020:int;
      
      private var var_2021:String;
      
      private var var_1437:IActionDefinition;
      
      private var var_2018:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2016:String;
      
      private var var_2017:String;
      
      private var var_1959:Boolean;
      
      private var var_2019:ColorTransform;
      
      private var var_2015:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2021 = param1;
         var_2016 = param2;
         var_2020 = param3;
         _color = param4;
         _frames = param5;
         var_1437 = param6;
         var_1959 = param7;
         var_2015 = param8;
         var_2017 = param9;
         var_2018 = param10;
         var_2019 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1959;
      }
      
      public function get partType() : String
      {
         return var_2016;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_2015;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2018;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2020;
      }
      
      public function get flippedPartType() : String
      {
         return var_2017;
      }
      
      public function get bodyPartId() : String
      {
         return var_2021;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1437;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2019;
      }
   }
}
