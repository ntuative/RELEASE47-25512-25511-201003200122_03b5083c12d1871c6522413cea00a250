package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1142:Boolean;
      
      private var var_1951:String;
      
      private var _frames:XMLList;
      
      private var var_941:String = "-1";
      
      private var var_755:String;
      
      private var var_175:int = 120;
      
      private var var_1231:String = "-1";
      
      private var var_1232:String;
      
      private var var_1952:Boolean;
      
      private var var_1492:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1142 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1952 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_175 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1232 = param1.@namebase;
         }
         else
         {
            var_1232 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_941 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1231 = param1.@nextState;
         }
         else
         {
            var_1231 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1492 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1951 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_755 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_941 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1952;
      }
      
      public function get defaultState() : String
      {
         return var_1492;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1492 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1951;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_175;
      }
      
      public function get loop() : Boolean
      {
         return var_1142;
      }
      
      public function get nextState() : String
      {
         return var_1231;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_755;
      }
      
      public function get stateOver() : String
      {
         return var_941;
      }
      
      public function get nameBase() : String
      {
         return var_1232;
      }
   }
}
