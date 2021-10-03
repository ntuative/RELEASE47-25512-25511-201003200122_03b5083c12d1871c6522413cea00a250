package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_591:int = 2;
      
      public static const const_864:int = 6;
      
      public static const const_670:int = 1;
      
      public static const const_649:int = 3;
      
      public static const const_970:int = 4;
      
      public static const const_584:int = 5;
       
      
      private var var_1949:String;
      
      private var var_1073:int;
      
      private var var_1950:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1073 = param2;
         var_1950 = param3;
         var_1949 = param4;
      }
      
      public function get time() : String
      {
         return var_1949;
      }
      
      public function get senderId() : int
      {
         return var_1073;
      }
      
      public function get messageText() : String
      {
         return var_1950;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
